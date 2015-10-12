	.file	"../src/top_layer.xc"

	.call topLayer,printstrln
	.call topLayer,isBroadcast
	.call topLayer,isARP
	.call topLayer,fetchFrameFromHub
	.set topLayer.locnochandec, 1
	.set topLayer.locnoglobalaccess, 1
	.set topLayer.locnointerfaceaccess, 1
	.set topLayer.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/../src/top_layer.xc"
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
	.cc_top topLayer.function
	.globl	topLayer
	.align	4
	.type	topLayer,@function
topLayer:
.Ltmp8:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 5 0
.Lxtalabel0:
	entsp 409
.Ltmp9:
	.cfi_def_cfa_offset 1636
.Ltmp10:
	.cfi_offset 15, 0
	.loc	1 5 0 prologue_end
.Ltmp11:
	stw r4, sp[408]
.Ltmp12:
	.cfi_offset 4, -4
	stw r5, sp[407]
.Ltmp13:
	.cfi_offset 5, -8
	stw r6, sp[406]
.Ltmp14:
	.cfi_offset 6, -12
	stw r7, sp[405]
.Ltmp15:
	.cfi_offset 7, -16
	stw r8, sp[404]
.Ltmp16:
	.cfi_offset 8, -20
	stw r9, sp[403]
.Ltmp17:
	.cfi_offset 9, -24
	stw r10, sp[402]
.Ltmp18:
	.cfi_offset 10, -28
	mov r4, r2
.Ltmp19:
	mov r5, r0
.Ltmp20:
	ldaw r6, sp[1]
	ldaw r7, sp[401]
	ldc r8, 400
	ldc r9, 1600
	ldc r10, 14
.LBB0_1:
.Lxtalabel1:
	.loc	1 12 0
.Ltmp21:
	clre
	ldap r11, .Ltmp22
	setv res[r5], r11
	eeu res[r5]
	ldap r11, .Ltmp23
	setv res[r4], r11
	eeu res[r4]
	.loc	1 18 0
	
	.xtabranch .LBB0_6, .LBB0_2
waiteu
.Ltmp22:
.LBB0_2:
.Lxtalabel2:
	.loc	1 14 0
	mov r0, r5
.Ltmp24:
.LBB0_3:
.Lxtalabel3:
	mov r1, r6
	mov r2, r7
	mov r3, r8
.Lxta.call_labels0:
	bl fetchFrameFromHub
.Ltmp25:
	.loc	1 21 0
	mov r0, r6
	mov r1, r9
.Ltmp26:
.Lxta.call_labels1:
	bl isARP
.Ltmp27:
	.loc	1 21 0
	bf r0, .LBB0_1
.Ltmp28:
	mov r0, r6
	mov r1, r9
.Ltmp29:
	bl isBroadcast
.Ltmp30:
	bf r0, .LBB0_1
.Lxtalabel4:
.Ltmp31:
	.loc	1 22 0
	ldaw r0, dp[.str]
	mov r1, r10
.Ltmp32:
.Lxta.call_labels2:
	bl printstrln
.Ltmp33:
	.loc	1 12 0
	clre
	ldap r11, .Ltmp22
	setv res[r5], r11
	eeu res[r5]
	ldap r11, .Ltmp23
	setv res[r4], r11
	eeu res[r4]
	.loc	1 18 0
	
	.xtabranch .LBB0_6, .LBB0_2
waiteu
.Ltmp23:
.LBB0_6:
.Lxtalabel5:
.Ltmp34:
	.loc	1 17 0
	mov r0, r4
	bu .LBB0_3
.Ltmp35:
.Ltmp36:
	.size	topLayer, .Ltmp36-topLayer
.Lfunc_end0:
.Ltmp37:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom topLayer.function
	.set	topLayer.nstackwords,((fetchFrameFromHub.nstackwords $M isARP.nstackwords $M isBroadcast.nstackwords $M printstrln.nstackwords) + 409)
	.globl	topLayer.nstackwords
	.set	topLayer.maxcores,fetchFrameFromHub.maxcores $M isARP.maxcores $M isBroadcast.maxcores $M printstrln.maxcores $M 1
	.globl	topLayer.maxcores
	.set	topLayer.maxtimers,fetchFrameFromHub.maxtimers $M isARP.maxtimers $M isBroadcast.maxtimers $M printstrln.maxtimers $M 0
	.globl	topLayer.maxtimers
	.set	topLayer.maxchanends,fetchFrameFromHub.maxchanends $M isARP.maxchanends $M isBroadcast.maxchanends $M printstrln.maxchanends $M 0
	.globl	topLayer.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,14
.str:
.asciiz "Packet for us"
	.cc_bottom .str.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	428
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "topLayer"
	.byte	0
	.ascii	 "topLayer"
	.byte	0
	.byte	1
	.byte	5
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "dataFromP1"
	.byte	0
	.byte	1
	.byte	5
	.long	381
	.long	.Ldebug_loc0+0
	.byte	3
	.ascii	 "dataToP1"
	.byte	0
	.byte	1
	.byte	5
	.long	381
	.long	.Ldebug_loc5+0
	.byte	3
	.ascii	 "dataFromP2"
	.byte	0
	.byte	1
	.byte	5
	.long	381
	.long	.Ldebug_loc11+0
	.byte	3
	.ascii	 "dataToP2"
	.byte	0
	.byte	1
	.byte	5
	.long	381
	.long	.Ldebug_loc16+0
	.byte	4
	.long	.Ltmp21
	.long	.Ltmp35
	.byte	4
	.long	.Ltmp21
	.long	.Ltmp35
	.byte	5
	.ascii	 "nbytes"
	.byte	0
	.byte	1
	.byte	8
	.long	392
	.byte	3
	.byte	145
	.ascii	 "\304\f"
	.byte	4
	.long	.Ltmp21
	.long	.Ltmp35
	.byte	5
	.ascii	 "rxbuffer"
	.byte	0
	.byte	1
	.byte	9
	.long	418
	.byte	2
	.byte	145
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	6
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	6
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	7
	.byte	4
	.byte	5
	.byte	8
	.long	399
	.byte	9
	.long	415
	.short	399
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
	.byte	10
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
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	8
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	9
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
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
	.long	196
.asciiz "topLayer"
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
	.long	.Ltmp20
.Lset4 = .Ltmp39-.Ltmp38
	.short	.Lset4
.Ltmp38:
	.byte	80
.Ltmp39:
	.long	.Ltmp20
	.long	.Ltmp24
.Lset5 = .Ltmp41-.Ltmp40
	.short	.Lset5
.Ltmp40:
	.byte	85
.Ltmp41:
	.long	.Ltmp25
	.long	.Ltmp35
.Lset6 = .Ltmp43-.Ltmp42
	.short	.Lset6
.Ltmp42:
	.byte	85
.Ltmp43:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin0
	.long	.Ltmp24
.Lset7 = .Ltmp45-.Ltmp44
	.short	.Lset7
.Ltmp44:
	.byte	81
.Ltmp45:
	.long	.Ltmp25
	.long	.Ltmp26
.Lset8 = .Ltmp47-.Ltmp46
	.short	.Lset8
.Ltmp46:
	.byte	81
.Ltmp47:
	.long	.Ltmp28
	.long	.Ltmp29
.Lset9 = .Ltmp49-.Ltmp48
	.short	.Lset9
.Ltmp48:
	.byte	81
.Ltmp49:
	.long	.Ltmp31
	.long	.Ltmp32
.Lset10 = .Ltmp51-.Ltmp50
	.short	.Lset10
.Ltmp50:
	.byte	81
.Ltmp51:
	.long	.Ltmp34
	.long	.Ltmp35
.Lset11 = .Ltmp53-.Ltmp52
	.short	.Lset11
.Ltmp52:
	.byte	81
.Ltmp53:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin0
	.long	.Ltmp19
.Lset12 = .Ltmp55-.Ltmp54
	.short	.Lset12
.Ltmp54:
	.byte	82
.Ltmp55:
	.long	.Ltmp19
	.long	.Ltmp24
.Lset13 = .Ltmp57-.Ltmp56
	.short	.Lset13
.Ltmp56:
	.byte	84
.Ltmp57:
	.long	.Ltmp25
	.long	.Ltmp35
.Lset14 = .Ltmp59-.Ltmp58
	.short	.Lset14
.Ltmp58:
	.byte	84
.Ltmp59:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin0
	.long	.Ltmp24
.Lset15 = .Ltmp61-.Ltmp60
	.short	.Lset15
.Ltmp60:
	.byte	83
.Ltmp61:
	.long	.Ltmp25
	.long	.Ltmp27
.Lset16 = .Ltmp63-.Ltmp62
	.short	.Lset16
.Ltmp62:
	.byte	83
.Ltmp63:
	.long	.Ltmp28
	.long	.Ltmp30
.Lset17 = .Ltmp65-.Ltmp64
	.short	.Lset17
.Ltmp64:
	.byte	83
.Ltmp65:
	.long	.Ltmp31
	.long	.Ltmp33
.Lset18 = .Ltmp67-.Ltmp66
	.short	.Lset18
.Ltmp66:
	.byte	83
.Ltmp67:
	.long	.Ltmp34
	.long	.Ltmp35
.Lset19 = .Ltmp69-.Ltmp68
	.short	.Lset19
.Ltmp68:
	.byte	83
.Ltmp69:
	.long	0
	.long	0
.Ldebug_loc22:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring fetchFrameFromHub, "f{0}(chd,&(a(:ui)),&(si))"
	.typestring isBroadcast, "f{ui}(&(a(:uc)))"
	.typestring isARP, "f{ui}(&(a(:uc)))"
	.typestring printstrln, "f{si}(a:&(a(:c:uc)))"
	.typestring topLayer, "f{0}(chd,chd,chd,chd)"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	14
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	21
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels2
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	22
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
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	6
	.long	11
	.long	.Lxtalabel0
.cc_bottom cc_3
.cc_top cc_4,.Lxtalabel1
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	12
	.long	14
	.long	.Lxtalabel1
.cc_bottom cc_4
.cc_top cc_5,.Lxtalabel4
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	12
	.long	14
	.long	.Lxtalabel4
.cc_bottom cc_5
.cc_top cc_6,.Lxtalabel2
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	15
	.long	17
	.long	.Lxtalabel2
.cc_bottom cc_6
.cc_top cc_7,.Lxtalabel3
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	15
	.long	17
	.long	.Lxtalabel3
.cc_bottom cc_7
.cc_top cc_8,.Lxtalabel5
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	18
	.long	19
	.long	.Lxtalabel5
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel4
	.ascii	 "../src/top_layer.xc"
	.byte	0
	.long	22
	.long	23
	.long	.Lxtalabel4
.cc_bottom cc_9
.Lentries_end3:
