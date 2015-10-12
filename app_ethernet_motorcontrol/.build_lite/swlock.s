	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_locks/src/swlock.c"

.set swlock_init.locnoside, 1

.set swlock_init.locnochandec, 1

.set swlock_init.locnoglobalaccess, 1

.set swlock_init.locnointerfaceaccess, 1

.set swlock_init.locnonotificationselect, 1

.set swlock_release.locnoside, 1

.set swlock_release.locnochandec, 1

.set swlock_release.locnoglobalaccess, 1

.set swlock_release.locnointerfaceaccess, 1

.set swlock_release.locnonotificationselect, 1

.set swlock_acquire.locnoside, 1

.set swlock_acquire.locnochandec, 1

.set swlock_acquire.locnoglobalaccess, 1

.set swlock_acquire.locnointerfaceaccess, 1

.set swlock_acquire.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_locks/src/swlock.c"
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
	.cc_top swlock_init.function
	.globl	swlock_init
	.align	4
	.type	swlock_init,@function
swlock_init:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 10 0
	ldc r1, 0
	.loc	1 12 0 prologue_end
.Ltmp1:
	stw r1, r0[0]
	.loc	1 13 0
	retsp 0
.Ltmp2:
.Ltmp3:
	.size	swlock_init, .Ltmp3-swlock_init
.Lfunc_end0:
	.file	2 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_locks/src/swlock.h"
.Ltmp4:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom swlock_init.function
	.set	swlock_init.nstackwords,0
	.globl	swlock_init.nstackwords
	.set	swlock_init.maxcores,1
	.globl	swlock_init.maxcores
	.set	swlock_init.maxtimers,0
	.globl	swlock_init.maxtimers
	.set	swlock_init.maxchanends,0
	.globl	swlock_init.maxchanends
	.cc_top swlock_release.function
	.globl	swlock_release
	.align	4
	.type	swlock_release,@function
swlock_release:
.Ltmp5:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 27 0
	ldc r1, 0
	.loc	1 28 0 prologue_end
.Ltmp6:
	stw r1, r0[0]
	.loc	1 29 0
	retsp 0
.Ltmp7:
.Ltmp8:
	.size	swlock_release, .Ltmp8-swlock_release
.Lfunc_end1:
.Ltmp9:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom swlock_release.function
	.set	swlock_release.nstackwords,0
	.globl	swlock_release.nstackwords
	.set	swlock_release.maxcores,1
	.globl	swlock_release.maxcores
	.set	swlock_release.maxtimers,0
	.globl	swlock_release.maxtimers
	.set	swlock_release.maxchanends,0
	.globl	swlock_release.maxchanends
	.cc_top swlock_acquire.function
	.globl	swlock_acquire
	.align	4
	.type	swlock_acquire,@function
swlock_acquire:
.Ltmp12:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 18 0
	entsp 2
.Ltmp13:
	.cfi_def_cfa_offset 8
.Ltmp14:
	.cfi_offset 15, 0
	.loc	1 17 0 prologue_end
.Ltmp15:
	stw r4, sp[1]
.Ltmp16:
	.cfi_offset 4, -4
	mov r4, r0
.Ltmp17:
.LBB2_1:
	.loc	1 21 0
	mov r0, r4
	bl swlock_try_acquire
.Ltmp18:
	.loc	1 23 0
	bf r0, .LBB2_1
.Ltmp19:
	.loc	1 24 0
	ldw r4, sp[1]
	retsp 2
.Ltmp20:
.Ltmp21:
	.size	swlock_acquire, .Ltmp21-swlock_acquire
.Lfunc_end2:
.Ltmp22:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom swlock_acquire.function
	.set	swlock_acquire.nstackwords,(swlock_try_acquire.nstackwords + 2)
	.globl	swlock_acquire.nstackwords
	.set	swlock_acquire.maxcores,swlock_try_acquire.maxcores $M 1
	.globl	swlock_acquire.maxcores
	.set	swlock_acquire.maxtimers,swlock_try_acquire.maxtimers $M 0
	.globl	swlock_acquire.maxtimers
	.set	swlock_acquire.maxchanends,swlock_try_acquire.maxchanends $M 0
	.globl	swlock_acquire.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	551
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
	.byte	0
	.short	1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_locks/src/swlock.c"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/app_ethernet_motorcontrol/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "swlock_init"
	.byte	0
	.ascii	 "swlock_init"
	.byte	0
	.byte	1
	.byte	10
	.byte	1
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "_lock"
	.byte	0
	.byte	1
	.byte	9
	.long	541
	.long	.Ldebug_loc0+0
	.byte	4
	.long	.Ltmp1
	.long	.Ltmp2
	.byte	5
	.ascii	 "lock"
	.byte	0
	.byte	1
	.byte	11
	.long	541
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "swlock_release"
	.byte	0
	.ascii	 "swlock_release"
	.byte	0
	.byte	1
	.byte	27
	.byte	1
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "lock"
	.byte	0
	.byte	1
	.byte	26
	.long	541
	.long	.Ldebug_loc4+0
	.byte	0
	.byte	2
	.ascii	 "swlock_acquire"
	.byte	0
	.ascii	 "swlock_acquire"
	.byte	0
	.byte	1
	.byte	18
	.byte	1
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "lock"
	.byte	0
	.byte	1
	.byte	17
	.long	541
	.long	.Ldebug_loc6+0
	.byte	4
	.long	.Ltmp17
	.long	.Ltmp20
	.byte	5
	.ascii	 "value"
	.byte	0
	.byte	1
	.byte	19
	.long	547
	.long	.Ldebug_loc10+0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	7
	.long	509
	.ascii	 "swlock_t"
	.byte	0
	.byte	2
	.byte	23
	.byte	8
	.long	525
	.byte	4
	.byte	6
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
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
	.byte	4
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	5
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
	.byte	6
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
	.byte	7
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
	.byte	8
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
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
	.long	356
.asciiz "swlock_release"
	.long	272
.asciiz "swlock_init"
	.long	419
.asciiz "swlock_acquire"
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
	.long	.Lfunc_begin0
	.long	.Ltmp2
.Lset4 = .Ltmp24-.Ltmp23
	.short	.Lset4
.Ltmp23:
	.byte	80
.Ltmp24:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp2
.Lset5 = .Ltmp26-.Ltmp25
	.short	.Lset5
.Ltmp25:
	.byte	80
.Ltmp26:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin1
	.long	.Ltmp7
.Lset6 = .Ltmp28-.Ltmp27
	.short	.Lset6
.Ltmp27:
	.byte	80
.Ltmp28:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin2
	.long	.Ltmp17
.Lset7 = .Ltmp30-.Ltmp29
	.short	.Lset7
.Ltmp29:
	.byte	80
.Ltmp30:
	.long	.Ltmp17
	.long	.Ltmp19
.Lset8 = .Ltmp32-.Ltmp31
	.short	.Lset8
.Ltmp31:
	.byte	84
.Ltmp32:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp18
	.long	.Ltmp19
.Lset9 = .Ltmp34-.Ltmp33
	.short	.Lset9
.Ltmp33:
	.byte	80
.Ltmp34:
	.long	0
	.long	0
.Ldebug_loc12:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring swlock_init, "f{0}(p(ui))"
	.typestring swlock_release, "f{0}(p(ui))"
	.typestring swlock_acquire, "f{0}(p(ui))"
	.typestring swlock_try_acquire, "f{si}(p(ui))"
	.ident	"GCC: (GNU) 4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
