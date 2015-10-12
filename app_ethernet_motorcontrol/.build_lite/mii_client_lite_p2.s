	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.call mac_rx_p2_lite,safe_mac_rx_lite
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set mac_set_custom_filter_lite.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set safe_mac_rx_lite.locnochandec, 1
	.set mac_rx_p2_lite.locnochandec, 1
	.set mac_set_custom_filter_lite.locnochandec, 1
	.set mac_tx_p2_lite.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set safe_mac_rx_lite.locnoglobalaccess, 1
	.set mac_rx_p2_lite.locnoglobalaccess, 1
	.set mac_set_custom_filter_lite.locnoglobalaccess, 1
	.set mac_tx_p2_lite.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set safe_mac_rx_lite.locnointerfaceaccess, 1
	.set mac_rx_p2_lite.locnointerfaceaccess, 1
	.set mac_set_custom_filter_lite.locnointerfaceaccess, 1
	.set mac_tx_p2_lite.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set safe_mac_rx_lite.locnonotificationselect, 1
	.set mac_rx_p2_lite.locnonotificationselect, 1
	.set mac_set_custom_filter_lite.locnonotificationselect, 1
	.set mac_tx_p2_lite.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
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
	.cc_top mac_rx_p2_lite.function
	.globl	mac_rx_p2_lite
	.align	4
	.type	mac_rx_p2_lite,@function
mac_rx_p2_lite:
.Ltmp1:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 35 0
.Lxtalabel0:
	entsp 3
.Ltmp2:
	.cfi_def_cfa_offset 12
.Ltmp3:
	.cfi_offset 15, 0
	ldw r11, sp[4]
	.loc	1 36 0 prologue_end
.Ltmp4:
	stw r11, sp[2]
	stw r0, sp[1]
.Lxta.call_labels0:
	bl safe_mac_rx_lite
.Ltmp5:
	retsp 3
.Ltmp6:
.Ltmp7:
	.size	mac_rx_p2_lite, .Ltmp7-mac_rx_p2_lite
.Lfunc_end0:
.Ltmp8:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom mac_rx_p2_lite.function
	.set	mac_rx_p2_lite.nstackwords,(safe_mac_rx_lite.nstackwords + 3)
	.globl	mac_rx_p2_lite.nstackwords
	.set	mac_rx_p2_lite.maxcores,safe_mac_rx_lite.maxcores $M 1
	.globl	mac_rx_p2_lite.maxcores
	.set	mac_rx_p2_lite.maxtimers,safe_mac_rx_lite.maxtimers $M 0
	.globl	mac_rx_p2_lite.maxtimers
	.set	mac_rx_p2_lite.maxchanends,safe_mac_rx_lite.maxchanends $M 0
	.globl	mac_rx_p2_lite.maxchanends
	.cc_top safe_mac_rx_lite.function
	.globl	safe_mac_rx_lite
	.align	4
	.type	safe_mac_rx_lite,@function
safe_mac_rx_lite:
.Ltmp13:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 12 0
.Lxtalabel1:
	entsp 3
.Ltmp14:
	.cfi_def_cfa_offset 12
.Ltmp15:
	.cfi_offset 15, 0
	.loc	1 8 0 prologue_end
.Ltmp16:
	stw r4, sp[2]
.Ltmp17:
	.cfi_offset 4, -4
	stw r5, sp[1]
.Ltmp18:
	.cfi_offset 5, -8
	stw r6, sp[0]
.Ltmp19:
	.cfi_offset 6, -12
	.loc	1 13 0
.Ltmp20:
.Lxta.endpoint_labels0:
	in r11, res[r0]
	.loc	1 13 0
	stw r11, r2[0]
	.loc	1 14 0
	outct res[r0], 1
	chkct res[r0], 1
	ldc r2, 0
.Ltmp21:
	.loc	1 14 0
.Lxta.endpoint_labels1:
	out res[r0], r2
	mkmsk r4, 32
	.loc	1 16 0
	eq r5, r11, r4
	.loc	1 14 0
	outct res[r0], 1
	chkct res[r0], 1
	ldw r4, sp[5]
	.loc	1 16 0
	bf r5, .LBB1_2
.Lxtalabel2:
	.loc	1 18 0
