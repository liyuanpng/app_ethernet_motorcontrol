	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_ethernet_dual/src/lite_p2/mii_client_lite_support_p2.c"

.set mac_set_macaddr_lite.locnoside, 1

.set mac_set_macaddr_lite.locnochandec, 1

.set mac_set_macaddr_lite.locnoglobalaccess, 1

.set mac_set_macaddr_lite.locnointerfaceaccess, 1

.set mac_set_macaddr_lite.locnonotificationselect, 1

.set mac_get_macaddr_lite.locnoside, 1

.set mac_get_macaddr_lite.locnochandec, 1

.set mac_get_macaddr_lite.locnoglobalaccess, 1

.set mac_get_macaddr_lite.locnointerfaceaccess, 1

.set mac_get_macaddr_lite.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_ethernet_dual/src/lite_p2/mii_client_lite_support_p2.c"
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
	.cc_top mac_set_macaddr_lite.function
	.globl	mac_set_macaddr_lite
	.align	2
	.type	mac_set_macaddr_lite,@function
mac_set_macaddr_lite:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 9 0
	ldc r1, 0
.Ltmp1:
	.loc	1 10 0 prologue_end
	ldaw r2, dp[mac_s_macaddr]
.LBB0_1:
.Ltmp2:
	ld8u r3, r0[r1]
	st8 r3, r2[r1]
.xtaloop 6
	# LOOPMARKER 0
	add r1, r1, 1
.Ltmp3:
	eq r3, r1, 6
	bf r3, .LBB0_1
.Ltmp4:
	.loc	1 11 0
	retsp 0
.Ltmp5:
.Ltmp6:
	.size	mac_set_macaddr_lite, .Ltmp6-mac_set_macaddr_lite
.Lfunc_end0:
.Ltmp7:
	.cfi_endproc
.Leh_func_end0:

	.cc_bottom mac_set_macaddr_lite.function
	.set	mac_set_macaddr_lite.nstackwords,0
	.globl	mac_set_macaddr_lite.nstackwords
	.set	mac_set_macaddr_lite.maxcores,1
	.globl	mac_set_macaddr_lite.maxcores
	.set	mac_set_macaddr_lite.maxtimers,0
	.globl	mac_set_macaddr_lite.maxtimers
	.set	mac_set_macaddr_lite.maxchanends,0
	.globl	mac_set_macaddr_lite.maxchanends
	.cc_top mac_get_macaddr_lite.function
	.globl	mac_get_macaddr_lite
	.align	2
	.type	mac_get_macaddr_lite,@function
mac_get_macaddr_lite:
.Ltmp8:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 13 0
	ldc r0, 0
.Ltmp9:
.LBB1_1:
	.loc	1 15 0 prologue_end
	ldw r2, dp[mac_s_macaddr]
	bf r2, .LBB1_1
	.loc	1 16 0
.Ltmp10:
	ldaw r2, dp[mac_s_macaddr]
.LBB1_3:
.Ltmp11:
	ld8u r3, r2[r0]
	st8 r3, r1[r0]
.xtaloop 6
	# LOOPMARKER 0
	add r0, r0, 1
.Ltmp12:
	eq r3, r0, 6
	bf r3, .LBB1_3
.Ltmp13:
	mkmsk r0, 1
.Ltmp14:
	.loc	1 17 0
	retsp 0
.Ltmp15:
.Ltmp16:
	.size	mac_get_macaddr_lite, .Ltmp16-mac_get_macaddr_lite
.Lfunc_end1:
	.file	2 "/opt/XMOS/xTIMEcomposer/Community_13.2.3/target/include/xccompat.h"
.Ltmp17:
	.cfi_endproc
.Leh_func_end1:

	.cc_bottom mac_get_macaddr_lite.function
	.set	mac_get_macaddr_lite.nstackwords,0
	.globl	mac_get_macaddr_lite.nstackwords
	.set	mac_get_macaddr_lite.maxcores,1
	.globl	mac_get_macaddr_lite.maxcores
	.set	mac_get_macaddr_lite.maxtimers,0
	.globl	mac_get_macaddr_lite.maxtimers
	.set	mac_get_macaddr_lite.maxchanends,0
	.globl	mac_get_macaddr_lite.maxchanends
	.section	.dp.bss,"awd",@nobits
	.cc_top mac_s_macaddr.data
	.align	4
	.type	mac_s_macaddr,@object
	.size mac_s_macaddr,6
mac_s_macaddr:
	.space	6
	.cc_bottom mac_s_macaddr.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	651
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
	.byte	0
	.short	1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/module_ethernet_dual/src/lite_p2/mii_client_lite_support_p2.c"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/app_ethernet_motorcontrol/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	3
	.byte	4
	.byte	5
	.byte	4
	.long	308
	.byte	5
	.long	325
	.byte	5
	.byte	0
	.byte	6
	.ascii	 "mac_s_macaddr"
	.byte	0
	.long	328
	.byte	1
	.byte	7
	.byte	5
	.byte	3
	.long	mac_s_macaddr
	.byte	7
	.ascii	 "mac_set_macaddr_lite"
	.byte	0
	.ascii	 "mac_set_macaddr_lite"
	.byte	0
	.byte	1
	.byte	9
	.byte	1
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "macaddr"
	.byte	0
	.byte	1
	.byte	9
	.long	617
	.long	.Ldebug_loc0+0
	.byte	9
	.long	.Ltmp1
	.long	.Ltmp5
	.byte	9
	.long	.Ltmp1
	.long	.Ltmp5
	.byte	10
	.byte	105
	.byte	0
	.byte	1
	.byte	10
	.long	610
	.long	.Ldebug_loc3+0
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.ascii	 "mac_get_macaddr_lite"
	.byte	0
	.ascii	 "mac_get_macaddr_lite"
	.byte	0
	.byte	1
	.byte	13
	.byte	1
	.long	610
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "c_mac"
	.byte	0
	.byte	1
	.byte	13
	.long	639
	.long	.Ldebug_loc6+0
	.byte	8
	.ascii	 "macaddr"
	.byte	0
	.byte	1
	.byte	13
	.long	617
	.long	.Ldebug_loc11+0
	.byte	9
	.long	.Ltmp9
	.long	.Ltmp15
	.byte	9
	.long	.Ltmp10
	.long	.Ltmp13
	.byte	10
	.byte	105
	.byte	0
	.byte	1
	.byte	16
	.long	610
	.long	.Ldebug_loc14+0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	12
	.long	308
	.byte	4
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	13
	.long	623
	.ascii	 "chanend"
	.byte	0
	.byte	2
	.byte	129
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
	.byte	3
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	6
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	10
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
	.byte	9
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	10
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
	.byte	11
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
	.byte	12
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	13
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
	.long	367
.asciiz "mac_set_macaddr_lite"
	.long	478
.asciiz "mac_get_macaddr_lite"
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
	.long	.Ltmp4
.Lset4 = .Ltmp19-.Ltmp18
	.short	.Lset4
.Ltmp18:
	.byte	80
.Ltmp19:
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp1
	.long	.Ltmp3
.Lset5 = .Ltmp21-.Ltmp20
	.short	.Lset5
.Ltmp20:
	.byte	16
	.byte	0
.Ltmp21:
	.long	.Ltmp3
	.long	.Ltmp4
.Lset6 = .Ltmp23-.Ltmp22
	.short	.Lset6
.Ltmp22:
	.byte	81
.Ltmp23:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin1
	.long	.Ltmp12
.Lset7 = .Ltmp25-.Ltmp24
	.short	.Lset7
.Ltmp24:
	.byte	80
.Ltmp25:
	.long	.Ltmp13
	.long	.Ltmp14
.Lset8 = .Ltmp27-.Ltmp26
	.short	.Lset8
.Ltmp26:
	.byte	80
.Ltmp27:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin1
	.long	.Ltmp13
.Lset9 = .Ltmp29-.Ltmp28
	.short	.Lset9
.Ltmp28:
	.byte	81
.Ltmp29:
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Ltmp12
	.long	.Ltmp13
.Lset10 = .Ltmp31-.Ltmp30
	.short	.Lset10
.Ltmp30:
	.byte	80
.Ltmp31:
	.long	0
	.long	0
.Ldebug_loc16:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring mac_set_macaddr_lite, "f{0}(p(uc))"
	.typestring mac_get_macaddr_lite, "f{si}(ui,p(uc))"
	.ident	"GCC: (GNU) 4.2.1 (LLVM build) XMOS Community_13.2.3 (build 17312)"
