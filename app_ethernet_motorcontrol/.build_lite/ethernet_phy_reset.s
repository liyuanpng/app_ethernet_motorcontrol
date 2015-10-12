	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set eth_phy_reset.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set eth_phy_reset.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set eth_phy_reset.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set eth_phy_reset.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.file	2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/timer.h"
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
	.cc_top eth_phy_reset.function
	.globl	eth_phy_reset
	.align	4
	.type	eth_phy_reset,@function
eth_phy_reset:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 6 0
.Lxtalabel0:
	.loc	1 9 0 prologue_end
	ldaw r1, dp[__timers]
	get r11, id
	ldw r1, r1[r11]
	setc res[r1], 1
	.loc	1 9 0
.Lxta.endpoint_labels0:
	in r2, res[r1]
.Ltmp1:
	ldc r3, 0
	.loc	1 10 0
.Lxta.endpoint_labels1:
	out res[r0], r3
	ldc r3, 100
	.loc	1 11 0
	add r2, r2, r3
.Ltmp2:
	setd res[r1], r2
	setc res[r1], 9
	.loc	1 11 0
.Lxta.endpoint_labels2:
	in r1, res[r1]
.Ltmp3:
	mkmsk r1, 1
.Ltmp4:
	.loc	1 12 0
.Lxta.endpoint_labels3:
	out res[r0], r1
	retsp 0
.Ltmp5:
.Ltmp6:
	.size	eth_phy_reset, .Ltmp6-eth_phy_reset
.Lfunc_end0:
.Ltmp7:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom eth_phy_reset.function
	.set	eth_phy_reset.nstackwords,0
	.globl	eth_phy_reset.nstackwords
	.set	eth_phy_reset.maxcores,1
	.globl	eth_phy_reset.maxcores
	.set	eth_phy_reset.maxtimers,0
	.globl	eth_phy_reset.maxtimers
	.set	eth_phy_reset.maxchanends,0
	.globl	eth_phy_reset.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	600
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "delay_seconds"
	.byte	0
	.ascii	 "delay_seconds"
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	3
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	46
	.long	587
	.byte	0
	.byte	2
	.ascii	 "delay_milliseconds"
	.byte	0
	.ascii	 "delay_milliseconds"
	.byte	0
	.byte	2
	.byte	54
	.byte	1
	.byte	3
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	54
	.long	587
	.byte	0
	.byte	2
	.ascii	 "delay_microseconds"
	.byte	0
	.ascii	 "delay_microseconds"
	.byte	0
	.byte	2
	.byte	62
	.byte	1
	.byte	3
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	62
	.long	587
	.byte	0
	.byte	4
	.ascii	 "eth_phy_reset"
	.byte	0
	.ascii	 "eth_phy_reset"
	.byte	0
	.byte	1
	.byte	6
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.ascii	 "p_eth_rst"
	.byte	0
	.byte	1
	.byte	6
	.long	563
	.long	.Ldebug_loc0+0
	.byte	6
	.long	.Lfunc_begin0
	.long	.Ltmp5
	.byte	6
	.long	.Lfunc_begin0
	.long	.Ltmp5
	.byte	7
	.ascii	 "tmr"
	.byte	0
	.byte	1
	.byte	7
	.long	571
	.byte	6
	.long	.Lfunc_begin0
	.long	.Ltmp5
	.byte	8
	.byte	116
	.byte	0
	.byte	1
	.byte	8
	.long	580
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.ascii	 "port"
	.byte	0
	.byte	7
	.byte	4
	.byte	9
	.ascii	 "timer"
	.byte	0
	.byte	7
	.byte	4
	.byte	9
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	9
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
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
	.byte	63
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
	.byte	0
	.byte	0
	.byte	4
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
	.byte	5
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
	.byte	6
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	7
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
	.byte	0
	.byte	0
	.byte	8
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
	.byte	9
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
	.long	444
.asciiz "eth_phy_reset"
	.long	332
.asciiz "delay_milliseconds"
	.long	388
.asciiz "delay_microseconds"
	.long	286
.asciiz "delay_seconds"
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
	.long	.Ltmp5
.Lset4 = .Ltmp9-.Ltmp8
	.short	.Lset4
.Ltmp8:
	.byte	80
.Ltmp9:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp1
	.long	.Ltmp2
.Lset5 = .Ltmp11-.Ltmp10
	.short	.Lset5
.Ltmp10:
	.byte	82
.Ltmp11:
	.long	.Ltmp3
	.long	.Ltmp4
.Lset6 = .Ltmp13-.Ltmp12
	.short	.Lset6
.Ltmp12:
	.byte	81
.Ltmp13:
	.long	0
	.long	0
.Ldebug_loc5:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring eth_phy_reset, "f{0}(o:p)"
	.section	.xtaendpointtable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	9
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	10
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	11
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_2
.cc_top cc_3,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	12
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_3
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_4,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/common/ethernet_phy_reset.xc"
	.byte	0
	.long	7
	.long	13
	.long	.Lxtalabel0
.cc_bottom cc_4
.Lentries_end3:
