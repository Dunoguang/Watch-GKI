// SPDX-License-Identifier: GPL-2.0
/*
 * EROFS tracepoints
 *
 * Copyright (C) 2017-2018 HUAWEI, Inc.
 *             https://www.huawei.com/
 */
#undef TRACE_SYSTEM
#define TRACE_SYSTEM erofs

#if !defined(_TRACE_EROFS_H) || defined(TRACE_HEADER_MULTI_READ)
#define _TRACE_EROFS_H

#include <linux/tracepoint.h>
#include <linux/fs.h>

#define show_erofs_map_flags(flags) __print_flags(flags, "|", \
	{ EROFS_MAP_MAPPED,		"MAPPED" }, \
	{ EROFS_MAP_META,		"META" }, \
	{ EROFS_MAP_ZIPPED,		"ZIPPED" }, \
	{ EROFS_MAP_FULL_MAPPED,	"FULL_MAPPED" })

TRACE_EVENT(erofs_map_blocks_flatmode_enter,

	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
		 unsigned int flags),

	TP_ARGS(inode, map, flags),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(erofs_off_t,	la)
		__field(u64,		pa)
		__field(u64,		plen)
		__field(unsigned int,	flags)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->la = map->m_la;
		__entry->pa = map->m_pa;
		__entry->plen = map->m_plen;
		__entry->flags = flags;
	),

	TP_printk("dev = (%d,%d), ino = %llu, map_la = %llu, "
		  "map_pa = %llu, map_plen = %llu, flags = %s",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long long)__entry->la,
		  (unsigned long long)__entry->pa,
		  (unsigned long long)__entry->plen,
		  show_erofs_map_flags(__entry->flags))
);

TRACE_EVENT(erofs_map_blocks_flatmode_exit,

	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
		 unsigned int flags, int ret),

	TP_ARGS(inode, map, flags, ret),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(erofs_off_t,	la)
		__field(u64,		pa)
		__field(u64,		plen)
		__field(unsigned int,	flags)
		__field(int,		ret)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->la = map->m_la;
		__entry->pa = map->m_pa;
		__entry->plen = map->m_plen;
		__entry->flags = flags;
		__entry->ret = ret;
	),

	TP_printk("dev = (%d,%d), ino = %llu, map_la = %llu, "
		  "map_pa = %llu, map_plen = %llu, flags = %s, ret = %d",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long long)__entry->la,
		  (unsigned long long)__entry->pa,
		  (unsigned long long)__entry->plen,
		  show_erofs_map_flags(__entry->flags),
		  __entry->ret)
);

TRACE_EVENT(erofs_readpage,

	TP_PROTO(struct page *page, bool raw),

	TP_ARGS(page, raw),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(pgoff_t,	index)
		__field(bool,		raw)
	),

	TP_fast_assign(
		__entry->dev = page->mapping->host->i_sb->s_dev;
		__entry->nid = EROFS_I(page->mapping->host)->nid;
		__entry->index = page->index;
		__entry->raw = raw;
	),

	TP_printk("dev = (%d,%d), ino = %llu, page_index = %lu, raw = %d",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long)__entry->index,
		  __entry->raw)
);

TRACE_EVENT(erofs_readpages,

	TP_PROTO(struct inode *inode, struct page *page,
		 unsigned int nr_pages, bool raw),

	TP_ARGS(inode, page, nr_pages, raw),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(pgoff_t,	start)
		__field(unsigned int,	nr_pages)
		__field(bool,		raw)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->start = page->index;
		__entry->nr_pages = nr_pages;
		__entry->raw = raw;
	),

	TP_printk("dev = (%d,%d), ino = %llu, start = %lu, nr_pages = %u, raw = %d",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long)__entry->start,
		  __entry->nr_pages,
		  __entry->raw)
);

TRACE_EVENT(erofs_fill_inode,

	TP_PROTO(struct inode *inode, bool isdir),

	TP_ARGS(inode, isdir),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(bool,		isdir)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->isdir = isdir;
	),

	TP_printk("dev = (%d,%d), ino = %llu, isdir = %d",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  __entry->isdir)
);

TRACE_EVENT(erofs_lookup,

	TP_PROTO(struct inode *dir, struct dentry *dentry, unsigned int flags),

	TP_ARGS(dir, dentry, flags),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(unsigned int,	flags)
		__string(name,		dentry->d_name.name)
	),

	TP_fast_assign(
		__entry->dev = dir->i_sb->s_dev;
		__entry->nid = EROFS_I(dir)->nid;
		__entry->flags = flags;
		__assign_str(name, dentry->d_name.name);
	),

	TP_printk("dev = (%d,%d), dirino = %llu, flags = %u, name = %s",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  __entry->flags,
		  __get_str(name))
);

TRACE_EVENT(z_erofs_map_blocks_iter_enter,

	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
		 unsigned int flags),

	TP_ARGS(inode, map, flags),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(erofs_off_t,	la)
		__field(u64,		pa)
		__field(u64,		plen)
		__field(unsigned int,	flags)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->la = map->m_la;
		__entry->pa = map->m_pa;
		__entry->plen = map->m_plen;
		__entry->flags = flags;
	),

	TP_printk("dev = (%d,%d), ino = %llu, map_la = %llu, "
		  "map_pa = %llu, map_plen = %llu, flags = %s",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long long)__entry->la,
		  (unsigned long long)__entry->pa,
		  (unsigned long long)__entry->plen,
		  show_erofs_map_flags(__entry->flags))
);

TRACE_EVENT(z_erofs_map_blocks_iter_exit,

	TP_PROTO(struct inode *inode, struct erofs_map_blocks *map,
		 unsigned int flags, int err),

	TP_ARGS(inode, map, flags, err),

	TP_STRUCT__entry(
		__field(dev_t,		dev)
		__field(erofs_nid_t,	nid)
		__field(erofs_off_t,	la)
		__field(u64,		pa)
		__field(u64,		plen)
		__field(unsigned int,	flags)
		__field(int,		err)
	),

	TP_fast_assign(
		__entry->dev = inode->i_sb->s_dev;
		__entry->nid = EROFS_I(inode)->nid;
		__entry->la = map->m_la;
		__entry->pa = map->m_pa;
		__entry->plen = map->m_plen;
		__entry->flags = flags;
		__entry->err = err;
	),

	TP_printk("dev = (%d,%d), ino = %llu, map_la = %llu, "
		  "map_pa = %llu, map_plen = %llu, flags = %s, err = %d",
		  MAJOR(__entry->dev), MINOR(__entry->dev),
		  (unsigned long long)__entry->nid,
		  (unsigned long long)__entry->la,
		  (unsigned long long)__entry->pa,
		  (unsigned long long)__entry->plen,
		  show_erofs_map_flags(__entry->flags),
		  __entry->err)
);

#endif /* _TRACE_EROFS_H */

/* This part must be outside protection */
#include <trace/define_trace.h>
