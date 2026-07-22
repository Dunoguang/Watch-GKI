/*
 * Minimal cgroup eBPF attach support used by Android netd.
 *
 * Based on Android common cgroup BPF support, trimmed for this 4.4 tree where
 * netd attaches ingress/egress programs to the cgroup v2 root.
 */

#include <linux/bpf.h>
#include <linux/bpf-cgroup.h>
#include <linux/cgroup.h>
#include <linux/kernel.h>
#include <linux/skbuff.h>
#include <net/sock.h>

DEFINE_STATIC_KEY_FALSE(cgroup_bpf_enabled_key);
EXPORT_SYMBOL(cgroup_bpf_enabled_key);

void cgroup_bpf_put(struct cgroup *cgrp)
{
	unsigned int type;

	for (type = 0; type < ARRAY_SIZE(cgrp->bpf.prog); type++) {
		struct bpf_prog *prog = cgrp->bpf.prog[type];

		if (prog) {
			bpf_prog_put(prog);
			static_branch_dec(&cgroup_bpf_enabled_key);
		}
	}
}

void cgroup_bpf_inherit(struct cgroup *cgrp, struct cgroup *parent)
{
	unsigned int type;

	if (!parent)
		return;

	for (type = 0; type < ARRAY_SIZE(cgrp->bpf.effective); type++) {
		struct bpf_prog *e;

		e = rcu_dereference_protected(parent->bpf.effective[type], 1);
		rcu_assign_pointer(cgrp->bpf.effective[type], e);
		cgrp->bpf.disallow_override[type] =
			parent->bpf.disallow_override[type];
	}
}

int __cgroup_bpf_update(struct cgroup *cgrp, struct cgroup *parent,
			struct bpf_prog *prog, enum bpf_attach_type type,
			bool new_overridable)
{
	struct cgroup_subsys_state *pos;
	struct bpf_prog *old_prog;
	struct bpf_prog *effective = NULL;
	bool overridable = true;

	if (type >= MAX_BPF_ATTACH_TYPE)
		return -EINVAL;

	if (parent) {
		overridable = !parent->bpf.disallow_override[type];
		effective = rcu_dereference_protected(parent->bpf.effective[type], 1);
	}

	if (prog && effective && !overridable)
		return -EPERM;

	if (prog && effective && overridable != new_overridable)
		return -EPERM;

	old_prog = cgrp->bpf.prog[type];
	if (prog) {
		overridable = new_overridable;
		effective = prog;
		if (old_prog &&
		    cgrp->bpf.disallow_override[type] == new_overridable)
			return -EPERM;
	}

	if (!prog && !old_prog)
		return -ENOENT;

	cgrp->bpf.prog[type] = prog;

	css_for_each_descendant_pre(pos, &cgrp->self) {
		struct cgroup *desc = container_of(pos, struct cgroup, self);

		if (desc->bpf.prog[type] && desc != cgrp) {
			pos = css_rightmost_descendant(pos);
		} else {
			rcu_assign_pointer(desc->bpf.effective[type],
					   effective);
			desc->bpf.disallow_override[type] = !overridable;
		}
	}

	if (prog)
		static_branch_inc(&cgroup_bpf_enabled_key);

	if (old_prog) {
		bpf_prog_put(old_prog);
		static_branch_dec(&cgroup_bpf_enabled_key);
	}

	return 0;
}

int __cgroup_bpf_run_filter(struct sock *sk, struct sk_buff *skb,
			    enum bpf_attach_type type)
{
	struct bpf_prog *prog;
	struct cgroup *cgrp;
	int ret = 0;

	if (!sk || !sk_fullsock(sk))
		return 0;

	if (sk->sk_family != AF_INET && sk->sk_family != AF_INET6)
		return 0;

	cgrp = &cgrp_dfl_root.cgrp;

	rcu_read_lock();
	prog = rcu_dereference(cgrp->bpf.effective[type]);
	if (prog) {
		unsigned int offset = skb->data - skb_network_header(skb);
		struct sock *save_sk = skb->sk;

		skb->sk = sk;
		__skb_push(skb, offset);
		ret = bpf_prog_run_save_cb(prog, skb) == 1 ? 0 : -EPERM;
		__skb_pull(skb, offset);
		skb->sk = save_sk;
	}
	rcu_read_unlock();

	return ret;
}
EXPORT_SYMBOL(__cgroup_bpf_run_filter);
