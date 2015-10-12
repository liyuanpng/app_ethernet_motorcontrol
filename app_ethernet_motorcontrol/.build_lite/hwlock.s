	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_locks/src/hwlock.c"

.set hwlock_alloc.locnoside, 1

.set hwlock_alloc.locnochandec, 1

.set hwlock_alloc.locnoglobalaccess, 1

.set hwlock_alloc.locnointerfaceaccess, 1

.set hwlock_alloc.locnonotificationselect, 1

.set hwlock_free.locnoside, 1

.set hwlock_free.locnochandec, 1

.set hwlock_free.locnoglobalaccess, 1

.set hwlock_free.locnointerfaceaccess, 1

.set hwlock_free.locnonotificationselect, 1

.set hwlock_acquire.locnoside, 1

.set hwlock_acquire.locnochandec, 1

.set hwlock_acquire.locnoglobalaccess, 1

.set hwlock_acquire.locnointerfaceaccess, 1

.set hwlock_acquire.locnonotificationselect, 1

.set hwlock_release.locnoside, 1

.set hwlock_release.locnochandec, 1

.set hwlock_release.locnoglobalaccess, 1

.set hwlock_release.locnointerfaceaccess, 1

.set hwlock_release.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_locks/src/hwlock.c"
	.file	2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_locks/src/hwlock.h"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"",@progbits
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.section	.dp.data,"awd",@progbits
	.text
	.cc_top hwlock_alloc.function
	.globl	hwlock_alloc
	.align	4
	.type	hwlock_alloc,@function
hwlock_alloc:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	2 30 0
	.loc	2 32 0 prologue_end
	#APP
	getr r0, 5
	#NO_APP
.Ltmp1:
	.loc	2 34 0
	retsp 0
.Ltmp2:
.Ltmp3:
	.size	hwlock_alloc, .Ltmp3-hwlock_alloc
.Lfunc_end0:
.Ltmp4:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom hwlock_alloc.function
	.set	hwlock_alloc.nstackwords,0
	.globl	hwlock_alloc.nstackwords
	.set	hwlock_alloc.maxcores,1
	.globl	hwlock_alloc.maxcores
	.set	hwlock_alloc.maxtimers,0
	.globl	hwlock_alloc.maxtimers
	.set	hwlock_alloc.maxchanends,0
	.globl	hwlock_alloc.maxchanends
	.cc_top hwlock_free.function
	.globl	hwlock_free
	.align	4
	.type	hwlock_free,@function
hwlock_free:
.Ltmp5:
	.cfi_startproc
.Lfunc_begin1:
	.loc	2 46 0
	.loc	2 47 0 prologue_end
	#APP
	freer res[r0]
	#NO_APP
	.loc	2 50 0
	retsp 0
.Ltmp6:
.Ltmp7:
	.size	hwlock_free, .Ltmp7-hwlock_free
.Lfunc_end1:
.Ltmp8:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom hwlock_free.function
	.set	hwlock_free.nstackwords,0
	.globl	hwlock_free.nstackwords
	.set	hwlock_free.maxcores,1
	.globl	hwlock_free.maxcores
	.set	hwlock_free.maxtimers,0
	.globl	hwlock_free.maxtimers
	.set	hwlock_free.maxchanends,0
	.globl	hwlock_free.maxchanends
	.cc_top hwlock_acquire.function
	.globl	hwlock_acquire
	.align	4
	.type	hwlock_acquire,@function
hwlock_acquire:
.Ltmp9:
	.cfi_startproc
.Lfunc_begin2:
	.loc	2 61 0
	.loc	2 62 0 prologue_end
	#APP
	in r0, res[r0]
	#NO_APP
	.loc	2 66 0
	retsp 0
.Ltmp10:
.Ltmp11:
	.size	hwlock_acquire, .Ltmp11-hwlock_acquire
.Lfunc_end2:
.Ltmp12:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom hwlock_acquire.function
	.set	hwlock_acquire.nstackwords,0
	.globl	hwlock_acquire.nstackwords
	.set	hwlock_acquire.maxcores,1
	.globl	hwlock_acquire.maxcores
	.set	hwlock_acquire.maxtimers,0
	.globl	hwlock_acquire.maxtimers
	.set	hwlock_acquire.maxchanends,0
	.globl	hwlock_acquire.maxchanends
	.cc_top hwlock_release.function
	.globl	hwlock_release
	.align	4
	.type	hwlock_release,@function
hwlock_release:
.Ltmp13:
	.cfi_startproc
.Lfunc_begin3:
	.loc	2 76 0
	.loc	2 77 0 prologue_end
	#APP
	out res[r0], r0
	#NO_APP
	.loc	2 81 0
	retsp 0
.Ltmp14:
.Ltmp15:
	.size	hwlock_release, .Ltmp15-hwlock_release
.Lfunc_end3:
.Ltmp16:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom hwlock_release.function
	.set	hwlock_release.nstackwords,0
	.globl	hwlock_release.nstackwords
	.set	hwlock_release.maxcores,1
	.globl	hwlock_release.maxcores
	.set	hwlock_release.maxtimers,0
	.globl	hwlock_release.maxtimers
	.set	hwlock_release.maxchanends,0
	.globl	hwlock_release.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	530
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
	.byte	0
	.short	1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_locks/src/hwlock.c"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "hwlock_alloc"
	.byte	0
	.ascii	 "hwlock_alloc"
	.byte	0
	.byte	2
	.byte	30
	.byte	1
	.long	334
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.long	.Lfunc_begin0
	.long	.Ltmp2
	.byte	4
	.ascii	 "lock"
	.byte	0
	.byte	2
	.byte	31
	.long	334
	.long	.Ldebug_loc0+0
	.byte	0
	.byte	0
	.byte	5
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	6
	.long	318
	.ascii	 "hwlock_t"
	.byte	0
	.byte	2
	.byte	16
	.byte	7
	.ascii	 "hwlock_free"
	.byte	0
	.ascii	 "hwlock_free"
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "lock"
	.byte	0
	.byte	2
	.byte	45
	.long	334
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	7
	.ascii	 "hwlock_acquire"
	.byte	0
	.ascii	 "hwlock_acquire"
	.byte	0
	.byte	2
	.byte	61
	.byte	1
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "lock"
	.byte	0
	.byte	2
	.byte	60
	.long	334
	.long	.Ldebug_loc4+0
	.byte	0
	.byte	7
	.ascii	 "hwlock_release"
	.byte	0
	.ascii	 "hwlock_release"
	.byte	0
	.byte	2
	.byte	76
	.byte	1
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "lock"
	.byte	0
	.byte	2
	.byte	75
	.long	334
	.long	.Ldebug_loc6+0
	.byte	0
	.byte	0
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	8
	.byte	19
	.byte	5
	.byte	3
	.byte	8
	.byte	82
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	8
	.ascii	 "\341\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	3
	.byte	8
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	6
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	8
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	0
.Labbrev_end:
	.section	.debug_pubnames,"",@progbits
.Lset0 = .Lpubnames_end1-.Lpubnames_begin1
	.long	.Lset0
.Lpubnames_begin1:
	.short	2
	.long	.Linfo_begin1
.Lset1 = .Linfo_end1-.Linfo_begin1
	.long	.Lset1
	.long	407
.asciiz "hwlock_acquire"
	.long	245
.asciiz "hwlock_alloc"
	.long	470
.asciiz "hwlock_release"
	.long	350
.asciiz "hwlock_free"
	.long	0
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset2 = .Lpubtypes_end1-.Lpubtypes_begin1
	.long	.Lset2
.Lpubtypes_begin1:
	.short	2
	.long	.Linfo_begin1
.Lset3 = .Linfo_end1-.Linfo_begin1
	.long	.Lset3
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Ltmp1
	.long	.Ltmp2
.Lset4 = .Ltmp18-.Ltmp17
	.short	.Lset4
.Ltmp17:
	.byte	80
.Ltmp18:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin1
	.long	.Ltmp6
.Lset5 = .Ltmp20-.Ltmp19
	.short	.Lset5
.Ltmp19:
	.byte	80
.Ltmp20:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin2
	.long	.Ltmp10
.Lset6 = .Ltmp22-.Ltmp21
	.short	.Lset6
.Ltmp21:
	.byte	80
.Ltmp22:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin3
	.long	.Ltmp14
.Lset7 = .Ltmp24-.Ltmp23
	.short	.Lset7
.Ltmp23:
	.byte	80
.Ltmp24:
	.long	0
	.long	0
.Ldebug_loc8:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring hwlock_alloc, "f{ui}(0)"
	.typestring hwlock_free, "f{0}(ui)"
	.typestring hwlock_acquire, "f{0}(ui)"
	.typestring hwlock_release, "f{0}(ui)"
	.ident	"GCC: (GNU) 4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
