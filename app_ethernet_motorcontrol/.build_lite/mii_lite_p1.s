	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.call _mii_port_init,configure_out_port_strobed_master
	.call _mii_port_init,configure_in_port_strobed_slave
	.call _mii_port_init,configure_clock_src
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set _mii_port_init.locnochandec, 1
	.set _phy_reset.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set _mii_port_init.locnoglobalaccess, 1
	.set _phy_reset.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set _mii_port_init.locnointerfaceaccess, 1
	.set _phy_reset.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set _mii_port_init.locnonotificationselect, 1
	.set _phy_reset.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
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
	.cc_top _phy_reset.function
	.globl	_phy_reset
	.align	4
	.type	_phy_reset,@function
_phy_reset:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 32 0
.Lxtalabel0:
	ldc r1, 0
.Ltmp1:
	.loc	1 35 0 prologue_end
.Lxta.endpoint_labels0:
	out res[r0], r1
	.loc	1 36 0
	ldaw r1, dp[__timers]
	get r11, id
	ldw r1, r1[r11]
	setc res[r1], 1
	.loc	1 36 0
.Lxta.endpoint_labels1:
	in r3, res[r1]
.Ltmp2:
	ldc r2, 50000
	.loc	1 37 0
	add r3, r3, r2
.Ltmp3:
	.loc	1 38 0
	setd res[r1], r3
	setc res[r1], 9
	.loc	1 38 0
.Ltmp4:
.Lxta.endpoint_labels2:
	in r3, res[r1]
	mkmsk r3, 32
	.loc	1 40 0
.Lxta.endpoint_labels3:
	out res[r0], r3
	.loc	1 41 0
	setc res[r1], 1
	.loc	1 41 0
.Lxta.endpoint_labels4:
	in r0, res[r1]
.Ltmp5:
	.loc	1 42 0
	add r0, r0, r2
.Ltmp6:
	.loc	1 43 0
	setd res[r1], r0
	setc res[r1], 9
	.loc	1 43 0
.Ltmp7:
.Lxta.endpoint_labels5:
	in r0, res[r1]
	retsp 0
.Ltmp8:
.Ltmp9:
	.size	_phy_reset, .Ltmp9-_phy_reset
.Lfunc_end0:
.Ltmp10:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom _phy_reset.function
	.set	_phy_reset.nstackwords,0
	.globl	_phy_reset.nstackwords
	.set	_phy_reset.maxcores,1
	.globl	_phy_reset.maxcores
	.set	_phy_reset.maxtimers,0
	.globl	_phy_reset.maxtimers
	.set	_phy_reset.maxchanends,0
	.globl	_phy_reset.maxchanends
	.cc_top _mii_port_init.function
	.globl	_mii_port_init
	.align	4
	.type	_mii_port_init,@function
_mii_port_init:
.Ltmp15:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 15 0
.Lxtalabel1:
	entsp 4
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset 15, 0
	.loc	1 15 0 prologue_end
.Ltmp18:
	stw r4, sp[3]
.Ltmp19:
	.cfi_offset 4, -4
	stw r5, sp[2]
.Ltmp20:
	.cfi_offset 5, -8
	stw r6, sp[1]
.Ltmp21:
	.cfi_offset 6, -12
	mov r6, r0
.Ltmp22:
	.loc	1 16 0
	ldw r1, r6[2]
	ldw r4, r6[0]
	.loc	1 16 0
	mov r0, r4
.Lxta.call_labels0:
	bl configure_clock_src
	.loc	1 17 0
	ldw r1, r6[6]
	ldw r5, r6[1]
	.loc	1 17 0
	mov r0, r5
.Lxta.call_labels1:
	bl configure_clock_src
	.loc	1 19 0
	setc res[r5], 32831
	.loc	1 21 0
	ldw r1, r6[5]
	ldw r0, r6[4]
	.loc	1 21 0
	mov r2, r4
.Lxta.call_labels2:
	bl configure_in_port_strobed_slave
	.loc	1 22 0
	ldw r1, r6[7]
	ldw r0, r6[8]
	ldc r3, 0
	.loc	1 22 0
	mov r2, r5
.Lxta.call_labels3:
	bl configure_out_port_strobed_master
	.loc	1 24 0
	setc res[r4], 15
	.loc	1 25 0
	setc res[r5], 15
	ldw r6, sp[1]
.Ltmp23:
	ldw r5, sp[2]
	ldw r4, sp[3]
	retsp 4
.Ltmp24:
.Ltmp25:
	.size	_mii_port_init, .Ltmp25-_mii_port_init
.Lfunc_end1:
.Ltmp26:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom _mii_port_init.function
	.set	_mii_port_init.nstackwords,((configure_clock_src.nstackwords $M configure_in_port_strobed_slave.nstackwords $M configure_out_port_strobed_master.nstackwords) + 4)
	.globl	_mii_port_init.nstackwords
	.set	_mii_port_init.maxcores,configure_clock_src.maxcores $M configure_in_port_strobed_slave.maxcores $M configure_out_port_strobed_master.maxcores $M 1
	.globl	_mii_port_init.maxcores
	.set	_mii_port_init.maxtimers,configure_clock_src.maxtimers $M configure_in_port_strobed_slave.maxtimers $M configure_out_port_strobed_master.maxtimers $M 0
	.globl	_mii_port_init.maxtimers
	.set	_mii_port_init.maxchanends,configure_clock_src.maxchanends $M configure_in_port_strobed_slave.maxchanends $M configure_out_port_strobed_master.maxchanends $M 0
	.globl	_mii_port_init.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	905
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
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
	.long	632
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
	.long	632
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
	.long	632
	.byte	0
	.byte	4
	.ascii	 "_mii_port_init"
	.byte	0
	.ascii	 "_mii_port_init"
	.byte	0
	.byte	1
	.byte	15
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.byte	109
	.byte	0
	.byte	1
	.byte	15
	.long	903
	.long	.Ldebug_loc7+0
	.byte	0
	.byte	4
	.ascii	 "_phy_reset"
	.byte	0
	.ascii	 "_phy_reset"
	.byte	0
	.byte	1
	.byte	32
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.ascii	 "p_mii_resetn"
	.byte	0
	.byte	1
	.byte	32
	.long	615
	.long	.Ldebug_loc0+0
	.byte	5
	.ascii	 "tmr"
	.byte	0
	.byte	1
	.byte	32
	.long	623
	.long	.Ldebug_loc2+0
	.byte	6
	.long	.Ltmp1
	.long	.Ltmp8
	.byte	6
	.long	.Ltmp1
	.long	.Ltmp8
	.byte	7
	.ascii	 "resetTime"
	.byte	0
	.byte	1
	.byte	33
	.long	632
	.long	.Ldebug_loc4+0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.ascii	 "port"
	.byte	0
	.byte	7
	.byte	4
	.byte	8
	.ascii	 "timer"
	.byte	0
	.byte	7
	.byte	4
	.byte	8
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	8
	.ascii	 "clock"
	.byte	0
	.byte	7
	.byte	4
	.byte	9
	.ascii	 "mii_interface_lite_t"
	.byte	0
	.byte	40
	.byte	10
	.ascii	 "clk_mii_rx"
	.byte	0
	.long	648
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	10
	.ascii	 "clk_mii_tx"
	.byte	0
	.long	648
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxclk"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxer"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxd"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxdv"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	10
	.ascii	 "p_mii_txclk"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	10
	.ascii	 "p_mii_txen"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	10
	.ascii	 "p_mii_txd"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	10
	.ascii	 "p_mii_timing"
	.byte	0
	.long	615
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	0
	.byte	11
	.long	657
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
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	8
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
	.byte	9
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	11
	.byte	16
	.byte	0
	.byte	73
	.byte	19
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
	.long	497
.asciiz "_phy_reset"
	.long	326
.asciiz "delay_milliseconds"
	.long	438
.asciiz "_mii_port_init"
	.long	382
.asciiz "delay_microseconds"
	.long	280
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
	.long	657
.asciiz "mii_interface_lite_t"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp5
.Lset4 = .Ltmp28-.Ltmp27
	.short	.Lset4
.Ltmp27:
	.byte	80
.Ltmp28:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp1
.Lset5 = .Ltmp30-.Ltmp29
	.short	.Lset5
.Ltmp29:
	.byte	81
.Ltmp30:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp2
	.long	.Ltmp3
.Lset6 = .Ltmp32-.Ltmp31
	.short	.Lset6
.Ltmp31:
	.byte	83
.Ltmp32:
	.long	.Ltmp5
	.long	.Ltmp6
.Lset7 = .Ltmp34-.Ltmp33
	.short	.Lset7
.Ltmp33:
	.byte	80
.Ltmp34:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1
	.long	.Ltmp22
.Lset8 = .Ltmp36-.Ltmp35
	.short	.Lset8
.Ltmp35:
	.byte	80
.Ltmp36:
	.long	.Ltmp22
	.long	.Ltmp23
.Lset9 = .Ltmp38-.Ltmp37
	.short	.Lset9
.Ltmp37:
	.byte	86
.Ltmp38:
	.long	0
	.long	0
.Ldebug_loc10:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring configure_out_port_strobed_master, "f{0}(w:p,o:p,:ck,ui)"
	.typestring configure_in_port_strobed_slave, "f{0}(w:p,i:p,ck)"
	.typestring configure_clock_src, "f{0}(ck,w:p)"
	.typestring _phy_reset, "f{0}(o:p,swt)"
	.typestring _mii_port_init, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}))"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	16
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	17
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	21
	.long	.Lxta.call_labels2
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	22
	.long	.Lxta.call_labels3
.cc_bottom cc_3
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_4,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	35
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_4
.cc_top cc_5,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	36
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_5
.cc_top cc_6,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	38
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_6
.cc_top cc_7,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	40
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_7
.cc_top cc_8,.Lxta.endpoint_labels4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	41
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_8
.cc_top cc_9,.Lxta.endpoint_labels5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	43
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_9
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_10,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	16
	.long	26
	.long	.Lxtalabel1
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lite_p1.xc"
	.byte	0
	.long	33
	.long	44
	.long	.Lxtalabel0
.cc_bottom cc_11
.Lentries_end5:
