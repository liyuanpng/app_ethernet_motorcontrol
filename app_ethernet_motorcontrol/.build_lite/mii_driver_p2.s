	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.call mii_driver,miiLLD
	.call mii_initialise,phy_reset
	.call mii_initialise,mii_port_init
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set mii_initialise.locnochandec, 1
	.set mii_driver.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set mii_initialise.locnoglobalaccess, 1
	.set mii_driver.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set mii_initialise.locnointerfaceaccess, 1
	.set mii_driver.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set mii_initialise.locnonotificationselect, 1
	.set mii_driver.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
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
	.cc_top mii_initialise.function
	.globl	mii_initialise
	.align	4
	.type	mii_initialise,@function
mii_initialise:
.Ltmp2:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 17 0
.Lxtalabel0:
	entsp 2
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset 15, 0
	.loc	1 15 0 prologue_end
.Ltmp5:
	stw r4, sp[1]
.Ltmp6:
	.cfi_offset 4, -4
	mov r4, r1
.Ltmp7:
	.loc	1 20 0
	bf r0, .LBB0_2
.Lxtalabel1:
.Ltmp8:
	.loc	1 21 0
	ldaw r1, dp[__timers]
	get r11, id
	ldw r1, r1[r11]
.Ltmp9:
	.loc	1 22 0
.Lxta.call_labels0:
	bl phy_reset
.Ltmp10:
.LBB0_2:
.Lxtalabel2:
	.loc	1 26 0
	mov r0, r4
.Lxta.call_labels1:
	bl mii_port_init
	ldw r4, sp[1]
.Ltmp11:
	retsp 2
.Ltmp12:
.Ltmp13:
	.size	mii_initialise, .Ltmp13-mii_initialise
.Lfunc_end0:
.Ltmp14:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom mii_initialise.function
	.set	mii_initialise.nstackwords,((mii_port_init.nstackwords $M phy_reset.nstackwords) + 2)
	.globl	mii_initialise.nstackwords
	.set	mii_initialise.maxcores,mii_port_init.maxcores $M phy_reset.maxcores $M 1
	.globl	mii_initialise.maxcores
	.set	mii_initialise.maxtimers,mii_port_init.maxtimers $M phy_reset.maxtimers $M 0
	.globl	mii_initialise.maxtimers
	.set	mii_initialise.maxchanends,mii_port_init.maxchanends $M phy_reset.maxchanends $M 0
	.globl	mii_initialise.maxchanends
	.cc_top mii_driver.function
	.globl	mii_driver
	.align	4
	.type	mii_driver,@function
mii_driver:
.Ltmp18:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 32 0
.Lxtalabel3:
	entsp 6
.Ltmp19:
	.cfi_def_cfa_offset 24
.Ltmp20:
	.cfi_offset 15, 0
	.loc	1 31 0 prologue_end
.Ltmp21:
	stw r4, sp[5]
.Ltmp22:
	.cfi_offset 4, -4
	stw r5, sp[4]
.Ltmp23:
	.cfi_offset 5, -8
	mov r3, r1
.Ltmp24:
	.loc	1 33 0
	ldaw r1, dp[__timers]
	get r11, id
	ldw r5, r1[r11]
.Ltmp25:
	.loc	1 34 0
	ldw r11, r0[8]
	ldw r1, r0[5]
	ldw r4, r0[4]
	ldw r0, r0[9]
.Ltmp26:
	.loc	1 34 0
	stw r5, sp[3]
	stw r0, sp[2]
	stw r2, sp[1]
	mov r0, r4
	mov r2, r11
.Ltmp27:
.Lxta.call_labels2:
	bl miiLLD
.Ltmp28:
	ldw r5, sp[4]
.Ltmp29:
	ldw r4, sp[5]
	retsp 6
.Ltmp30:
.Ltmp31:
	.size	mii_driver, .Ltmp31-mii_driver
.Lfunc_end1:
.Ltmp32:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom mii_driver.function
	.set	mii_driver.nstackwords,(miiLLD.nstackwords + 6)
	.globl	mii_driver.nstackwords
	.set	mii_driver.maxcores,miiLLD.maxcores $M 1
	.globl	mii_driver.maxcores
	.set	mii_driver.maxtimers,miiLLD.maxtimers $M 0
	.globl	mii_driver.maxtimers
	.set	mii_driver.maxchanends,miiLLD.maxchanends $M 0
	.globl	mii_driver.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	976
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
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
	.long	963
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
	.long	963
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
	.long	963
	.byte	0
	.byte	4
	.ascii	 "mii_initialise"
	.byte	0
	.ascii	 "mii_initialise"
	.byte	0
	.byte	1
	.byte	17
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
	.byte	15
	.long	675
	.long	.Ldebug_loc0+0
	.byte	5
	.byte	109
	.byte	0
	.byte	1
	.byte	16
	.long	938
	.long	.Ldebug_loc3+0
	.byte	6
	.long	.Ltmp7
	.long	.Ltmp12
	.byte	6
	.long	.Ltmp8
	.long	.Ltmp10
	.byte	7
	.ascii	 "tmr"
	.byte	0
	.byte	1
	.byte	21
	.long	943
	.long	.Ldebug_loc7+0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.ascii	 "mii_driver"
	.byte	0
	.ascii	 "mii_driver"
	.byte	0
	.byte	1
	.byte	32
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
	.byte	31
	.long	938
	.long	.Ldebug_loc9+0
	.byte	5
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.byte	31
	.long	952
	.long	.Ldebug_loc11+0
	.byte	5
	.ascii	 "cOut"
	.byte	0
	.byte	1
	.byte	31
	.long	952
	.long	.Ldebug_loc14+0
	.byte	6
	.long	.Ltmp24
	.long	.Ltmp30
	.byte	6
	.long	.Ltmp24
	.long	.Ltmp30
	.byte	7
	.ascii	 "tmr"
	.byte	0
	.byte	1
	.byte	33
	.long	943
	.long	.Ldebug_loc16+0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.ascii	 "port"
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
	.long	683
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	10
	.ascii	 "clk_mii_tx"
	.byte	0
	.long	683
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxclk"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxer"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxd"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	10
	.ascii	 "p_mii_rxdv"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	10
	.ascii	 "p_mii_txclk"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	10
	.ascii	 "p_mii_txen"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	10
	.ascii	 "p_mii_txd"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	10
	.ascii	 "p_mii_timing"
	.byte	0
	.long	675
	.byte	1
	.byte	17
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	0
	.byte	11
	.long	692
	.byte	8
	.ascii	 "timer"
	.byte	0
	.byte	7
	.byte	4
	.byte	8
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	8
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
	.long	328
.asciiz "delay_milliseconds"
	.long	384
.asciiz "delay_microseconds"
	.long	440
.asciiz "mii_initialise"
	.long	558
.asciiz "mii_driver"
	.long	282
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
	.long	692
.asciiz "mii_interface_lite_t"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp10
.Lset4 = .Ltmp34-.Ltmp33
	.short	.Lset4
.Ltmp33:
	.byte	80
.Ltmp34:
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin0
	.long	.Ltmp7
.Lset5 = .Ltmp36-.Ltmp35
	.short	.Lset5
.Ltmp35:
	.byte	81
.Ltmp36:
	.long	.Ltmp7
	.long	.Ltmp11
.Lset6 = .Ltmp38-.Ltmp37
	.short	.Lset6
.Ltmp37:
	.byte	84
.Ltmp38:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp9
	.long	.Ltmp10
.Lset7 = .Ltmp40-.Ltmp39
	.short	.Lset7
.Ltmp39:
	.byte	81
.Ltmp40:
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Lfunc_begin1
	.long	.Ltmp26
.Lset8 = .Ltmp42-.Ltmp41
	.short	.Lset8
.Ltmp41:
	.byte	80
.Ltmp42:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin1
	.long	.Ltmp24
.Lset9 = .Ltmp44-.Ltmp43
	.short	.Lset9
.Ltmp43:
	.byte	81
.Ltmp44:
	.long	.Ltmp24
	.long	.Ltmp28
.Lset10 = .Ltmp46-.Ltmp45
	.short	.Lset10
.Ltmp45:
	.byte	83
.Ltmp46:
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin1
	.long	.Ltmp27
.Lset11 = .Ltmp48-.Ltmp47
	.short	.Lset11
.Ltmp47:
	.byte	82
.Ltmp48:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Ltmp25
	.long	.Ltmp29
.Lset12 = .Ltmp50-.Ltmp49
	.short	.Lset12
.Ltmp49:
	.byte	85
.Ltmp50:
	.long	0
	.long	0
.Ldebug_loc18:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring mii_initialise, "f{0}(no:p,&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}))"
	.typestring mii_driver, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),chd,chd)"
	.typestring phy_reset, "f{0}(o:p,swt)"
	.typestring miiLLD, "f{0}(bi:p:32,i:p,bo:p:32,chd,chd,i:p,swt)"
	.typestring mii_port_init, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}))"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	22
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	26
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	34
	.long	.Lxta.call_labels2
.cc_bottom cc_2
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_3,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	17
	.long	20
	.long	.Lxtalabel0
.cc_bottom cc_3
.cc_top cc_4,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	21
	.long	23
	.long	.Lxtalabel1
.cc_bottom cc_4
.cc_top cc_5,.Lxtalabel2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	24
	.long	27
	.long	.Lxtalabel2
.cc_bottom cc_5
.cc_top cc_6,.Lxtalabel3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_driver_p2.xc"
	.byte	0
	.long	32
	.long	35
	.long	.Lxtalabel3
.cc_bottom cc_6
.Lentries_end3:
