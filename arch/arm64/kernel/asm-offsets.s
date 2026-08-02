	.arch armv8-a
	.file	"asm-offsets.c"
// GNU C89 (Ubuntu 15.3.0-1ubuntu1) version 15.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 15.3.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.28-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -D_FORTIFY_SOURCE=3 -mlittle-endian -mgeneral-regs-only -mpc-relative-literal-loads -mabi=lp64 -g -O2 -std=gnu90 -p -fno-strict-aliasing -fno-common -fno-pic -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no -fconserve-stack -fstack-protector-strong -fstack-clash-protection -fzero-init-padding-bits=all
	.text
.Ltext0:
	.file 0 "/root/github/Watch-GKI" "arch/arm64/kernel/asm-offsets.c"
#APP
	.irp	num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30
	.equ	.L__reg_num_x\num, \num
	.endr
	.equ	.L__reg_num_xzr, 31

	.macro	mrs_s, rt, sreg
	.inst	0xd5200000|(\sreg)|(.L__reg_num_\rt)
	.endm

	.macro	msr_s, sreg, rt
	.inst	0xd5000000|(\sreg)|(.L__reg_num_\rt)
	.endm

#NO_APP
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 5,,15
	.global	main
	.type	main, %function
main:
.LFB2247:
	.file 1 "arch/arm64/kernel/asm-offsets.c"
	.loc 1 35 1 view -0
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// arch/arm64/kernel/asm-offsets.c:35: {
	.loc 1 35 1 is_stmt 0 view .LVU1
	hint	7 // xpaclri
	mov	x0, x30	//,
	bl	_mcount		//
.LVL0:
	.loc 1 36 3 is_stmt 1 view .LVU2
#APP
// 36 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_ACTIVE_MM 1144 offsetof(struct task_struct, active_mm)"	//
// 0 "" 2
	.loc 1 37 3 view .LVU3
// 37 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 39 3 view .LVU4
// 39 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_FLAGS 0 offsetof(struct task_struct, thread_info.flags)"	//
// 0 "" 2
	.loc 1 40 3 view .LVU5
// 40 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_PREEMPT 32 offsetof(struct task_struct, thread_info.preempt_count)"	//
// 0 "" 2
	.loc 1 41 3 view .LVU6
// 41 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_ADDR_LIMIT 8 offsetof(struct task_struct, thread_info.addr_limit)"	//
// 0 "" 2
	.loc 1 42 3 view .LVU7
// 42 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_STACK 48 offsetof(struct task_struct, stack)"	//
// 0 "" 2
	.loc 1 48 3 view .LVU8
// 48 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TI_DBT_SYSCALL 16 offsetof(struct thread_info, dbt_syscall)"	//
// 0 "" 2
	.loc 1 50 3 view .LVU9
// 50 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_TTBR0 24 offsetof(struct thread_info, ttbr0)"	//
// 0 "" 2
	.loc 1 52 3 view .LVU10
// 52 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 53 3 view .LVU11
// 53 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->THREAD_CPU_CONTEXT 2512 offsetof(struct task_struct, thread.cpu_context)"	//
// 0 "" 2
	.loc 1 54 3 view .LVU12
// 54 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 55 3 view .LVU13
// 55 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X0 0 offsetof(struct pt_regs, regs[0])"	//
// 0 "" 2
	.loc 1 56 3 view .LVU14
// 56 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X1 8 offsetof(struct pt_regs, regs[1])"	//
// 0 "" 2
	.loc 1 57 3 view .LVU15
// 57 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X2 16 offsetof(struct pt_regs, regs[2])"	//
// 0 "" 2
	.loc 1 58 3 view .LVU16
// 58 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X3 24 offsetof(struct pt_regs, regs[3])"	//
// 0 "" 2
	.loc 1 59 3 view .LVU17
// 59 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X4 32 offsetof(struct pt_regs, regs[4])"	//
// 0 "" 2
	.loc 1 60 3 view .LVU18
// 60 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X5 40 offsetof(struct pt_regs, regs[5])"	//
// 0 "" 2
	.loc 1 61 3 view .LVU19
// 61 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X6 48 offsetof(struct pt_regs, regs[6])"	//
// 0 "" 2
	.loc 1 62 3 view .LVU20
// 62 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X7 56 offsetof(struct pt_regs, regs[7])"	//
// 0 "" 2
	.loc 1 63 3 view .LVU21
// 63 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_LR 240 offsetof(struct pt_regs, regs[30])"	//
// 0 "" 2
	.loc 1 64 3 view .LVU22
// 64 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SP 248 offsetof(struct pt_regs, sp)"	//
// 0 "" 2
	.loc 1 66 3 view .LVU23
// 66 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_COMPAT_SP 104 offsetof(struct pt_regs, compat_sp)"	//
// 0 "" 2
	.loc 1 68 3 view .LVU24
// 68 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PSTATE 264 offsetof(struct pt_regs, pstate)"	//
// 0 "" 2
	.loc 1 69 3 view .LVU25
// 69 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PC 256 offsetof(struct pt_regs, pc)"	//
// 0 "" 2
	.loc 1 70 3 view .LVU26
// 70 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_X0 272 offsetof(struct pt_regs, orig_x0)"	//
// 0 "" 2
	.loc 1 71 3 view .LVU27
// 71 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SYSCALLNO 280 offsetof(struct pt_regs, syscallno)"	//
// 0 "" 2
	.loc 1 72 3 view .LVU28
// 72 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_ADDR_LIMIT 288 offsetof(struct pt_regs, orig_addr_limit)"	//
// 0 "" 2
	.loc 1 73 3 view .LVU29
// 73 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_FRAME_SIZE 304 sizeof(struct pt_regs)"	//
// 0 "" 2
	.loc 1 74 3 view .LVU30
// 74 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 75 3 view .LVU31
// 75 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MM_CONTEXT_ID 728 offsetof(struct mm_struct, context.id.counter)"	//
// 0 "" 2
	.loc 1 76 3 view .LVU32
// 76 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 77 3 view .LVU33
// 77 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_MM 64 offsetof(struct vm_area_struct, vm_mm)"	//
// 0 "" 2
	.loc 1 78 3 view .LVU34
// 78 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_FLAGS 80 offsetof(struct vm_area_struct, vm_flags)"	//
// 0 "" 2
	.loc 1 79 3 view .LVU35
// 79 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 80 3 view .LVU36
// 80 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VM_EXEC 4 VM_EXEC"	//
// 0 "" 2
	.loc 1 81 3 view .LVU37
// 81 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 82 3 view .LVU38
// 82 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->PAGE_SZ 4096 PAGE_SIZE"	//
// 0 "" 2
	.loc 1 83 3 view .LVU39
// 83 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 84 3 view .LVU40
// 84 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_BIDIRECTIONAL 0 DMA_BIDIRECTIONAL"	//
// 0 "" 2
	.loc 1 85 3 view .LVU41
// 85 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_TO_DEVICE 1 DMA_TO_DEVICE"	//
// 0 "" 2
	.loc 1 86 3 view .LVU42
// 86 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_FROM_DEVICE 2 DMA_FROM_DEVICE"	//
// 0 "" 2
	.loc 1 87 3 view .LVU43
// 87 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 88 3 view .LVU44
// 88 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME 0 CLOCK_REALTIME"	//
// 0 "" 2
	.loc 1 89 3 view .LVU45
// 89 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC 1 CLOCK_MONOTONIC"	//
// 0 "" 2
	.loc 1 90 3 view .LVU46
// 90 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC_RAW 4 CLOCK_MONOTONIC_RAW"	//
// 0 "" 2
	.loc 1 91 3 view .LVU47
// 91 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME_RES 1 MONOTONIC_RES_NSEC"	//
// 0 "" 2
	.loc 1 92 3 view .LVU48
// 92 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME_COARSE 5 CLOCK_REALTIME_COARSE"	//
// 0 "" 2
	.loc 1 93 3 view .LVU49
// 93 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC_COARSE 6 CLOCK_MONOTONIC_COARSE"	//
// 0 "" 2
	.loc 1 94 3 view .LVU50
// 94 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_COARSE_RES 10000000 LOW_RES_NSEC"	//
// 0 "" 2
	.loc 1 95 3 view .LVU51
// 95 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->NSEC_PER_SEC 1000000000 NSEC_PER_SEC"	//
// 0 "" 2
	.loc 1 96 3 view .LVU52
// 96 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 97 3 view .LVU53
// 97 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_CYCLE_LAST 0 offsetof(struct vdso_data, cs_cycle_last)"	//
// 0 "" 2
	.loc 1 98 3 view .LVU54
// 98 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_RAW_TIME_SEC 8 offsetof(struct vdso_data, raw_time_sec)"	//
// 0 "" 2
	.loc 1 99 3 view .LVU55
// 99 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_RAW_TIME_NSEC 16 offsetof(struct vdso_data, raw_time_nsec)"	//
// 0 "" 2
	.loc 1 100 3 view .LVU56
// 100 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CLK_SEC 24 offsetof(struct vdso_data, xtime_clock_sec)"	//
// 0 "" 2
	.loc 1 101 3 view .LVU57
// 101 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CLK_NSEC 32 offsetof(struct vdso_data, xtime_clock_nsec)"	//
// 0 "" 2
	.loc 1 102 3 view .LVU58
// 102 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CRS_SEC 40 offsetof(struct vdso_data, xtime_coarse_sec)"	//
// 0 "" 2
	.loc 1 103 3 view .LVU59
// 103 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CRS_NSEC 48 offsetof(struct vdso_data, xtime_coarse_nsec)"	//
// 0 "" 2
	.loc 1 104 3 view .LVU60
// 104 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_WTM_CLK_SEC 56 offsetof(struct vdso_data, wtm_clock_sec)"	//
// 0 "" 2
	.loc 1 105 3 view .LVU61
// 105 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_WTM_CLK_NSEC 64 offsetof(struct vdso_data, wtm_clock_nsec)"	//
// 0 "" 2
	.loc 1 106 3 view .LVU62
// 106 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TB_SEQ_COUNT 72 offsetof(struct vdso_data, tb_seq_count)"	//
// 0 "" 2
	.loc 1 107 3 view .LVU63
// 107 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_MONO_MULT 76 offsetof(struct vdso_data, cs_mono_mult)"	//
// 0 "" 2
	.loc 1 108 3 view .LVU64
// 108 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_RAW_MULT 84 offsetof(struct vdso_data, cs_raw_mult)"	//
// 0 "" 2
	.loc 1 109 3 view .LVU65
// 109 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_SHIFT 80 offsetof(struct vdso_data, cs_shift)"	//
// 0 "" 2
	.loc 1 110 3 view .LVU66
// 110 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TZ_MINWEST 88 offsetof(struct vdso_data, tz_minuteswest)"	//
// 0 "" 2
	.loc 1 111 3 view .LVU67
// 111 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TZ_DSTTIME 92 offsetof(struct vdso_data, tz_dsttime)"	//
// 0 "" 2
	.loc 1 112 3 view .LVU68
// 112 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_USE_SYSCALL 96 offsetof(struct vdso_data, use_syscall)"	//
// 0 "" 2
	.loc 1 113 3 view .LVU69
// 113 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 114 3 view .LVU70
// 114 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TVAL_TV_SEC 0 offsetof(struct timeval, tv_sec)"	//
// 0 "" 2
	.loc 1 115 3 view .LVU71
// 115 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TVAL_TV_USEC 8 offsetof(struct timeval, tv_usec)"	//
// 0 "" 2
	.loc 1 116 3 view .LVU72
// 116 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSPEC_TV_SEC 0 offsetof(struct timespec, tv_sec)"	//
// 0 "" 2
	.loc 1 117 3 view .LVU73
// 117 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSPEC_TV_NSEC 8 offsetof(struct timespec, tv_nsec)"	//
// 0 "" 2
	.loc 1 118 3 view .LVU74
// 118 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 119 3 view .LVU75
// 119 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TZ_MINWEST 0 offsetof(struct timezone, tz_minuteswest)"	//
// 0 "" 2
	.loc 1 120 3 view .LVU76
// 120 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TZ_DSTTIME 4 offsetof(struct timezone, tz_dsttime)"	//
// 0 "" 2
	.loc 1 121 3 view .LVU77
// 121 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 123 3 view .LVU78
// 123 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_STACK 0 offsetof(struct secondary_data, stack)"	//
// 0 "" 2
	.loc 1 124 3 view .LVU79
// 124 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_TASK 8 offsetof(struct secondary_data, task)"	//
// 0 "" 2
	.loc 1 125 3 view .LVU80
// 125 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 177 3 view .LVU81
// 177 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_SUSPEND_SZ 112 sizeof(struct cpu_suspend_ctx)"	//
// 0 "" 2
	.loc 1 178 3 view .LVU82
// 178 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_CTX_SP 104 offsetof(struct cpu_suspend_ctx, sp)"	//
// 0 "" 2
	.loc 1 179 3 view .LVU83
// 179 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_MASK 0 offsetof(struct mpidr_hash, mask)"	//
// 0 "" 2
	.loc 1 180 3 view .LVU84
// 180 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_SHIFTS 8 offsetof(struct mpidr_hash, shift_aff)"	//
// 0 "" 2
	.loc 1 181 3 view .LVU85
// 181 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_SAVE_SP_SZ 16 sizeof(struct sleep_save_sp)"	//
// 0 "" 2
	.loc 1 182 3 view .LVU86
// 182 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_SAVE_SP_PHYS 8 offsetof(struct sleep_save_sp, save_ptr_stash_phys)"	//
// 0 "" 2
	.loc 1 183 3 view .LVU87
// 183 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_SAVE_SP_VIRT 0 offsetof(struct sleep_save_sp, save_ptr_stash)"	//
// 0 "" 2
	.loc 1 185 3 view .LVU88
// 185 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X0_OFFS 0 offsetof(struct arm_smccc_res, a0)"	//
// 0 "" 2
	.loc 1 186 3 view .LVU89
// 186 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X2_OFFS 16 offsetof(struct arm_smccc_res, a2)"	//
// 0 "" 2
	.loc 1 187 3 view .LVU90
// 187 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 189 3 view .LVU91
// 189 "arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TRAMP_VALIAS -274903089152 TRAMP_VALIAS"	//
// 0 "" 2
	.loc 1 191 3 view .LVU92
// arch/arm64/kernel/asm-offsets.c:192: }
	.loc 1 192 1 is_stmt 0 view .LVU93
#NO_APP
	mov	w0, 0	//,
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2247:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "./arch/arm64/include/asm/fixmap.h"
	.file 3 "include/linux/dma-direction.h"
	.file 4 "./arch/arm64/include/asm/stack_pointer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14d
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.4byte	0x62
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF29
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.4byte	0x10a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF16
	.2byte	0x400
	.uleb128 0x1
	.4byte	.LASF17
	.2byte	0x401
	.uleb128 0x1
	.4byte	.LASF18
	.2byte	0x402
	.uleb128 0x1
	.4byte	.LASF19
	.2byte	0x403
	.uleb128 0x1
	.4byte	.LASF20
	.2byte	0x404
	.uleb128 0x1
	.4byte	.LASF21
	.2byte	0x405
	.uleb128 0x1
	.4byte	.LASF22
	.2byte	0x405
	.uleb128 0x1
	.4byte	.LASF23
	.2byte	0x5c4
	.uleb128 0x1
	.4byte	.LASF24
	.2byte	0x5c5
	.uleb128 0x1
	.4byte	.LASF25
	.2byte	0x5c6
	.uleb128 0x1
	.4byte	.LASF26
	.2byte	0x5c7
	.uleb128 0x1
	.4byte	.LASF27
	.2byte	0x5c8
	.uleb128 0x1
	.4byte	.LASF28
	.2byte	0x5c9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.4byte	0x4d
	.byte	0x3
	.byte	0x7
	.4byte	0x132
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x2a
	.8byte	.LFB2247
	.8byte	.LFE2247-.LFB2247
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB2247
	.8byte	.LFE2247-.LFB2247
	.8byte	0
	.8byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x8
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.8byte	.LFB2247
	.uleb128 .LFE2247-.LFB2247
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"__int128 unsigned"
.LASF25:
	.string	"FIX_PMD"
.LASF21:
	.string	"__end_of_permanent_fixed_addresses"
.LASF19:
	.string	"FIX_ENTRY_TRAMP_DATA"
.LASF31:
	.string	"DMA_BIDIRECTIONAL"
.LASF20:
	.string	"FIX_ENTRY_TRAMP_TEXT"
.LASF23:
	.string	"FIX_BTMAP_BEGIN"
.LASF14:
	.string	"FIX_HOLE"
.LASF26:
	.string	"FIX_PUD"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"DMA_TO_DEVICE"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF28:
	.string	"__end_of_fixed_addresses"
.LASF33:
	.string	"DMA_FROM_DEVICE"
.LASF36:
	.string	"current_stack_pointer"
.LASF22:
	.string	"FIX_BTMAP_END"
.LASF37:
	.string	"main"
.LASF6:
	.string	"unsigned int"
.LASF35:
	.ascii	"GNU C89 15.3.0 -D_FORTIFY_SOURCE=3 -mlittle-endian -mgeneral"
	.ascii	"-regs-only -mpc-relative-literal-loads -mabi=lp64 -g -O2 -st"
	.ascii	"d=gnu90 -p -fno-strict-aliasing -fno-common -fno-pic -fno-as"
	.ascii	"ynchronous-unwind-tables -fno-delete-null-pointer-checks -fs"
	.ascii	"tack-protector-strong -f"
	.string	"no-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no -fconserve-stack -fstack-protector-strong -fstack-clash-protection -fzero-init-padding-bits=all"
.LASF8:
	.string	"long long unsigned int"
.LASF15:
	.string	"FIX_FDT_END"
.LASF18:
	.string	"FIX_TEXT_POKE0"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF24:
	.string	"FIX_PTE"
.LASF4:
	.string	"short int"
.LASF17:
	.string	"FIX_EARLYCON_MEM_BASE"
.LASF34:
	.string	"DMA_NONE"
.LASF11:
	.string	"long int"
.LASF27:
	.string	"FIX_PGD"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"_Bool"
.LASF30:
	.string	"dma_data_direction"
.LASF16:
	.string	"FIX_FDT"
.LASF29:
	.string	"fixed_addresses"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/root/github/Watch-GKI"
.LASF0:
	.string	"arch/arm64/kernel/asm-offsets.c"
	.global	_mcount
	.ident	"GCC: (Ubuntu 15.3.0-1ubuntu1) 15.3.0"
	.section	.note.GNU-stack,"",@progbits