.Ltmp22:
	chkct res[r0], 1
	outct res[r0], 1
	.loc	1 18 0
.Lxta.endpoint_labels2:
	in r2, res[r0]
.Ltmp23:
	.loc	1 18 0
	chkct res[r0], 1
	outct res[r0], 1
	.loc	1 19 0
	ecallf r4
.Ltmp24:
	ldc r11, 0
	st8 r2, r1[r11]
	.loc	1 20 0
	chkct res[r0], 1
	outct res[r0], 1
	.loc	1 20 0
.Lxta.endpoint_labels3:
	in r1, res[r0]
.Ltmp25:
	.loc	1 20 0
	stw r1, r3[0]
	chkct res[r0], 1
	outct res[r0], 1
	bu .LBB1_6
.Ltmp26:
.LBB1_2:
.Lxtalabel3:
	.loc	1 23 0
	add r11, r11, 3
	ldc r5, 4
	lsu r5, r11, r5
	bt r5, .LBB1_5
	.loc	1 24 0
	shr r4, r4, 2
	mov r5, r2
.LBB1_4:
.Lxtalabel4:
	lsu r6, r5, r4
	chkct res[r0], 1
	outct res[r0], 1
	ecallf r6
.Ltmp27:
	.loc	1 24 0
.Lxta.endpoint_labels4:
	in r6, res[r0]
	.loc	1 24 0
	stw r6, r1[r5]
	.loc	1 23 0
	shr r6, r11, 2
	add r5, r5, 1
	lsu r6, r5, r6
	.loc	1 24 0
	chkct res[r0], 1
	outct res[r0], 1
.Lxta.loop_labels0:
	# LOOPMARKER 0
	.loc	1 23 0
	bt r6, .LBB1_4
.Ltmp28:
.LBB1_5:
.Lxtalabel5:
	.loc	1 26 0
	stw r2, r3[0]
.Ltmp29:
.LBB1_6:
.Lxtalabel6:
	ldw r6, sp[0]
	ldw r5, sp[1]
	ldw r4, sp[2]
	retsp 3
.Ltmp30:
	.size	safe_mac_rx_lite, .Ltmp30-safe_mac_rx_lite
.Lfunc_end1:
.Ltmp31:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom safe_mac_rx_lite.function
	.set	safe_mac_rx_lite.nstackwords,3
	.globl	safe_mac_rx_lite.nstackwords
	.set	safe_mac_rx_lite.maxcores,1
	.globl	safe_mac_rx_lite.maxcores
	.set	safe_mac_rx_lite.maxtimers,0
	.globl	safe_mac_rx_lite.maxtimers
	.set	safe_mac_rx_lite.maxchanends,0
	.globl	safe_mac_rx_lite.maxchanends
	.cc_top mac_tx_p2_lite.function
	.globl	mac_tx_p2_lite
	.align	4
	.type	mac_tx_p2_lite,@function
mac_tx_p2_lite:
.Ltmp34:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 42 0
.Lxtalabel7:
	entsp 1
.Ltmp35:
	.cfi_def_cfa_offset 4
.Ltmp36:
	.cfi_offset 15, 0
	.loc	1 42 0 prologue_end
.Ltmp37:
	stw r4, sp[0]
.Ltmp38:
	.cfi_offset 4, -4
	.loc	1 43 0
.Ltmp39:
	outct res[r0], 1
	chkct res[r0], 1
	.loc	1 43 0
.Lxta.endpoint_labels5:
	out res[r0], r2
	.loc	1 44 0
.Ltmp40:
	add r2, r2, 3
.Ltmp41:
	ashr r2, r2, 2
	mkmsk r3, 1
.Ltmp42:
	lss r3, r2, r3
.Ltmp43:
	.loc	1 43 0
	outct res[r0], 1
	chkct res[r0], 1
	.loc	1 44 0
.Ltmp44:
	bt r3, .LBB2_3
.Ltmp45:
	ldc r3, 0
.Ltmp46:
	ldw r11, sp[2]
.LBB2_2:
.Lxtalabel8:
.Ltmp47:
	.loc	1 45 0
	lsu r4, r3, r11
	ecallf r4
.Ltmp48:
	ldw r4, r1[r3]
	outct res[r0], 1
	chkct res[r0], 1
	.loc	1 45 0
.Lxta.endpoint_labels6:
	out res[r0], r4
	.loc	1 44 0
	add r3, r3, 1
.Ltmp49:
	lss r4, r3, r2
	.loc	1 45 0
	outct res[r0], 1
	chkct res[r0], 1
.Lxta.loop_labels1:
	# LOOPMARKER 0
	.loc	1 44 0
	bt r4, .LBB2_2
.Ltmp50:
.LBB2_3:
.Lxtalabel9:
	ldw r4, sp[0]
	retsp 1
.Ltmp51:
.Ltmp52:
	.size	mac_tx_p2_lite, .Ltmp52-mac_tx_p2_lite
.Lfunc_end2:
.Ltmp53:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom mac_tx_p2_lite.function
	.set	mac_tx_p2_lite.nstackwords,1
	.globl	mac_tx_p2_lite.nstackwords
	.set	mac_tx_p2_lite.maxcores,1
	.globl	mac_tx_p2_lite.maxcores
	.set	mac_tx_p2_lite.maxtimers,0
	.globl	mac_tx_p2_lite.maxtimers
	.set	mac_tx_p2_lite.maxchanends,0
	.globl	mac_tx_p2_lite.maxchanends
	.cc_top mac_set_custom_filter_lite.function
	.globl	mac_set_custom_filter_lite
	.align	4
	.type	mac_set_custom_filter_lite,@function
mac_set_custom_filter_lite:
.Ltmp54:
	.cfi_startproc
.Lxtalabel10:
	retsp 0
.Ltmp55:
	.size	mac_set_custom_filter_lite, .Ltmp55-mac_set_custom_filter_lite
.Ltmp56:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom mac_set_custom_filter_lite.function
	.set	mac_set_custom_filter_lite.nstackwords,0
	.globl	mac_set_custom_filter_lite.nstackwords
	.set	mac_set_custom_filter_lite.maxcores,1
	.globl	mac_set_custom_filter_lite.maxcores
	.set	mac_set_custom_filter_lite.maxtimers,0
	.globl	mac_set_custom_filter_lite.maxtimers
	.set	mac_set_custom_filter_lite.maxchanends,0
	.globl	mac_set_custom_filter_lite.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	1047
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
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
	.long	1012
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
	.long	1012
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
	.long	1012
	.byte	0
	.byte	4
	.ascii	 "safe_mac_rx_lite"
	.byte	0
	.ascii	 "safe_mac_rx_lite"
	.byte	0
	.byte	1
	.byte	12
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.byte	8
	.long	971
	.long	.Ldebug_loc8+0
	.byte	5
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	9
	.long	1007
	.long	.Ldebug_loc11+0
	.byte	5
	.ascii	 "len"
	.byte	0
	.byte	1
	.byte	10
	.long	1028
	.long	.Ldebug_loc16+0
	.byte	5
	.ascii	 "src_port"
	.byte	0
	.byte	1
	.byte	11
	.long	1028
	.long	.Ldebug_loc18+0
	.byte	6
	.byte	110
	.byte	0
	.byte	1
	.byte	12
	.long	1033
	.byte	2
	.byte	145
	.byte	16
	.byte	7
	.long	.Ltmp20
	.long	.Ltmp29
	.byte	7
	.long	.Ltmp22
	.long	.Ltmp26
	.byte	8
	.ascii	 "status"
	.byte	0
	.byte	1
	.byte	17
	.long	1033
	.long	.Ldebug_loc21+0
	.byte	0
	.byte	7
	.long	.Ltmp26
	.long	.Ltmp28
	.byte	9
	.byte	105
	.byte	0
	.byte	1
	.byte	23
	.long	1033
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.ascii	 "mac_rx_p2_lite"
	.byte	0
	.ascii	 "mac_rx_p2_lite"
	.byte	0
	.byte	1
	.byte	35
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.byte	31
	.long	971
	.long	.Ldebug_loc0+0
	.byte	5
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	32
	.long	1007
	.long	.Ldebug_loc2+0
	.byte	5
	.ascii	 "len"
	.byte	0
	.byte	1
	.byte	33
	.long	1028
	.long	.Ldebug_loc4+0
	.byte	5
	.ascii	 "src_port"
	.byte	0
	.byte	1
	.byte	34
	.long	1028
	.long	.Ldebug_loc6+0
	.byte	0
	.byte	2
	.ascii	 "mac_set_custom_filter_lite"
	.byte	0
	.ascii	 "mac_set_custom_filter_lite"
	.byte	0
	.byte	1
	.byte	39
	.byte	1
	.byte	3
	.ascii	 "c_mac_svr"
	.byte	0
	.byte	1
	.byte	39
	.long	971
	.byte	3
	.byte	120
	.byte	0
	.byte	1
	.byte	39
	.long	1033
	.byte	0
	.byte	4
	.ascii	 "mac_tx_p2_lite"
	.byte	0
	.ascii	 "mac_tx_p2_lite"
	.byte	0
	.byte	1
	.byte	42
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	5
	.ascii	 "cOut"
	.byte	0
	.byte	1
	.byte	42
	.long	971
	.long	.Ldebug_loc24+0
	.byte	5
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	42
	.long	1045
	.long	.Ldebug_loc27+0
	.byte	5
	.ascii	 "nBytes"
	.byte	0
	.byte	1
	.byte	42
	.long	1033
	.long	.Ldebug_loc30+0
	.byte	5
	.ascii	 "ifnum"
	.byte	0
	.byte	1
	.byte	42
	.long	1033
	.long	.Ldebug_loc32+0
	.byte	7
	.long	.Ltmp39
	.long	.Ltmp50
	.byte	10
	.long	.Ldebug_range+0
	.byte	9
	.byte	105
	.byte	0
	.byte	1
	.byte	44
	.long	1033
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	11
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	12
	.byte	4
	.byte	5
	.byte	13
	.long	982
	.byte	14
	.long	1002
	.byte	11
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	14
	.long	1012
	.byte	11
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	13
	.long	1012
	.byte	14
	.long	1040
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
	.byte	10
	.byte	0
	.byte	0
	.byte	7
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
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
	.byte	10
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	11
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
	.byte	12
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	13
	.byte	1
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	14
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
	.long	333
.asciiz "delay_milliseconds"
	.long	445
.asciiz "safe_mac_rx_lite"
	.long	389
.asciiz "delay_microseconds"
	.long	632
.asciiz "mac_rx_p2_lite"
	.long	746
.asciiz "mac_set_custom_filter_lite"
	.long	831
.asciiz "mac_tx_p2_lite"
	.long	287
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
.Lset4 = .Ltmp58-.Ltmp57
	.short	.Lset4
.Ltmp57:
	.byte	80
.Ltmp58:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp5
.Lset5 = .Ltmp60-.Ltmp59
	.short	.Lset5
.Ltmp59:
	.byte	81
.Ltmp60:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin0
	.long	.Ltmp5
.Lset6 = .Ltmp62-.Ltmp61
	.short	.Lset6
.Ltmp61:
	.byte	82
.Ltmp62:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin0
	.long	.Ltmp5
.Lset7 = .Ltmp64-.Ltmp63
	.short	.Lset7
.Ltmp63:
	.byte	83
.Ltmp64:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin1
	.long	.Ltmp28
.Lset8 = .Ltmp66-.Ltmp65
	.short	.Lset8
.Ltmp65:
	.byte	80
.Ltmp66:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin1
	.long	.Ltmp25
.Lset9 = .Ltmp68-.Ltmp67
	.short	.Lset9
.Ltmp67:
	.byte	81
.Ltmp68:
	.long	.Ltmp26
	.long	.Ltmp28
.Lset10 = .Ltmp70-.Ltmp69
	.short	.Lset10
.Ltmp69:
	.byte	81
.Ltmp70:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin1
	.long	.Ltmp21
.Lset11 = .Ltmp72-.Ltmp71
	.short	.Lset11
.Ltmp71:
	.byte	82
.Ltmp72:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin1
	.long	.Ltmp29
.Lset12 = .Ltmp74-.Ltmp73
	.short	.Lset12
.Ltmp73:
	.byte	83
.Ltmp74:
	.long	0
	.long	0
.Ldebug_loc21:
	.long	.Ltmp23
	.long	.Ltmp26
.Lset13 = .Ltmp76-.Ltmp75
	.short	.Lset13
.Ltmp75:
	.byte	82
.Ltmp76:
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Lfunc_begin2
	.long	.Ltmp50
.Lset14 = .Ltmp78-.Ltmp77
	.short	.Lset14
.Ltmp77:
	.byte	80
.Ltmp78:
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Lfunc_begin2
	.long	.Ltmp50
.Lset15 = .Ltmp80-.Ltmp79
	.short	.Lset15
.Ltmp79:
	.byte	81
.Ltmp80:
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Lfunc_begin2
	.long	.Ltmp41
.Lset16 = .Ltmp82-.Ltmp81
	.short	.Lset16
.Ltmp81:
	.byte	82
.Ltmp82:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Lfunc_begin2
	.long	.Ltmp42
.Lset17 = .Ltmp84-.Ltmp83
	.short	.Lset17
.Ltmp83:
	.byte	83
.Ltmp84:
	.long	.Ltmp45
	.long	.Ltmp46
.Lset18 = .Ltmp86-.Ltmp85
	.short	.Lset18
.Ltmp85:
	.byte	83
.Ltmp86:
	.long	.Ltmp47
	.long	.Ltmp49
.Lset19 = .Ltmp88-.Ltmp87
	.short	.Lset19
.Ltmp87:
	.byte	83
.Ltmp88:
	.long	.Ltmp50
	.long	.Ltmp51
.Lset20 = .Ltmp90-.Ltmp89
	.short	.Lset20
.Ltmp89:
	.byte	83
.Ltmp90:
	.long	0
	.long	0
.Ldebug_loc38:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.long	.Ltmp40
	.long	.Ltmp43
	.long	.Ltmp44
	.long	.Ltmp50
	.long	0
	.long	0
	.section	.debug_macinfo,"",@progbits

	.typestring mac_rx_p2_lite, "f{0}(chd,&(a(:uc)),&(ui),&(ui))"
	.typestring safe_mac_rx_lite, "f{0}(chd,&(a(:uc)),&(ui),&(ui),si)"
	.typestring mac_tx_p2_lite, "f{0}(chd,&(a(:ui)),si,si)"
	.typestring mac_set_custom_filter_lite, "f{0}(chd,si)"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	36
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_1,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	13
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_1
.cc_top cc_2,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	14
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_2
.cc_top cc_3,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	18
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_3
.cc_top cc_4,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	20
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_4
.cc_top cc_5,.Lxta.endpoint_labels4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	24
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_5
.cc_top cc_6,.Lxta.endpoint_labels5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	43
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_6
.cc_top cc_7,.Lxta.endpoint_labels6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	45
	.long	.Lxta.endpoint_labels6
.cc_bottom cc_7
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_8,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	13
	.long	16
	.long	.Lxtalabel1
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	17
	.long	21
	.long	.Lxtalabel2
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	22
	.long	23
	.long	.Lxtalabel3
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	24
	.long	25
	.long	.Lxtalabel4
.cc_bottom cc_11
.cc_top cc_12,.Lxtalabel5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	26
	.long	27
	.long	.Lxtalabel5
.cc_bottom cc_12
.cc_top cc_13,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	28
	.long	28
	.long	.Lxtalabel6
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	35
	.long	37
	.long	.Lxtalabel0
.cc_bottom cc_14
.cc_top cc_15,.Lxtalabel10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	40
	.long	40
	.long	.Lxtalabel10
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	43
	.long	44
	.long	.Lxtalabel7
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	45
	.long	46
	.long	.Lxtalabel8
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	47
	.long	47
	.long	.Lxtalabel9
.cc_bottom cc_18
.Lentries_end5:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start6:
	.long	.Lentries_end7-.Lentries_start6
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_19,.Lxta.loop_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	24
	.long	25
	.long	.Lxta.loop_labels0
.cc_bottom cc_19
.cc_top cc_20,.Lxta.loop_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_lite_p2.xc"
	.byte	0
	.long	45
	.long	46
	.long	.Lxta.loop_labels1
.cc_bottom cc_20
.Lentries_end7:
