	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"

	.set passFrameToHub.locnochandec, 1
	.set fetchFrameFromHub.locnochandec, 1
	.set passFrameToHub.locnoglobalaccess, 1
	.set fetchFrameFromHub.locnoglobalaccess, 1
	.set passFrameToHub.locnointerfaceaccess, 1
	.set fetchFrameFromHub.locnointerfaceaccess, 1
	.set passFrameToHub.locnonotificationselect, 1
	.set fetchFrameFromHub.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
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
	.cc_top passFrameToHub.function
	.globl	passFrameToHub
	.align	4
	.type	passFrameToHub,@function
passFrameToHub:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 9 0
.Lxtalabel0:
	.loc	1 10 0 prologue_end
	ashr r3, r2, 32
	bt r3, .LBB0_5
.Lxtalabel1:
.Ltmp1:
	.loc	1 14 0
	outct res[r0], 1
	.loc	1 17 0
.Ltmp2:
	chkct res[r0], 1
	.loc	1 17 0
.Lxta.endpoint_labels0:
	out res[r0], r2
	.loc	1 18 0
	ashr r2, r2, 2
.Ltmp3:
	add r2, r2, 1
.Ltmp4:
	mkmsk r3, 1
	.loc	1 20 0
.Ltmp5:
	lss r3, r2, r3
	bt r3, .LBB0_4
.Ltmp6:
	ldc r3, 0
.LBB0_3:
.Lxtalabel2:
.Ltmp7:
	.loc	1 22 0
	ldw r11, r1[r3]
	.loc	1 22 0
.Lxta.endpoint_labels1:
	out res[r0], r11
	.loc	1 20 0
	add r3, r3, 1
	eq r11, r3, r2
.Lxta.loop_labels0:
	# LOOPMARKER 0
	bf r11, .LBB0_3
.Ltmp8:
.LBB0_4:
.Lxtalabel3:
	outct res[r0], 1
	chkct res[r0], 1
.Ltmp9:
.LBB0_5:
	retsp 0
.Ltmp10:
	.size	passFrameToHub, .Ltmp10-passFrameToHub
.Lfunc_end0:
.Ltmp11:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom passFrameToHub.function
	.set	passFrameToHub.nstackwords,0
	.globl	passFrameToHub.nstackwords
	.set	passFrameToHub.maxcores,1
	.globl	passFrameToHub.maxcores
	.set	passFrameToHub.maxtimers,0
	.globl	passFrameToHub.maxtimers
	.set	passFrameToHub.maxchanends,0
	.globl	passFrameToHub.maxchanends
	.cc_top fetchFrameFromHub.function
	.globl	fetchFrameFromHub
	.align	4
	.type	fetchFrameFromHub,@function
fetchFrameFromHub:
.Ltmp12:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 28 0
.Lxtalabel4:
	.loc	1 29 0 prologue_end
	chkct res[r0], 1
	.loc	1 32 0
.Ltmp13:
	outct res[r0], 1
	.loc	1 32 0
.Lxta.endpoint_labels2:
	in r3, res[r0]
	.loc	1 32 0
	stw r3, r2[0]
	.loc	1 33 0
	ashr r2, r3, 2
.Ltmp14:
	add r2, r2, 1
.Ltmp15:
	mkmsk r3, 1
	.loc	1 35 0
.Ltmp16:
	lss r3, r2, r3
	bt r3, .LBB1_3
.Ltmp17:
	ldc r3, 0
.LBB1_2:
.Lxtalabel5:
.Ltmp18:
	.loc	1 37 0
.Lxta.endpoint_labels3:
	in r11, res[r0]
	.loc	1 37 0
	stw r11, r1[r3]
	.loc	1 35 0
	add r3, r3, 1
	eq r11, r3, r2
.Lxta.loop_labels1:
	# LOOPMARKER 0
	bf r11, .LBB1_2
.Ltmp19:
.LBB1_3:
.Lxtalabel6:
	chkct res[r0], 1
	outct res[r0], 1
	retsp 0
.Ltmp20:
.Ltmp21:
	.size	fetchFrameFromHub, .Ltmp21-fetchFrameFromHub
.Lfunc_end1:
.Ltmp22:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom fetchFrameFromHub.function
	.set	fetchFrameFromHub.nstackwords,0
	.globl	fetchFrameFromHub.nstackwords
	.set	fetchFrameFromHub.maxcores,1
	.globl	fetchFrameFromHub.maxcores
	.set	fetchFrameFromHub.maxtimers,0
	.globl	fetchFrameFromHub.maxtimers
	.set	fetchFrameFromHub.maxchanends,0
	.globl	fetchFrameFromHub.maxchanends
	.cfi_sections .debug_frame
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	664
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "passFrameToHub"
	.byte	0
	.ascii	 "passFrameToHub"
	.byte	0
	.byte	1
	.byte	9
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.byte	99
	.byte	0
	.byte	1
	.byte	8
	.long	583
	.long	.Ldebug_loc0+0
	.byte	3
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	8
	.long	624
	.long	.Ldebug_loc3+0
	.byte	3
	.ascii	 "nbytes"
	.byte	0
	.byte	1
	.byte	8
	.long	629
	.long	.Ldebug_loc6+0
	.byte	4
	.long	.Lfunc_begin0
	.long	.Ltmp9
	.byte	4
	.long	.Ltmp2
	.long	.Ltmp9
	.byte	5
	.ascii	 "nwords"
	.byte	0
	.byte	1
	.byte	16
	.long	629
	.long	.Ldebug_loc9+0
	.byte	4
	.long	.Ltmp5
	.long	.Ltmp9
	.byte	6
	.byte	105
	.byte	0
	.byte	1
	.byte	20
	.long	629
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "fetchFrameFromHub"
	.byte	0
	.ascii	 "fetchFrameFromHub"
	.byte	0
	.byte	1
	.byte	28
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.byte	99
	.byte	0
	.byte	1
	.byte	27
	.long	583
	.long	.Ldebug_loc11+0
	.byte	3
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	27
	.long	657
	.long	.Ldebug_loc14+0
	.byte	3
	.ascii	 "nbytes"
	.byte	0
	.byte	1
	.byte	27
	.long	662
	.long	.Ldebug_loc17+0
	.byte	4
	.long	.Lfunc_begin1
	.long	.Ltmp20
	.byte	4
	.long	.Ltmp13
	.long	.Ltmp20
	.byte	5
	.ascii	 "nwords"
	.byte	0
	.byte	1
	.byte	31
	.long	629
	.long	.Ldebug_loc19+0
	.byte	4
	.long	.Ltmp16
	.long	.Ltmp20
	.byte	6
	.byte	105
	.byte	0
	.byte	1
	.byte	35
	.long	629
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	7
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	8
	.long	594
	.byte	9
	.byte	4
	.byte	5
	.byte	10
	.long	611
	.byte	11
	.long	619
	.byte	7
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	7
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	10
	.long	636
	.byte	11
	.long	652
	.byte	11
	.long	629
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
	.byte	7
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
	.byte	8
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.byte	1
	.byte	0
	.byte	73
	.byte	19
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
	.long	273
.asciiz "passFrameToHub"
	.long	425
.asciiz "fetchFrameFromHub"
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
	.long	.Ltmp9
.Lset4 = .Ltmp24-.Ltmp23
	.short	.Lset4
.Ltmp23:
	.byte	80
.Ltmp24:
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin0
	.long	.Ltmp8
.Lset5 = .Ltmp26-.Ltmp25
	.short	.Lset5
.Ltmp25:
	.byte	81
.Ltmp26:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin0
	.long	.Ltmp3
.Lset6 = .Ltmp28-.Ltmp27
	.short	.Lset6
.Ltmp27:
	.byte	82
.Ltmp28:
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp4
	.long	.Ltmp6
.Lset7 = .Ltmp30-.Ltmp29
	.short	.Lset7
.Ltmp29:
	.byte	82
.Ltmp30:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin1
	.long	.Ltmp20
.Lset8 = .Ltmp32-.Ltmp31
	.short	.Lset8
.Ltmp31:
	.byte	80
.Ltmp32:
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin1
	.long	.Ltmp19
.Lset9 = .Ltmp34-.Ltmp33
	.short	.Lset9
.Ltmp33:
	.byte	81
.Ltmp34:
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Lfunc_begin1
	.long	.Ltmp14
.Lset10 = .Ltmp36-.Ltmp35
	.short	.Lset10
.Ltmp35:
	.byte	82
.Ltmp36:
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Ltmp15
	.long	.Ltmp17
.Lset11 = .Ltmp38-.Ltmp37
	.short	.Lset11
.Ltmp37:
	.byte	82
.Ltmp38:
	.long	0
	.long	0
.Ldebug_loc21:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring passFrameToHub, "f{0}(chd,&(a(:c:uc)),si)"
	.typestring fetchFrameFromHub, "f{0}(chd,&(a(:ui)),&(si))"
	.section	.xtaendpointtable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	17
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	22
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	32
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_2
.cc_top cc_3,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	37
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
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	9
	.long	10
	.long	.Lxtalabel0
.cc_bottom cc_4
.cc_top cc_5,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	11
	.long	12
	.long	.Lxtalabel0
.cc_bottom cc_5
.cc_top cc_6,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	13
	.long	20
	.long	.Lxtalabel1
.cc_bottom cc_6
.cc_top cc_7,.Lxtalabel2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	21
	.long	23
	.long	.Lxtalabel2
.cc_bottom cc_7
.cc_top cc_8,.Lxtalabel3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	24
	.long	25
	.long	.Lxtalabel3
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	28
	.long	35
	.long	.Lxtalabel4
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	36
	.long	38
	.long	.Lxtalabel5
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	39
	.long	40
	.long	.Lxtalabel6
.cc_bottom cc_11
.Lentries_end3:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_12,.Lxta.loop_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	21
	.long	23
	.long	.Lxta.loop_labels0
.cc_bottom cc_12
.cc_top cc_13,.Lxta.loop_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
	.byte	0
	.long	36
	.long	38
	.long	.Lxta.loop_labels1
.cc_bottom cc_13
.Lentries_end5:
