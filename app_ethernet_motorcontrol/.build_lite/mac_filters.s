	.file	"../src/mac_filters.xc"

	.inline_definition isEthertype
	.set usage.anon.0,0
	.globwrite isSNCN,ETHERTYPE_SNCN,"../src/mac_filters.xc:29: error: previously used here"
	.globwrite isIPV6,ETHERTYPE_IPV6,"../src/mac_filters.xc:24: error: previously used here"
	.globwrite isIPV4,ETHERTYPE_IPV4,"../src/mac_filters.xc:20: error: previously used here"
	.globwrite isARP,ETHERTYPE_ARP,"../src/mac_filters.xc:16: error: previously used here"
	.call isSNCN,usage.anon.0
	.call isIPV6,usage.anon.0
	.call isIPV4,usage.anon.0
	.call isARP,usage.anon.0
	.set usage.anon.0.locnoside, 1
	.set isBroadcast.locnoside, 1
	.set isForMe.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set isARP.locnochandec, 1
	.set isIPV4.locnochandec, 1
	.set isIPV6.locnochandec, 1
	.set isSNCN.locnochandec, 1
	.set isBroadcast.locnochandec, 1
	.set isForMe.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set isBroadcast.locnoglobalaccess, 1
	.set isForMe.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set isARP.locnointerfaceaccess, 1
	.set isIPV4.locnointerfaceaccess, 1
	.set isIPV6.locnointerfaceaccess, 1
	.set isSNCN.locnointerfaceaccess, 1
	.set isBroadcast.locnointerfaceaccess, 1
	.set isForMe.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set isARP.locnonotificationselect, 1
	.set isIPV4.locnonotificationselect, 1
	.set isIPV6.locnonotificationselect, 1
	.set isSNCN.locnonotificationselect, 1
	.set isBroadcast.locnonotificationselect, 1
	.set isForMe.locnonotificationselect, 1
	.globpassesref usage.anon.0, ETHERTYPE_SNCN,"../src/mac_filters.xc:29: error: call to `isEthertype' in `isSNCN' makes alias of global 'ETHERTYPE_SNCN'"
	.globpassesref usage.anon.0, ETHERTYPE_IPV6,"../src/mac_filters.xc:24: error: call to `isEthertype' in `isIPV6' makes alias of global 'ETHERTYPE_IPV6'"
	.globpassesref usage.anon.0, ETHERTYPE_IPV4,"../src/mac_filters.xc:20: error: call to `isEthertype' in `isIPV4' makes alias of global 'ETHERTYPE_IPV4'"
	.globpassesref usage.anon.0, ETHERTYPE_ARP,"../src/mac_filters.xc:16: error: call to `isEthertype' in `isARP' makes alias of global 'ETHERTYPE_ARP'"


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/app_ethernet_motorcontrol/.build_lite/../src/mac_filters.xc"
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
	.cc_top isBroadcast.function
	.globl	isBroadcast
	.align	4
	.type	isBroadcast,@function
isBroadcast:
.Ltmp3:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 33 0
.Lxtalabel0:
	entsp 2
.Ltmp4:
	.cfi_def_cfa_offset 8
.Ltmp5:
	.cfi_offset 15, 0
	.loc	1 32 0 prologue_end
.Ltmp6:
	stw r4, sp[1]
.Ltmp7:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp8:
	.cfi_offset 5, -8
	mov r2, r0
.Ltmp9:
	.loc	1 35 0
	ecallf r1
	ldc r0, 0
	ld8u r11, r2[r0]
	mkmsk r3, 8
	eq r11, r11, r3
	bf r11, .LBB0_7
.Lxtalabel1:
	mkmsk r0, 1
	lsu r11, r0, r1
	ecallf r11
	ld8u r11, r2[r0]
	eq r11, r11, r3
	bf r11, .LBB0_6
.Lxtalabel2:
	mkmsk r11, 2
	lsu r4, r1, r11
	ecallt r4
	ldc r4, 2
	ld8u r4, r2[r4]
	eq r4, r4, r3
	bf r4, .LBB0_6
.Lxtalabel3:
	ldc r4, 4
	lsu r5, r1, r4
	ecallt r5
	ld8u r11, r2[r11]
	eq r11, r11, r3
	bf r11, .LBB0_6
.Lxtalabel4:
	ldc r11, 5
	lsu r5, r1, r11
	ecallt r5
	ld8u r4, r2[r4]
	eq r4, r4, r3
	bf r4, .LBB0_6
.Lxtalabel5:
	ldc r4, 6
	lsu r1, r1, r4
	ecallt r1
.Ltmp10:
	ld8u r1, r2[r11]
	eq r1, r1, r3
	bt r1, .LBB0_7
.Ltmp11:
.LBB0_6:
	ldc r0, 0
.LBB0_7:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp12:
	.size	isBroadcast, .Ltmp12-isBroadcast
.Lfunc_end0:
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom isBroadcast.function
	.set	isBroadcast.nstackwords,2
	.globl	isBroadcast.nstackwords
	.set	isBroadcast.maxcores,1
	.globl	isBroadcast.maxcores
	.set	isBroadcast.maxtimers,0
	.globl	isBroadcast.maxtimers
	.set	isBroadcast.maxchanends,0
	.globl	isBroadcast.maxchanends
	.cc_top isForMe.function
	.globl	isForMe
	.align	4
	.type	isForMe,@function
isForMe:
.Ltmp18:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 43 0
.Lxtalabel6:
	entsp 3
.Ltmp19:
	.cfi_def_cfa_offset 12
.Ltmp20:
	.cfi_offset 15, 0
	.loc	1 43 0 prologue_end
.Ltmp21:
	stw r4, sp[2]
.Ltmp22:
	.cfi_offset 4, -4
	stw r5, sp[1]
.Ltmp23:
	.cfi_offset 5, -8
	stw r6, sp[0]
.Ltmp24:
	.cfi_offset 6, -12
	ldc r4, 0
	ldc r5, 6
.LBB1_1:
.Lxtalabel7:
	.loc	1 46 0
.Ltmp25:
	lsu r11, r4, r2
	ecallf r11
	lsu r11, r4, r3
	ecallf r11
	ld8u r11, r1[r4]
	ld8u r6, r0[r4]
	eq r11, r6, r11
	bf r11, .LBB1_2
.Lxtalabel8:
.Ltmp26:
	.loc	1 45 0
	add r4, r4, 1
	lss r6, r4, r5
.Lxta.loop_labels0:
	# LOOPMARKER 0
	mkmsk r11, 1
	bt r6, .LBB1_1
.Ltmp27:
.LBB1_4:
	mov r0, r11
	ldw r6, sp[0]
	ldw r5, sp[1]
	ldw r4, sp[2]
	retsp 3
.LBB1_2:
	ldc r11, 0
	bu .LBB1_4
.Ltmp28:
	.size	isForMe, .Ltmp28-isForMe
.Lfunc_end1:
.Ltmp29:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom isForMe.function
	.set	isForMe.nstackwords,3
	.globl	isForMe.nstackwords
	.set	isForMe.maxcores,1
	.globl	isForMe.maxcores
	.set	isForMe.maxtimers,0
	.globl	isForMe.maxtimers
	.set	isForMe.maxchanends,0
	.globl	isForMe.maxchanends
	.cc_top isARP.function
	.globl	isARP
	.align	4
	.type	isARP,@function
isARP:
.Ltmp33:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 15 0
.Lxtalabel9:
	entsp 2
.Ltmp34:
	.cfi_def_cfa_offset 8
.Ltmp35:
	.cfi_offset 15, 0
	.loc	1 15 0 prologue_end
.Ltmp36:
	stw r4, sp[1]
.Ltmp37:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp38:
	.cfi_offset 5, -8
	mov r2, r0
.Ltmp39:
	ldc r3, 13
	.loc	1 12 0
.Ltmp40:
	lsu r0, r1, r3
	ecallt r0
	ldc r0, 0
	ldaw r11, dp[ETHERTYPE_ARP]
	ld16s r11, r11[r0]
	ldc r4, 12
	ld8u r4, r2[r4]
	mov r5, r11
	zext r5, 8
	eq r4, r4, r5
	bf r4, .LBB2_3
	lsu r1, r3, r1
	ecallf r1
.Ltmp41:
	ldc r1, 65280
	and r1, r11, r1
	shr r1, r1, 8
	ld8u r2, r2[r3]
.Ltmp42:
	eq r1, r2, r1
	bf r1, .LBB2_3
.Ltmp43:
	mkmsk r0, 1
.LBB2_3:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp44:
	.size	isARP, .Ltmp44-isARP
.Lfunc_end2:
.Ltmp45:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom isARP.function
	.set	isARP.nstackwords,2
	.globl	isARP.nstackwords
	.set	isARP.maxcores,1
	.globl	isARP.maxcores
	.set	isARP.maxtimers,0
	.globl	isARP.maxtimers
	.set	isARP.maxchanends,0
	.globl	isARP.maxchanends
	.cc_top isIPV4.function
	.globl	isIPV4
	.align	4
	.type	isIPV4,@function
isIPV4:
.Ltmp49:
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 19 0
.Lxtalabel10:
	entsp 2
.Ltmp50:
	.cfi_def_cfa_offset 8
.Ltmp51:
	.cfi_offset 15, 0
	.loc	1 19 0 prologue_end
.Ltmp52:
	stw r4, sp[1]
.Ltmp53:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp54:
	.cfi_offset 5, -8
	mov r2, r0
.Ltmp55:
	ldc r3, 13
	.loc	1 12 0
.Ltmp56:
	lsu r0, r1, r3
	ecallt r0
	ldc r0, 0
	ldaw r11, dp[ETHERTYPE_IPV4]
	ld16s r11, r11[r0]
	ldc r4, 12
	ld8u r4, r2[r4]
	mov r5, r11
	zext r5, 8
	eq r4, r4, r5
	bf r4, .LBB3_3
	lsu r1, r3, r1
	ecallf r1
.Ltmp57:
	ldc r1, 65280
	and r1, r11, r1
	shr r1, r1, 8
	ld8u r2, r2[r3]
.Ltmp58:
	eq r1, r2, r1
	bf r1, .LBB3_3
.Ltmp59:
	mkmsk r0, 1
.LBB3_3:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp60:
	.size	isIPV4, .Ltmp60-isIPV4
.Lfunc_end3:
.Ltmp61:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom isIPV4.function
	.set	isIPV4.nstackwords,2
	.globl	isIPV4.nstackwords
	.set	isIPV4.maxcores,1
	.globl	isIPV4.maxcores
	.set	isIPV4.maxtimers,0
	.globl	isIPV4.maxtimers
	.set	isIPV4.maxchanends,0
	.globl	isIPV4.maxchanends
	.cc_top isIPV6.function
	.globl	isIPV6
	.align	4
	.type	isIPV6,@function
isIPV6:
.Ltmp65:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 23 0
.Lxtalabel11:
	entsp 2
.Ltmp66:
	.cfi_def_cfa_offset 8
.Ltmp67:
	.cfi_offset 15, 0
	.loc	1 23 0 prologue_end
.Ltmp68:
	stw r4, sp[1]
.Ltmp69:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp70:
	.cfi_offset 5, -8
	mov r2, r0
.Ltmp71:
	ldc r3, 13
	.loc	1 12 0
.Ltmp72:
	lsu r0, r1, r3
	ecallt r0
	ldc r0, 0
	ldaw r11, dp[ETHERTYPE_IPV6]
	ld16s r11, r11[r0]
	ldc r4, 12
	ld8u r4, r2[r4]
	mov r5, r11
	zext r5, 8
	eq r4, r4, r5
	bf r4, .LBB4_3
	lsu r1, r3, r1
	ecallf r1
.Ltmp73:
	ldc r1, 65280
	and r1, r11, r1
	shr r1, r1, 8
	ld8u r2, r2[r3]
.Ltmp74:
	eq r1, r2, r1
	bf r1, .LBB4_3
.Ltmp75:
	mkmsk r0, 1
.LBB4_3:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp76:
	.size	isIPV6, .Ltmp76-isIPV6
.Lfunc_end4:
.Ltmp77:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom isIPV6.function
	.set	isIPV6.nstackwords,2
	.globl	isIPV6.nstackwords
	.set	isIPV6.maxcores,1
	.globl	isIPV6.maxcores
	.set	isIPV6.maxtimers,0
	.globl	isIPV6.maxtimers
	.set	isIPV6.maxchanends,0
	.globl	isIPV6.maxchanends
	.cc_top isSNCN.function
	.globl	isSNCN
	.align	4
	.type	isSNCN,@function
isSNCN:
.Ltmp81:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 28 0
.Lxtalabel12:
	entsp 2
.Ltmp82:
	.cfi_def_cfa_offset 8
.Ltmp83:
	.cfi_offset 15, 0
	.loc	1 27 0 prologue_end
.Ltmp84:
	stw r4, sp[1]
.Ltmp85:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp86:
	.cfi_offset 5, -8
	mov r2, r0
.Ltmp87:
	ldc r3, 13
	.loc	1 12 0
.Ltmp88:
	lsu r0, r1, r3
	ecallt r0
	ldc r0, 0
	ldaw r11, dp[ETHERTYPE_SNCN]
	ld16s r11, r11[r0]
	ldc r4, 12
	ld8u r4, r2[r4]
	mov r5, r11
	zext r5, 8
	eq r4, r4, r5
	bf r4, .LBB5_3
	lsu r1, r3, r1
	ecallf r1
.Ltmp89:
	ldc r1, 65280
	and r1, r11, r1
	shr r1, r1, 8
	ld8u r2, r2[r3]
.Ltmp90:
	eq r1, r2, r1
	bf r1, .LBB5_3
.Ltmp91:
	mkmsk r0, 1
.LBB5_3:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp92:
	.size	isSNCN, .Ltmp92-isSNCN
.Lfunc_end5:
.Ltmp93:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom isSNCN.function
	.set	isSNCN.nstackwords,2
	.globl	isSNCN.nstackwords
	.set	isSNCN.maxcores,1
	.globl	isSNCN.maxcores
	.set	isSNCN.maxtimers,0
	.globl	isSNCN.maxtimers
	.set	isSNCN.maxchanends,0
	.globl	isSNCN.maxchanends
	.section	.dp.data,"awd",@progbits
	.cc_top ETHERTYPE_IPV4.data
	.globl	ETHERTYPE_IPV4.globound
	.set	ETHERTYPE_IPV4.globound,2
	.globl	ETHERTYPE_IPV4
	.align	4
	.type	ETHERTYPE_IPV4,@object
	.size ETHERTYPE_IPV4,2
ETHERTYPE_IPV4:
.asciiz "\b"
	.space	2
	.cc_bottom ETHERTYPE_IPV4.data
	.cc_top ETHERTYPE_IPV6.data
	.globl	ETHERTYPE_IPV6.globound
	.set	ETHERTYPE_IPV6.globound,2
	.globl	ETHERTYPE_IPV6
	.align	4
	.type	ETHERTYPE_IPV6,@object
	.size ETHERTYPE_IPV6,2
ETHERTYPE_IPV6:
	.ascii	 "\206\335"
	.space	2
	.cc_bottom ETHERTYPE_IPV6.data
	.cc_top ETHERTYPE_ARP.data
	.globl	ETHERTYPE_ARP.globound
	.set	ETHERTYPE_ARP.globound,2
	.globl	ETHERTYPE_ARP
	.align	4
	.type	ETHERTYPE_ARP,@object
	.size ETHERTYPE_ARP,2
ETHERTYPE_ARP:
	.ascii	 "\b\006"
	.space	2
	.cc_bottom ETHERTYPE_ARP.data
	.cc_top ETHERTYPE_PROFINET.data
	.globl	ETHERTYPE_PROFINET.globound
	.set	ETHERTYPE_PROFINET.globound,2
	.globl	ETHERTYPE_PROFINET
	.align	4
	.type	ETHERTYPE_PROFINET,@object
	.size ETHERTYPE_PROFINET,2
ETHERTYPE_PROFINET:
	.ascii	 "\210\222"
	.space	2
	.cc_bottom ETHERTYPE_PROFINET.data
	.cc_top ETHERTYPE_SNCN.data
	.globl	ETHERTYPE_SNCN.globound
	.set	ETHERTYPE_SNCN.globound,2
	.globl	ETHERTYPE_SNCN
	.align	4
	.type	ETHERTYPE_SNCN,@object
	.size ETHERTYPE_SNCN,2
ETHERTYPE_SNCN:
	.ascii	 "\b\001"
	.space	2
	.cc_bottom ETHERTYPE_SNCN.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	972
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "../src/mac_filters.xc"
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
	.long	216
	.byte	5
	.long	233
	.byte	1
	.byte	0
	.byte	6
	.ascii	 "ETHERTYPE_IPV4"
	.byte	0
	.ascii	 "ETHERTYPE_IPV4"
	.byte	0
	.long	236
	.byte	1
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.long	ETHERTYPE_IPV4
	.byte	6
	.ascii	 "ETHERTYPE_IPV6"
	.byte	0
	.ascii	 "ETHERTYPE_IPV6"
	.byte	0
	.long	236
	.byte	1
	.byte	1
	.byte	4
	.byte	5
	.byte	3
	.long	ETHERTYPE_IPV6
	.byte	6
	.ascii	 "ETHERTYPE_ARP"
	.byte	0
	.ascii	 "ETHERTYPE_ARP"
	.byte	0
	.long	236
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	3
	.long	ETHERTYPE_ARP
	.byte	6
	.ascii	 "ETHERTYPE_PROFINET"
	.byte	0
	.ascii	 "ETHERTYPE_PROFINET"
	.byte	0
	.long	236
	.byte	1
	.byte	1
	.byte	6
	.byte	5
	.byte	3
	.long	ETHERTYPE_PROFINET
	.byte	6
	.ascii	 "ETHERTYPE_SNCN"
	.byte	0
	.ascii	 "ETHERTYPE_SNCN"
	.byte	0
	.long	236
	.byte	1
	.byte	1
	.byte	8
	.byte	5
	.byte	3
	.long	ETHERTYPE_SNCN
	.byte	7
	.ascii	 "isEthertype"
	.byte	0
	.ascii	 "isEthertype"
	.byte	0
	.byte	1
	.byte	10
	.long	544
	.byte	1
	.byte	8
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	10
	.long	948
	.byte	8
	.ascii	 "type"
	.byte	0
	.byte	1
	.byte	10
	.long	948
	.byte	9
	.byte	9
	.byte	10
	.byte	105
	.byte	0
	.byte	1
	.byte	11
	.long	953
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	11
	.ascii	 "isARP"
	.byte	0
	.ascii	 "isARP"
	.byte	0
	.byte	1
	.byte	15
	.long	544
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	15
	.long	948
	.long	.Ldebug_loc10+0
	.byte	0
	.byte	11
	.ascii	 "isIPV4"
	.byte	0
	.ascii	 "isIPV4"
	.byte	0
	.byte	1
	.byte	19
	.long	544
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	19
	.long	948
	.long	.Ldebug_loc14+0
	.byte	0
	.byte	11
	.ascii	 "isIPV6"
	.byte	0
	.ascii	 "isIPV6"
	.byte	0
	.byte	1
	.byte	23
	.long	544
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	23
	.long	948
	.long	.Ldebug_loc18+0
	.byte	0
	.byte	11
	.ascii	 "isSNCN"
	.byte	0
	.ascii	 "isSNCN"
	.byte	0
	.byte	1
	.byte	28
	.long	544
	.byte	1
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	27
	.long	948
	.long	.Ldebug_loc22+0
	.byte	0
	.byte	11
	.ascii	 "isBroadcast"
	.byte	0
	.ascii	 "isBroadcast"
	.byte	0
	.byte	1
	.byte	33
	.long	544
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	32
	.long	948
	.long	.Ldebug_loc0+0
	.byte	13
	.long	.Ltmp9
	.long	.Ltmp11
	.byte	13
	.long	.Ltmp9
	.long	.Ltmp11
	.byte	10
	.byte	105
	.byte	0
	.byte	1
	.byte	34
	.long	953
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.ascii	 "isForMe"
	.byte	0
	.ascii	 "isForMe"
	.byte	0
	.byte	1
	.byte	43
	.long	544
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	43
	.long	948
	.long	.Ldebug_loc4+0
	.byte	12
	.ascii	 "mac"
	.byte	0
	.byte	1
	.byte	43
	.long	970
	.long	.Ldebug_loc7+0
	.byte	13
	.long	.Ltmp25
	.long	.Ltmp27
	.byte	13
	.long	.Ltmp25
	.long	.Ltmp27
	.byte	10
	.byte	105
	.byte	0
	.byte	1
	.byte	45
	.long	953
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.long	216
	.byte	15
	.long	943
	.byte	2
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	16
	.long	216
	.byte	14
	.long	960
	.byte	15
	.long	965
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
	.ascii	 "\207@"
	.byte	8
	.byte	73
	.byte	19
	.byte	63
	.byte	12
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
	.byte	73
	.byte	19
	.byte	63
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
	.byte	0
	.byte	0
	.byte	9
	.byte	11
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
	.byte	13
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	14
	.byte	1
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	15
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	16
	.byte	38
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
	.long	378
.asciiz "ETHERTYPE_PROFINET"
	.long	658
.asciiz "isIPV6"
	.long	608
.asciiz "isIPV4"
	.long	708
.asciiz "isSNCN"
	.long	758
.asciiz "isBroadcast"
	.long	474
.asciiz "isEthertype"
	.long	847
.asciiz "isForMe"
	.long	430
.asciiz "ETHERTYPE_SNCN"
	.long	248
.asciiz "ETHERTYPE_IPV4"
	.long	336
.asciiz "ETHERTYPE_ARP"
	.long	292
.asciiz "ETHERTYPE_IPV6"
	.long	560
.asciiz "isARP"
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
.Lset4 = .Ltmp95-.Ltmp94
	.short	.Lset4
.Ltmp94:
	.byte	80
.Ltmp95:
	.long	.Ltmp9
	.long	.Ltmp11
.Lset5 = .Ltmp97-.Ltmp96
	.short	.Lset5
.Ltmp96:
	.byte	82
.Ltmp97:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin1
	.long	.Ltmp27
.Lset6 = .Ltmp99-.Ltmp98
	.short	.Lset6
.Ltmp98:
	.byte	80
.Ltmp99:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1
	.long	.Ltmp27
.Lset7 = .Ltmp101-.Ltmp100
	.short	.Lset7
.Ltmp100:
	.byte	81
.Ltmp101:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin2
	.long	.Ltmp39
.Lset8 = .Ltmp103-.Ltmp102
	.short	.Lset8
.Ltmp102:
	.byte	80
.Ltmp103:
	.long	.Ltmp39
	.long	.Ltmp42
.Lset9 = .Ltmp105-.Ltmp104
	.short	.Lset9
.Ltmp104:
	.byte	82
.Ltmp105:
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin3
	.long	.Ltmp55
.Lset10 = .Ltmp107-.Ltmp106
	.short	.Lset10
.Ltmp106:
	.byte	80
.Ltmp107:
	.long	.Ltmp55
	.long	.Ltmp58
.Lset11 = .Ltmp109-.Ltmp108
	.short	.Lset11
.Ltmp108:
	.byte	82
.Ltmp109:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin4
	.long	.Ltmp71
.Lset12 = .Ltmp111-.Ltmp110
	.short	.Lset12
.Ltmp110:
	.byte	80
.Ltmp111:
	.long	.Ltmp71
	.long	.Ltmp74
.Lset13 = .Ltmp113-.Ltmp112
	.short	.Lset13
.Ltmp112:
	.byte	82
.Ltmp113:
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Lfunc_begin5
	.long	.Ltmp87
.Lset14 = .Ltmp115-.Ltmp114
	.short	.Lset14
.Ltmp114:
	.byte	80
.Ltmp115:
	.long	.Ltmp87
	.long	.Ltmp90
.Lset15 = .Ltmp117-.Ltmp116
	.short	.Lset15
.Ltmp116:
	.byte	82
.Ltmp117:
	.long	0
	.long	0
.Ldebug_loc26:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring isBroadcast, "f{ui}(&(a(:uc)))"
	.typestring isForMe, "f{ui}(&(a(:uc)),&(a(:c:uc)))"
	.typestring isARP, "f{ui}(&(a(:uc)))"
	.typestring isIPV4, "f{ui}(&(a(:uc)))"
	.typestring isIPV6, "f{ui}(&(a(:uc)))"
	.typestring isSNCN, "f{ui}(&(a(:uc)))"
	.typestring ETHERTYPE_IPV4, "a(2:uc)"
	.typestring ETHERTYPE_IPV6, "a(2:uc)"
	.typestring ETHERTYPE_ARP, "a(2:uc)"
	.typestring ETHERTYPE_PROFINET, "a(2:uc)"
	.typestring ETHERTYPE_SNCN, "a(2:uc)"
	.section	.xtalabeltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/app_ethernet_motorcontrol/.build_lite"
	.byte	0
.cc_top cc_0,.Lxtalabel9
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	16
	.long	17
	.long	.Lxtalabel9
.cc_bottom cc_0
.cc_top cc_1,.Lxtalabel10
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	20
	.long	21
	.long	.Lxtalabel10
.cc_bottom cc_1
.cc_top cc_2,.Lxtalabel11
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	24
	.long	25
	.long	.Lxtalabel11
.cc_bottom cc_2
.cc_top cc_3,.Lxtalabel12
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	28
	.long	30
	.long	.Lxtalabel12
.cc_bottom cc_3
.cc_top cc_4,.Lxtalabel0
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	33
	.long	34
	.long	.Lxtalabel0
.cc_bottom cc_4
.cc_top cc_5,.Lxtalabel0
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel0
.cc_bottom cc_5
.cc_top cc_6,.Lxtalabel1
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel1
.cc_bottom cc_6
.cc_top cc_7,.Lxtalabel2
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel2
.cc_bottom cc_7
.cc_top cc_8,.Lxtalabel3
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel3
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel4
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel4
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel5
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	35
	.long	35
	.long	.Lxtalabel5
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel6
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	44
	.long	45
	.long	.Lxtalabel6
.cc_bottom cc_11
.cc_top cc_12,.Lxtalabel7
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	46
	.long	46
	.long	.Lxtalabel7
.cc_bottom cc_12
.cc_top cc_13,.Lxtalabel8
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	49
	.long	49
	.long	.Lxtalabel8
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel8
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	50
	.long	52
	.long	.Lxtalabel8
.cc_bottom cc_14
.Lentries_end1:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_motorcontrol/app_ethernet_motorcontrol/.build_lite"
	.byte	0
.cc_top cc_15,.Lxta.loop_labels0
	.ascii	 "../src/mac_filters.xc"
	.byte	0
	.long	46
	.long	49
	.long	.Lxta.loop_labels0
.cc_bottom cc_15
.Lentries_end3:
