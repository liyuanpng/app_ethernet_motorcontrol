	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set mii_single_server.savedstate,11
	.globl mii_single_server.savedstate
	.set ethernet_server_p2_lite.savedstate,12
	.globl ethernet_server_p2_lite.savedstate
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.set usage.anon.4,0
	.globwrite usage.anon.3,usage.anon.4,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc:62: error: previously used here"
	.call ethernet_server_p2_lite,usage.anon.3
	.call ethernet_server_p2_lite,mii_port_init
	.call ethernet_server_p2_lite,mii_driver
	.call ethernet_server_p2_lite,init_macAddress
	.call mii_single_server,usage.anon.3
	.call mii_single_server,smi_init
	.call mii_single_server,mii_initialise
	.call mii_single_server,mii_driver
	.call mii_single_server,eth_phy_config
	.call usage.anon.3,smi_check_link_state
	.call usage.anon.3,mii_restart_buffer
	.call usage.anon.3,mii_out_packet_done
	.call usage.anon.3,mii_out_packet
	.call usage.anon.3,mii_out_init
	.call usage.anon.3,mii_get_in_buffer
	.call usage.anon.3,mii_free_in_buffer
	.call usage.anon.3,mii_buffer_init
	.call usage.anon.3,mac_set_macaddr_lite
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.par mii_driver,usage.anon.3,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc:144: error: use of `%s' violates parallel usage rules"
	.par mii_driver,usage.anon.3,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc:126: error: use of `%s' violates parallel usage rules"
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set init_macAddress.locnochandec, 1
	.set usage.anon.3.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set init_macAddress.locnoglobalaccess, 1
	.set usage.anon.3.locnoglobalaccess, 1
	.set mii_single_server.locnoglobalaccess, 1
	.set ethernet_server_p2_lite.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set init_macAddress.locnointerfaceaccess, 1
	.set usage.anon.3.locnointerfaceaccess, 1
	.set mii_single_server.locnointerfaceaccess, 1
	.set ethernet_server_p2_lite.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set init_macAddress.locnonotificationselect, 1
	.set usage.anon.3.locnonotificationselect, 1
	.set mii_single_server.locnonotificationselect, 1
	.set ethernet_server_p2_lite.locnonotificationselect, 1
	.overlay_subgraph_conflict mii_single_server.task.mii_driver.0, mii_single_server.task.the_server.1
	.overlay_subgraph_conflict ethernet_server_p2_lite.task.mii_driver.0, ethernet_server_p2_lite.task.the_server.1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
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
	.cc_top init_macAddress.function
	.globl	init_macAddress
	.align	4
	.type	init_macAddress,@function
init_macAddress:
.Ltmp0:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 20 0
.Lxtalabel0:
	.loc	1 22 0 prologue_end
	ldc r2, 0
	ld8u r3, r1[r2]
	st8 r3, r0[r2]
	mkmsk r2, 1
	.loc	1 23 0
	ld8u r3, r1[r2]
	st8 r3, r0[r2]
	ldc r2, 2
	.loc	1 24 0
	ld8u r3, r1[r2]
	st8 r3, r0[r2]
	mkmsk r2, 2
	.loc	1 25 0
	ld8u r3, r1[r2]
	st8 r3, r0[r2]
	ldc r2, 4
	.loc	1 26 0
	ld8u r3, r1[r2]
	st8 r3, r0[r2]
	ldc r2, 5
	.loc	1 27 0
	ld8u r1, r1[r2]
.Ltmp1:
	st8 r1, r0[r2]
	retsp 0
.Ltmp2:
.Ltmp3:
	.size	init_macAddress, .Ltmp3-init_macAddress
.Lfunc_end0:
.Ltmp4:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom init_macAddress.function
	.set	init_macAddress.nstackwords,0
	.globl	init_macAddress.nstackwords
	.set	init_macAddress.maxcores,1
	.globl	init_macAddress.maxcores
	.set	init_macAddress.maxtimers,0
	.globl	init_macAddress.maxtimers
	.set	init_macAddress.maxchanends,0
	.globl	init_macAddress.maxchanends
	.cc_top the_server.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI1_0.data
	.align	4
.LCPI1_0:
	.long	10000000
	.cc_bottom .LCPI1_0.data
	.text
	.align	4
	.type	the_server,@function
the_server:
.Ltmp13:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 34 0
.Lxtalabel1:
	entsp 6968
.Ltmp14:
	.cfi_def_cfa_offset 27872
.Ltmp15:
	.cfi_offset 15, 0
	.loc	1 32 0 prologue_end
.Ltmp16:
	stw r4, sp[6967]
.Ltmp17:
	.cfi_offset 4, -4
	stw r5, sp[6966]
.Ltmp18:
	.cfi_offset 5, -8
	stw r6, sp[6965]
.Ltmp19:
	.cfi_offset 6, -12
	stw r7, sp[6964]
.Ltmp20:
	.cfi_offset 7, -16
	stw r8, sp[6963]
.Ltmp21:
	.cfi_offset 8, -20
	stw r9, sp[6962]
.Ltmp22:
	.cfi_offset 9, -24
	stw r10, sp[6961]
.Ltmp23:
	.cfi_offset 10, -28
	stw r3, sp[10]
.Ltmp24:
	mov r5, r2
.Ltmp25:
	stw r5, sp[9]
	mov r6, r1
.Ltmp26:
	mov r7, r0
.Ltmp27:
	ldw r0, sp[6971]
	ldc r1, 6
	.loc	1 43 0
.Ltmp28:
.Lxta.call_labels0:
	bl mac_set_macaddr_lite
	ldc r0, 6400
	.loc	1 45 0
	stw r0, sp[2]
	stw r0, sp[1]
	ldaw r9, sp[12]
	ldaw r3, sp[561]
	mov r0, r9
	mov r1, r7
.Ltmp29:
	mov r2, r5
.Lxta.call_labels1:
	bl mii_buffer_init
.Ltmp30:
	.loc	1 48 0
	ldaw r0, dp[__timers]
	get r11, id
	ldw r4, r0[r11]
	stw r4, sp[8]
	.loc	1 46 0
	mov r0, r6
	mov r8, r6
.Ltmp31:
.Lxta.call_labels2:
	bl mii_out_init
	.loc	1 48 0
	setc res[r4], 1
	.loc	1 48 0
.Lxta.endpoint_labels0:
	in r0, res[r4]
.Ltmp32:
	stw r0, sp[11]
	ldap r11, .Ltmp33
	.loc	1 51 0
	setv res[r5], r11
.Ltmp34:
	ldw r5, sp[6970]
	ldap r11, .Ltmp35
	setv res[r5], r11
	ldc r0, 65
	.loc	1 69 0
	add r0, r9, r0
	stw r0, sp[5]
	mkmsk r0, 1
	stw r0, sp[6]
	ldw r9, sp[6969]
	ldc r4, 0
	bu .LBB1_1
.Ltmp35:
.LBB1_17:
.Lxtalabel2:
	mov r6, r4
	.loc	1 90 0
	chkct res[r5], 1
	outct res[r5], 1
	.loc	1 90 0
.Lxta.endpoint_labels1:
	in r3, res[r5]
.Ltmp36:
	.loc	1 91 0
	add r0, r3, 3
	ashr r0, r0, 2
	ldc r1, 0
	lss r2, r1, r0
.Ltmp37:
	.loc	1 90 0
	chkct res[r5], 1
	outct res[r5], 1
	ldc r11, 399
	.loc	1 91 0
.Ltmp38:
	bf r2, .LBB1_13
.LBB1_18:
.Lxtalabel3:
	.loc	1 92 0
	lsu r2, r11, r1
	chkct res[r5], 1
	outct res[r5], 1
	ecallt r2
	.loc	1 92 0
.Lxta.endpoint_labels2:
	in r2, res[r5]
	ldaw r4, sp[161]
	.loc	1 92 0
	stw r2, r4[r1]
	.loc	1 91 0
	add r1, r1, 1
	lss r2, r1, r0
	.loc	1 92 0
	chkct res[r5], 1
	outct res[r5], 1
.Lxta.loop_labels0:
	# LOOPMARKER 0
	.loc	1 91 0
	bt r2, .LBB1_18
.LBB1_13:
.Lxtalabel4:
.Ltmp39:
	ldc r0, 400
	.loc	1 95 0
	stw r0, sp[1]
	mov r0, r8
	ldaw r1, sp[161]
	mov r4, r6
	mov r2, r4
.Lxta.call_labels3:
	bl mii_out_packet
.Ltmp40:
	.loc	1 96 0
	mov r0, r8
.Lxta.call_labels4:
	bl mii_out_packet_done
.Ltmp41:
.LBB1_14:
	.loc	1 101 0
	ldw r0, sp[7]
	bf r0, .LBB1_1
.LBB1_15:
.Lxtalabel5:
	ldaw r0, sp[12]
	.loc	1 102 0
.Lxta.call_labels5:
	bl mii_get_in_buffer
	mov r7, r1
	ldc r10, 0
	mkmsk r1, 1
	.loc	1 103 0
	stw r1, sp[6]
	bf r0, .LBB1_1
.Lxtalabel6:
	.loc	1 105 0
.Lxta.endpoint_labels3:
	out res[r9], r7
	ldc r1, 0
	stw r1, sp[6]
	mov r10, r0
.LBB1_1:
.Lxtalabel7:
	.loc	1 51 0
	clre
	ldw r0, sp[11]
	ldw r1, sp[8]
	setd res[r1], r0
	setc res[r1], 9
	ldap r11, .Ltmp42
	setv res[r1], r11
	eeu res[r1]
	ldw r0, sp[9]
	eeu res[r0]
	ldw r0, sp[6]
	zext r0, 1
	stw r0, sp[7]
	bt r0, .LBB1_3
	ldap r11, .Ltmp43
	setv res[r9], r11
	eeu res[r9]
.LBB1_3:
	eeu res[r5]
	.loc	1 97 0
.Ltmp44:
	
	.xtabranch .LBB1_17, .LBB1_5, .LBB1_11, .LBB1_4
waiteu
.Ltmp45:
.Ltmp33:
.LBB1_4:
.Lxtalabel8:
	.loc	1 69 0
	ldw r0, sp[9]
.Lxta.endpoint_labels4:
	int r0, res[r0]
	.loc	1 69 0
	ldw r1, sp[5]
	st8 r0, r1[r4]
	bu .LBB1_14
.Ltmp42:
.LBB1_5:
.Lxtalabel9:
	.loc	1 52 0
.Ltmp46:
	ldw r0, sp[8]
.Lxta.endpoint_labels5:
	in r0, res[r0]
.Ltmp47:
	.loc	1 53 0
	ldw r0, sp[10]
	bt r0, .LBB1_7
.LBB1_6:
.Lxtalabel10:
	ldw r0, cp[.LCPI1_0]
	.loc	1 65 0
	ldw r1, sp[11]
	add r1, r1, r0
.Ltmp48:
	.loc	1 66 0
	stw r1, sp[11]
	bu .LBB1_14
.LBB1_7:
.Lxtalabel11:
	.loc	1 56 0
.Ltmp49:
	ldw r0, sp[10]
.Lxta.call_labels6:
	bl smi_check_link_state
.Ltmp50:
	.loc	1 57 0
	ldw r1, dp[phy_status.static]
	eq r1, r0, r1
	bt r1, .LBB1_6
.Lxtalabel12:
.Ltmp51:
	mkmsk r1, 32
	.loc	1 58 0
.Lxta.endpoint_labels6:
	out res[r9], r1
	.loc	1 59 0
.Ltmp52:
	chkct res[r9], 1
	outct res[r9], 1
	.loc	1 59 0
.Lxta.endpoint_labels7:
	in r1, res[r9]
.Ltmp53:
	.loc	1 59 0
	chkct res[r9], 1
	outct res[r9], 1
	.loc	1 60 0
	outct res[r9], 1
	chkct res[r9], 1
	.loc	1 60 0
.Lxta.endpoint_labels8:
	out res[r9], r0
	.loc	1 60 0
	outct res[r9], 1
	chkct res[r9], 1
	.loc	1 61 0
	outct res[r9], 1
	chkct res[r9], 1
	.loc	1 61 0
.Lxta.endpoint_labels9:
	out res[r9], r4
	.loc	1 61 0
	outct res[r9], 1
	chkct res[r9], 1
	.loc	1 62 0
	stw r0, dp[phy_status.static]
	bu .LBB1_6
.Ltmp54:
.LBB1_9:
.Lxtalabel13:
	ldaw r7, sp[12]
	.loc	1 79 0
.Ltmp55:
	mov r0, r7
	mov r1, r10
.Lxta.call_labels7:
	bl mii_free_in_buffer
	.loc	1 80 0
	mov r0, r7
.Lxta.call_labels8:
	bl mii_restart_buffer
	.loc	1 81 0
	mov r0, r7
.Lxta.call_labels9:
	bl mii_get_in_buffer
	mov r10, r0
	mov r7, r1
	.loc	1 82 0
	bf r10, .LBB1_15
.Lxtalabel14:
	.loc	1 85 0
.Lxta.endpoint_labels10:
	out res[r9], r7
	bu .LBB1_14
.Ltmp43:
.LBB1_11:
.Lxtalabel15:
	.loc	1 74 0
	add r0, r7, 3
	ashr r0, r0, 2
	lss r2, r4, r0
.Ltmp56:
	.loc	1 73 0
	chkct res[r9], 1
	outct res[r9], 1
	.loc	1 73 0
.Lxta.endpoint_labels11:
	in r1, res[r9]
.Ltmp57:
	.loc	1 73 0
	chkct res[r9], 1
	outct res[r9], 1
	mov r1, r4
.Ltmp58:
	.loc	1 74 0
	bf r2, .LBB1_9
.LBB1_12:
.Lxtalabel16:
.Ltmp59:
	.loc	1 76 0
	#APP
	ldw r2, r10[r1]
	#NO_APP
.Ltmp60:
	.loc	1 77 0
	outct res[r9], 1
	chkct res[r9], 1
	.loc	1 77 0
.Lxta.endpoint_labels12:
	out res[r9], r2
.Ltmp61:
	.loc	1 74 0
	add r1, r1, 1
	eq r2, r1, r0
.Ltmp62:
	.loc	1 77 0
	outct res[r9], 1
	chkct res[r9], 1
.Lxta.loop_labels1:
	# LOOPMARKER 1
.Ltmp63:
	.loc	1 74 0
	bf r2, .LBB1_12
	bu .LBB1_9
.Ltmp64:
.Ltmp65:
	.size	the_server, .Ltmp65-the_server
.Lfunc_end1:
.Ltmp66:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom the_server.function
	.set	the_server.nstackwords,((mac_set_macaddr_lite.nstackwords $M mii_buffer_init.nstackwords $M mii_out_init.nstackwords $M mii_out_packet.nstackwords $M mii_out_packet_done.nstackwords $M smi_check_link_state.nstackwords $M mii_free_in_buffer.nstackwords $M mii_restart_buffer.nstackwords $M mii_get_in_buffer.nstackwords) + 6968)
	.set	the_server.maxcores,mac_set_macaddr_lite.maxcores $M mii_buffer_init.maxcores $M mii_free_in_buffer.maxcores $M mii_get_in_buffer.maxcores $M mii_out_init.maxcores $M mii_out_packet.maxcores $M mii_out_packet_done.maxcores $M mii_restart_buffer.maxcores $M smi_check_link_state.maxcores $M 1
	.set	the_server.maxtimers,mac_set_macaddr_lite.maxtimers $M mii_buffer_init.maxtimers $M mii_free_in_buffer.maxtimers $M mii_get_in_buffer.maxtimers $M mii_out_init.maxtimers $M mii_out_packet.maxtimers $M mii_out_packet_done.maxtimers $M mii_restart_buffer.maxtimers $M smi_check_link_state.maxtimers $M 0
	.set	the_server.maxchanends,mac_set_macaddr_lite.maxchanends $M mii_buffer_init.maxchanends $M mii_free_in_buffer.maxchanends $M mii_get_in_buffer.maxchanends $M mii_out_init.maxchanends $M mii_out_packet.maxchanends $M mii_out_packet_done.maxchanends $M mii_restart_buffer.maxchanends $M smi_check_link_state.maxchanends $M 0
	.cc_top mii_single_server.function
	.globl	mii_single_server
	.align	4
	.type	mii_single_server,@function
mii_single_server:
.Ltmp69:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 116 0
.Lxtalabel17:
	entsp 13
.Ltmp70:
	.cfi_def_cfa_offset 52
.Ltmp71:
	.cfi_offset 15, 0
	.loc	1 112 0 prologue_end
.Ltmp72:
	stw r4, sp[12]
.Ltmp73:
	.cfi_offset 4, -4
	mov r4, r1
	stw r4, sp[1]
	stw r2, sp[2]
	stw r3, sp[3]
	ldw r1, sp[14]
	stw r1, sp[4]
	ldw r1, sp[15]
	stw r1, sp[5]
	.loc	1 117 0
.Ltmp74:
	getr r3, 2
	getr r1, 2
	setd res[r3], r1
	setd res[r1], r3
	stw r3, sp[6]
	stw r1, sp[7]
	getr r3, 2
	getr r1, 2
	setd res[r3], r1
	setd res[r1], r3
	stw r3, sp[8]
	stw r1, sp[9]
	.loc	1 118 0
.Ltmp75:
	getr r3, 2
	getr r1, 2
	setd res[r3], r1
	setd res[r1], r3
	stw r3, sp[10]
	stw r1, sp[11]
	.loc	1 119 0
	mov r1, r2
.Lxta.call_labels10:
	bl mii_initialise
.Ltmp76:
	.loc	1 121 0
	bf r4, .LBB2_2
.Lxtalabel18:
	.loc	1 122 0
	mov r0, r4
.Lxta.call_labels11:
	bl smi_init
	mkmsk r0, 1
	.loc	1 123 0
	mov r1, r4
.Lxta.call_labels12:
	bl eth_phy_config
.LBB2_2:
.Lxtalabel19:
	ldaw r0, sp[1]
	.loc	1 123 0
	ldaw r1, dp[par.desc.1]
	bl __start_other_cores
.Ltmp77:
.Ltmp78:
	.size	mii_single_server, .Ltmp78-mii_single_server
.Lfunc_end2:
.Ltmp79:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom mii_single_server.function
	.set	mii_single_server.nstackwords,((mii_initialise.nstackwords $M (par.extra_stackwords + 1 + mii_single_server.task.mii_driver.0.nstackwords + 1 + mii_single_server.task.the_server.1.nstackwords) $M smi_init.nstackwords $M eth_phy_config.nstackwords) + 13)
	.globl	mii_single_server.nstackwords
	.set	mii_single_server.maxcores,(0 + mii_single_server.task.mii_driver.0.maxcores + mii_single_server.task.the_server.1.maxcores) $M eth_phy_config.maxcores $M mii_initialise.maxcores $M smi_init.maxcores $M 1
	.globl	mii_single_server.maxcores
	.set	mii_single_server.maxtimers,(1 + mii_single_server.task.mii_driver.0.maxtimers + mii_single_server.task.the_server.1.maxtimers) $M eth_phy_config.maxtimers $M mii_initialise.maxtimers $M smi_init.maxtimers $M 0
	.globl	mii_single_server.maxtimers
	.set	mii_single_server.maxchanends,(6 + (0 + mii_single_server.task.mii_driver.0.maxchanends + mii_single_server.task.the_server.1.maxchanends)) $M (6 + eth_phy_config.maxchanends) $M (6 + mii_initialise.maxchanends) $M (6 + smi_init.maxchanends) $M 6
	.globl	mii_single_server.maxchanends
	.cc_top mii_single_server.task.mii_driver.0.function
	.align	4
	.type	mii_single_server.task.mii_driver.0,@function
mii_single_server.task.mii_driver.0:
.Ltmp81:
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 127 0
	entsp 1
.Ltmp82:
	.cfi_def_cfa_offset 4
.Ltmp83:
	.cfi_offset 15, 0
	.loc	1 127 0 prologue_end
.Ltmp84:
	ldw r1, r0[9]
	#APP
	#NO_APP
	ldw r2, r0[7]
	ldw r1, r0[5]
	ldw r0, r0[1]
.Ltmp85:
	.loc	1 127 0
.Lxta.call_labels13:
	bl mii_driver
	retsp 1
.Ltmp86:
.Ltmp87:
	.size	mii_single_server.task.mii_driver.0, .Ltmp87-mii_single_server.task.mii_driver.0
.Lfunc_end3:
.Ltmp88:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom mii_single_server.task.mii_driver.0.function
	.set	mii_single_server.task.mii_driver.0.nstackwords,(mii_driver.nstackwords + 1)
	.set	mii_single_server.task.mii_driver.0.maxcores,mii_driver.maxcores $M 1
	.set	mii_single_server.task.mii_driver.0.maxtimers,mii_driver.maxtimers $M 0
	.set	mii_single_server.task.mii_driver.0.maxchanends,mii_driver.maxchanends $M 0
	.cc_top mii_single_server.task.the_server.1.function
	.align	4
	.type	mii_single_server.task.the_server.1,@function
mii_single_server.task.the_server.1:
.Ltmp92:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 128 0
	entsp 6
.Ltmp93:
	.cfi_def_cfa_offset 24
.Ltmp94:
	.cfi_offset 15, 0
	.loc	1 0 0 prologue_end
.Ltmp95:
	stw r4, sp[5]
.Ltmp96:
	.cfi_offset 4, -4
	stw r5, sp[4]
.Ltmp97:
	.cfi_offset 5, -8
	mov r11, r0
.Ltmp98:
	.loc	1 128 0
	ldw r3, r11[0]
	ldw r2, r11[10]
	ldw r1, r11[8]
	ldw r0, r11[6]
	ldw r4, r11[2]
	ldw r5, r11[3]
	ldw r11, r11[4]
.Ltmp99:
	.loc	1 128 0
	stw r11, sp[3]
	stw r5, sp[2]
	stw r4, sp[1]
.Lxta.call_labels14:
	bl the_server
.Ltmp100:
.Ltmp101:
	.size	mii_single_server.task.the_server.1, .Ltmp101-mii_single_server.task.the_server.1
.Lfunc_end4:
.Ltmp102:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom mii_single_server.task.the_server.1.function
	.set	mii_single_server.task.the_server.1.nstackwords,(the_server.nstackwords + 6)
	.set	mii_single_server.task.the_server.1.maxcores,the_server.maxcores $M 1
	.set	mii_single_server.task.the_server.1.maxtimers,the_server.maxtimers $M 0
	.set	mii_single_server.task.the_server.1.maxchanends,the_server.maxchanends $M 0
	.cc_top ethernet_server_p2_lite.function
	.globl	ethernet_server_p2_lite
	.align	4
	.type	ethernet_server_p2_lite,@function
ethernet_server_p2_lite:
.Ltmp106:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 137 0
.Lxtalabel20:
	entsp 15
.Ltmp107:
	.cfi_def_cfa_offset 60
.Ltmp108:
	.cfi_offset 15, 0
	.loc	1 135 0 prologue_end
.Ltmp109:
	stw r4, sp[14]
.Ltmp110:
	.cfi_offset 4, -4
	stw r5, sp[13]
.Ltmp111:
	.cfi_offset 5, -8
	mov r4, r2
.Ltmp112:
	stw r0, sp[1]
	stw r1, sp[2]
	stw r3, sp[3]
	ldw r1, sp[16]
	stw r1, sp[4]
	.loc	1 138 0
.Ltmp113:
	getr r2, 2
	getr r1, 2
	setd res[r2], r1
	setd res[r1], r2
	stw r2, sp[5]
	stw r1, sp[6]
	getr r2, 2
	getr r1, 2
	setd res[r2], r1
	setd res[r1], r2
	stw r2, sp[7]
	stw r1, sp[8]
	.loc	1 139 0
.Ltmp114:
	getr r2, 2
	getr r1, 2
	setd res[r2], r1
	setd res[r1], r2
	ldc r3, 6
	ldw r11, sp[17]
	.loc	1 142 0
.Ltmp115:
	lsu r5, r11, r3
.Ltmp116:
	.loc	1 139 0
	stw r2, sp[9]
	stw r1, sp[10]
	.loc	1 140 0
.Lxta.call_labels15:
	bl mii_port_init
	.loc	1 142 0
.Ltmp117:
	ecallt r5
.Ltmp118:
	.loc	1 22 0
	ldc r0, 0
	ld8u r1, r4[r0]
	ldc r2, 40
	ldaw r0, sp[1]
	st8 r1, r0[r2]
	mkmsk r1, 1
	.loc	1 23 0
	ld8u r1, r4[r1]
	ldc r2, 41
	st8 r1, r0[r2]
	ldc r1, 2
	.loc	1 24 0
	ld8u r1, r4[r1]
	ldc r2, 42
	st8 r1, r0[r2]
	mkmsk r1, 2
	.loc	1 25 0
	ld8u r1, r4[r1]
	ldc r2, 43
	st8 r1, r0[r2]
	ldc r1, 4
	.loc	1 26 0
	ld8u r1, r4[r1]
	ldc r2, 44
	st8 r1, r0[r2]
	ldc r1, 5
	.loc	1 27 0
	ld8u r1, r4[r1]
	ldc r2, 45
	st8 r1, r0[r2]
.Ltmp119:
	.loc	1 142 0
	ldaw r1, dp[par.desc.2]
	bl __start_other_cores
.Ltmp120:
.Ltmp121:
	.size	ethernet_server_p2_lite, .Ltmp121-ethernet_server_p2_lite
.Lfunc_end5:
.Ltmp122:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom ethernet_server_p2_lite.function
	.set	ethernet_server_p2_lite.nstackwords,((mii_port_init.nstackwords $M (par.extra_stackwords + 1 + ethernet_server_p2_lite.task.mii_driver.0.nstackwords + 1 + ethernet_server_p2_lite.task.the_server.1.nstackwords)) + 15)
	.globl	ethernet_server_p2_lite.nstackwords
	.set	ethernet_server_p2_lite.maxcores,(0 + ethernet_server_p2_lite.task.mii_driver.0.maxcores + ethernet_server_p2_lite.task.the_server.1.maxcores) $M mii_port_init.maxcores $M 1
	.globl	ethernet_server_p2_lite.maxcores
	.set	ethernet_server_p2_lite.maxtimers,(1 + ethernet_server_p2_lite.task.mii_driver.0.maxtimers + ethernet_server_p2_lite.task.the_server.1.maxtimers) $M mii_port_init.maxtimers $M 0
	.globl	ethernet_server_p2_lite.maxtimers
	.set	ethernet_server_p2_lite.maxchanends,(6 + (0 + ethernet_server_p2_lite.task.mii_driver.0.maxchanends + ethernet_server_p2_lite.task.the_server.1.maxchanends)) $M (6 + mii_port_init.maxchanends) $M 6
	.globl	ethernet_server_p2_lite.maxchanends
	.cc_top ethernet_server_p2_lite.task.mii_driver.0.function
	.align	4
	.type	ethernet_server_p2_lite.task.mii_driver.0,@function
ethernet_server_p2_lite.task.mii_driver.0:
.Ltmp124:
	.cfi_startproc
.Lfunc_begin6:
	.loc	1 145 0
	entsp 1
.Ltmp125:
	.cfi_def_cfa_offset 4
.Ltmp126:
	.cfi_offset 15, 0
	.loc	1 145 0 prologue_end
.Ltmp127:
	ldw r1, r0[8]
	#APP
	#NO_APP
	ldw r2, r0[6]
	ldw r1, r0[4]
	ldw r0, r0[0]
.Ltmp128:
	.loc	1 145 0
.Lxta.call_labels16:
	bl mii_driver
	retsp 1
.Ltmp129:
.Ltmp130:
	.size	ethernet_server_p2_lite.task.mii_driver.0, .Ltmp130-ethernet_server_p2_lite.task.mii_driver.0
.Lfunc_end6:
.Ltmp131:
	.cfi_endproc
.Leh_func_end6:

	.align	4
	.cc_bottom ethernet_server_p2_lite.task.mii_driver.0.function
	.set	ethernet_server_p2_lite.task.mii_driver.0.nstackwords,(mii_driver.nstackwords + 1)
	.set	ethernet_server_p2_lite.task.mii_driver.0.maxcores,mii_driver.maxcores $M 1
	.set	ethernet_server_p2_lite.task.mii_driver.0.maxtimers,mii_driver.maxtimers $M 0
	.set	ethernet_server_p2_lite.task.mii_driver.0.maxchanends,mii_driver.maxchanends $M 0
	.cc_top ethernet_server_p2_lite.task.the_server.1.function
	.align	4
	.type	ethernet_server_p2_lite.task.the_server.1,@function
ethernet_server_p2_lite.task.the_server.1:
.Ltmp135:
	.cfi_startproc
.Lfunc_begin7:
	.loc	1 147 0
	entsp 6
.Ltmp136:
	.cfi_def_cfa_offset 24
.Ltmp137:
	.cfi_offset 15, 0
	.loc	1 0 0 prologue_end
.Ltmp138:
	stw r4, sp[5]
.Ltmp139:
	.cfi_offset 4, -4
	stw r5, sp[4]
.Ltmp140:
	.cfi_offset 5, -8
	mov r11, r0
.Ltmp141:
	.loc	1 147 0
	ldw r3, r11[1]
	ldw r2, r11[9]
	ldw r1, r11[7]
	ldw r0, r11[5]
	ldw r4, r11[2]
	ldw r5, r11[3]
	ldaw r11, r11[10]
.Ltmp142:
	.loc	1 147 0
	stw r11, sp[3]
	stw r5, sp[2]
	stw r4, sp[1]
.Lxta.call_labels17:
	bl the_server
.Ltmp143:
.Ltmp144:
	.size	ethernet_server_p2_lite.task.the_server.1, .Ltmp144-ethernet_server_p2_lite.task.the_server.1
.Lfunc_end7:
.Ltmp145:
	.cfi_endproc
.Leh_func_end7:

	.align	4
	.cc_bottom ethernet_server_p2_lite.task.the_server.1.function
	.set	ethernet_server_p2_lite.task.the_server.1.nstackwords,(the_server.nstackwords + 6)
	.set	ethernet_server_p2_lite.task.the_server.1.maxcores,the_server.maxcores $M 1
	.set	ethernet_server_p2_lite.task.the_server.1.maxtimers,the_server.maxtimers $M 0
	.set	ethernet_server_p2_lite.task.the_server.1.maxchanends,the_server.maxchanends $M 0
	.section	.dp.bss,"awd",@nobits
	.cc_top phy_status.static.data
	.align	4
	.type	phy_status.static,@object
	.size phy_status.static,4
phy_status.static:
	.long	0
	.cc_bottom phy_status.static.data
	.section	.dp.data,"awd",@progbits
	.cc_top par.desc.1.data
	.align	4
	.type	par.desc.1,@object
	.size par.desc.1,16
par.desc.1:
	.long	mii_single_server.task.mii_driver.0
	.long	mii_single_server.task.the_server.1.nstackwords
	.long	0
	.long	mii_single_server.task.the_server.1
	.cc_bottom par.desc.1.data
	.cc_top par.desc.2.data
	.align	4
	.type	par.desc.2,@object
	.size par.desc.2,16
par.desc.2:
	.long	ethernet_server_p2_lite.task.mii_driver.0
	.long	ethernet_server_p2_lite.task.the_server.1.nstackwords
	.long	0
	.long	ethernet_server_p2_lite.task.the_server.1
	.cc_bottom par.desc.2.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	3253
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	3
	.ascii	 "phy_status"
	.byte	0
	.ascii	 "phy_status"
	.byte	0
	.long	289
	.byte	1
	.byte	55
	.byte	1
	.byte	4
	.long	296
	.byte	5
	.byte	3
	.long	phy_status.static
	.byte	5
	.ascii	 "delay_seconds"
	.byte	0
	.ascii	 "delay_seconds"
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	6
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	46
	.long	2113
	.byte	0
	.byte	5
	.ascii	 "delay_milliseconds"
	.byte	0
	.ascii	 "delay_milliseconds"
	.byte	0
	.byte	2
	.byte	54
	.byte	1
	.byte	6
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	54
	.long	2113
	.byte	0
	.byte	5
	.ascii	 "delay_microseconds"
	.byte	0
	.ascii	 "delay_microseconds"
	.byte	0
	.byte	2
	.byte	62
	.byte	1
	.byte	6
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	62
	.long	2113
	.byte	0
	.byte	7
	.ascii	 "init_macAddress"
	.byte	0
	.ascii	 "init_macAddress"
	.byte	0
	.byte	1
	.byte	20
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "mac"
	.byte	0
	.byte	1
	.byte	20
	.long	1964
	.long	.Ldebug_loc0+0
	.byte	8
	.ascii	 "my_mac"
	.byte	0
	.byte	1
	.byte	20
	.long	1986
	.long	.Ldebug_loc2+0
	.byte	0
	.byte	9
	.ascii	 "the_server"
	.byte	0
	.ascii	 "the_server"
	.byte	0
	.byte	1
	.byte	34
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	8
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.byte	32
	.long	1991
	.long	.Ldebug_loc4+0
	.byte	8
	.ascii	 "cOut"
	.byte	0
	.byte	1
	.byte	32
	.long	1991
	.long	.Ldebug_loc8+0
	.byte	8
	.ascii	 "cNotifications"
	.byte	0
	.byte	1
	.byte	32
	.long	1991
	.long	.Ldebug_loc13+0
	.byte	8
	.ascii	 "smi"
	.byte	0
	.byte	1
	.byte	33
	.long	2073
	.long	.Ldebug_loc18+0
	.byte	10
	.ascii	 "mac_address"
	.byte	0
	.byte	1
	.byte	34
	.long	1964
	.byte	4
	.byte	145
	.ascii	 "\354\331\001"
	.byte	8
	.ascii	 "appOut"
	.byte	0
	.byte	1
	.byte	34
	.long	1991
	.long	.Ldebug_loc22+0
	.byte	8
	.ascii	 "appIn"
	.byte	0
	.byte	1
	.byte	34
	.long	1991
	.long	.Ldebug_loc25+0
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	12
	.ascii	 "havePacket"
	.byte	0
	.byte	1
	.byte	35
	.long	289
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	13
	.ascii	 "outBytes"
	.byte	0
	.byte	1
	.byte	36
	.long	289
	.long	.Ldebug_loc28+0
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	12
	.ascii	 "nBytes"
	.byte	0
	.byte	1
	.byte	37
	.long	289
	.byte	12
	.byte	97
	.byte	0
	.byte	1
	.byte	37
	.long	289
	.byte	12
	.ascii	 "timeStamp"
	.byte	0
	.byte	1
	.byte	37
	.long	289
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	12
	.byte	98
	.byte	0
	.byte	1
	.byte	38
	.long	2078
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	14
	.ascii	 "txbuf"
	.byte	0
	.byte	1
	.byte	39
	.long	2091
	.byte	3
	.byte	145
	.ascii	 "\204\005"
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	12
	.ascii	 "linkcheck_timer"
	.byte	0
	.byte	1
	.byte	40
	.long	2104
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	14
	.ascii	 "linkcheck_time"
	.byte	0
	.byte	1
	.byte	41
	.long	2113
	.byte	2
	.byte	145
	.byte	44
	.byte	11
	.long	.Ltmp28
	.long	.Ltmp64
	.byte	14
	.ascii	 "miiData"
	.byte	0
	.byte	1
	.byte	42
	.long	2153
	.byte	2
	.byte	145
	.byte	48
	.byte	15
	.long	.Ldebug_range+0
	.byte	12
	.byte	105
	.byte	0
	.byte	1
	.byte	91
	.long	289
	.byte	0
	.byte	11
	.long	.Ltmp49
	.long	.Ltmp54
	.byte	11
	.long	.Ltmp49
	.long	.Ltmp54
	.byte	13
	.ascii	 "new_status"
	.byte	0
	.byte	1
	.byte	56
	.long	289
	.long	.Ldebug_loc31+0
	.byte	11
	.long	.Ltmp52
	.long	.Ltmp54
	.byte	13
	.byte	95
	.byte	0
	.byte	1
	.byte	59
	.long	289
	.long	.Ldebug_loc34+0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.long	.Ldebug_range+56
	.byte	12
	.byte	105
	.byte	0
	.byte	1
	.byte	74
	.long	289
	.byte	15
	.long	.Ldebug_range+32
	.byte	13
	.ascii	 "val"
	.byte	0
	.byte	1
	.byte	75
	.long	289
	.long	.Ldebug_loc38+0
	.byte	0
	.byte	0
	.byte	11
	.long	.Ltmp56
	.long	.Ltmp58
	.byte	13
	.byte	95
	.byte	0
	.byte	1
	.byte	73
	.long	289
	.long	.Ldebug_loc36+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.ascii	 "mii_single_server.task.mii_driver.0"
	.byte	0
	.ascii	 "mii_single_server.task.mii_driver.0"
	.byte	0
	.byte	1
	.byte	127
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	16
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3081
	.long	.Ldebug_loc42+0
	.byte	0
	.byte	9
	.ascii	 "mii_single_server.task.the_server.1"
	.byte	0
	.ascii	 "mii_single_server.task.the_server.1"
	.byte	0
	.byte	1
	.byte	128
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	16
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3081
	.long	.Ldebug_loc44+0
	.byte	0
	.byte	7
	.ascii	 "mii_single_server"
	.byte	0
	.ascii	 "mii_single_server"
	.byte	0
	.byte	1
	.byte	116
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	10
	.ascii	 "smi"
	.byte	0
	.byte	1
	.byte	113
	.long	2073
	.byte	2
	.byte	145
	.byte	4
	.byte	8
	.ascii	 "p_mii_resetn"
	.byte	0
	.byte	1
	.byte	112
	.long	2002
	.long	.Ldebug_loc40+0
	.byte	6
	.byte	109
	.byte	0
	.byte	1
	.byte	114
	.long	2893
	.byte	6
	.ascii	 "appIn"
	.byte	0
	.byte	1
	.byte	115
	.long	1991
	.byte	6
	.ascii	 "appOut"
	.byte	0
	.byte	1
	.byte	115
	.long	1991
	.byte	6
	.ascii	 "mac_address"
	.byte	0
	.byte	1
	.byte	116
	.long	1964
	.byte	0
	.byte	9
	.ascii	 "ethernet_server_p2_lite.task.mii_driver.0"
	.byte	0
	.ascii	 "ethernet_server_p2_lite.task.mii_driver.0"
	.byte	0
	.byte	1
	.byte	145
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.byte	1
	.byte	94
	.byte	1
	.byte	16
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3250
	.long	.Ldebug_loc51+0
	.byte	0
	.byte	9
	.ascii	 "ethernet_server_p2_lite.task.the_server.1"
	.byte	0
	.ascii	 "ethernet_server_p2_lite.task.the_server.1"
	.byte	0
	.byte	1
	.byte	147
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.byte	1
	.byte	94
	.byte	1
	.byte	16
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3250
	.long	.Ldebug_loc53+0
	.byte	0
	.byte	7
	.ascii	 "ethernet_server_p2_lite"
	.byte	0
	.ascii	 "ethernet_server_p2_lite"
	.byte	0
	.byte	1
	.byte	137
	.byte	1
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	10
	.byte	109
	.byte	0
	.byte	1
	.byte	133
	.long	2893
	.byte	2
	.byte	145
	.byte	4
	.byte	8
	.ascii	 "mac_address"
	.byte	0
	.byte	1
	.byte	135
	.long	3092
	.long	.Ldebug_loc47+0
	.byte	6
	.ascii	 "smi"
	.byte	0
	.byte	1
	.byte	134
	.long	2073
	.byte	6
	.ascii	 "c_rx"
	.byte	0
	.byte	1
	.byte	136
	.long	1991
	.byte	6
	.ascii	 "c_tx"
	.byte	0
	.byte	1
	.byte	136
	.long	1991
	.byte	11
	.long	.Ltmp113
	.long	.Ltmp120
	.byte	11
	.long	.Ltmp113
	.long	.Ltmp120
	.byte	11
	.long	.Ltmp114
	.long	.Ltmp120
	.byte	15
	.long	.Ldebug_range+80
	.byte	12
	.ascii	 "mac_address_p2"
	.byte	0
	.byte	1
	.byte	141
	.long	1952
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	17
	.byte	4
	.byte	5
	.byte	18
	.long	1932
	.byte	19
	.long	1949
	.byte	5
	.byte	0
	.byte	20
	.long	1952
	.byte	21
	.long	1932
	.byte	18
	.long	1969
	.byte	19
	.long	1949
	.byte	5
	.byte	0
	.byte	20
	.long	1974
	.byte	2
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "port"
	.byte	0
	.byte	7
	.byte	4
	.byte	22
	.ascii	 "smi_interface_t"
	.byte	0
	.byte	8
	.byte	23
	.ascii	 "phy_address"
	.byte	0
	.long	289
	.byte	1
	.byte	34
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	23
	.ascii	 "p_smi_mdc"
	.byte	0
	.long	2002
	.byte	1
	.byte	34
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	20
	.long	2010
	.byte	18
	.long	289
	.byte	24
	.long	1949
	.short	6399
	.byte	0
	.byte	18
	.long	289
	.byte	24
	.long	1949
	.short	399
	.byte	0
	.byte	2
	.ascii	 "timer"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	18
	.long	289
	.byte	19
	.long	1949
	.byte	1
	.byte	0
	.byte	18
	.long	289
	.byte	19
	.long	1949
	.byte	127
	.byte	0
	.byte	25
	.ascii	 "miiData"
	.byte	0
	.short	596
	.byte	1
	.byte	42
	.byte	23
	.ascii	 "nextBuffer"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	23
	.ascii	 "packetInLLD"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	23
	.ascii	 "notificationChannelEnd"
	.byte	0
	.long	2113
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	23
	.ascii	 "miiChannelEnd"
	.byte	0
	.long	2113
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	23
	.ascii	 "miiPacketsOverran"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	23
	.ascii	 "refillBankNumber"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	23
	.ascii	 "freePtr"
	.byte	0
	.long	2129
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	23
	.ascii	 "wrPtr"
	.byte	0
	.long	2129
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	23
	.ascii	 "lastSafePtr"
	.byte	0
	.long	2129
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	40
	.byte	1
	.byte	23
	.ascii	 "firstPtr"
	.byte	0
	.long	2129
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	48
	.byte	1
	.byte	23
	.ascii	 "readPtr"
	.byte	0
	.long	2129
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	56
	.byte	1
	.byte	23
	.ascii	 "notifyLast"
	.byte	0
	.long	1932
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	64
	.byte	1
	.byte	23
	.ascii	 "notifySeen"
	.byte	0
	.long	1932
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	65
	.byte	1
	.byte	23
	.ascii	 "pad0"
	.byte	0
	.long	1932
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	66
	.byte	1
	.byte	23
	.ascii	 "pad1"
	.byte	0
	.long	1932
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	67
	.byte	1
	.byte	23
	.ascii	 "miiPacketsTransmitted"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	68
	.byte	1
	.byte	23
	.ascii	 "miiPacketsReceived"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	72
	.byte	1
	.byte	23
	.ascii	 "miiPacketsCRCError"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	76
	.byte	1
	.byte	23
	.ascii	 "readBank"
	.byte	0
	.long	289
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	80
	.byte	1
	.byte	23
	.ascii	 "kernelStack"
	.byte	0
	.long	2141
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	84
	.byte	1
	.byte	0
	.byte	2
	.ascii	 "clock"
	.byte	0
	.byte	7
	.byte	4
	.byte	22
	.ascii	 "mii_interface_lite_t"
	.byte	0
	.byte	40
	.byte	23
	.ascii	 "clk_mii_rx"
	.byte	0
	.long	2638
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	23
	.ascii	 "clk_mii_tx"
	.byte	0
	.long	2638
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	23
	.ascii	 "p_mii_rxclk"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	23
	.ascii	 "p_mii_rxer"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	23
	.ascii	 "p_mii_rxd"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	23
	.ascii	 "p_mii_rxdv"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	23
	.ascii	 "p_mii_txclk"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	23
	.ascii	 "p_mii_txen"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	23
	.ascii	 "p_mii_txd"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	23
	.ascii	 "p_mii_timing"
	.byte	0
	.long	2002
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	0
	.byte	20
	.long	2647
	.byte	26
	.long	2010
	.byte	4
	.byte	26
	.long	2647
	.byte	4
	.byte	26
	.long	1952
	.byte	4
	.byte	18
	.long	1991
	.byte	19
	.long	1949
	.byte	1
	.byte	0
	.byte	22
	.ascii	 "frame.1"
	.byte	0
	.byte	44
	.byte	23
	.ascii	 "smi"
	.byte	0
	.long	2898
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	23
	.byte	109
	.byte	0
	.long	2904
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	23
	.ascii	 "appIn"
	.byte	0
	.long	1991
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	23
	.ascii	 "appOut"
	.byte	0
	.long	1991
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	23
	.ascii	 "mac_address"
	.byte	0
	.long	2910
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	23
	.ascii	 "cIn"
	.byte	0
	.long	2916
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	23
	.ascii	 "cOut"
	.byte	0
	.long	2916
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	23
	.ascii	 "notifications"
	.byte	0
	.long	2916
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	0
	.byte	26
	.long	2928
	.byte	4
	.byte	27
	.long	1969
	.byte	20
	.long	3087
	.byte	22
	.ascii	 "frame.0"
	.byte	0
	.byte	48
	.byte	23
	.byte	109
	.byte	0
	.long	2904
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	23
	.ascii	 "smi"
	.byte	0
	.long	2898
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	23
	.ascii	 "c_rx"
	.byte	0
	.long	1991
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	23
	.ascii	 "c_tx"
	.byte	0
	.long	1991
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	23
	.ascii	 "cIn"
	.byte	0
	.long	2916
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	23
	.ascii	 "cOut"
	.byte	0
	.long	2916
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	23
	.ascii	 "notifications"
	.byte	0
	.long	2916
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	23
	.ascii	 "mac_address_p2"
	.byte	0
	.long	1952
	.byte	1
	.byte	145
	.byte	2
	.byte	35
	.byte	40
	.byte	1
	.byte	0
	.byte	26
	.long	3097
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
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.ascii	 "\207@"
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	60
	.byte	12
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	71
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	5
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
	.byte	10
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
	.byte	11
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	12
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
	.byte	13
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
	.byte	14
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
	.byte	15
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	16
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	17
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	18
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	19
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	21
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	22
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	23
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
	.byte	24
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
	.byte	0
	.byte	0
	.byte	25
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	5
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	26
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	27
	.byte	1
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
	.long	1502
.asciiz "ethernet_server_p2_lite.task.mii_driver.0"
	.long	1740
.asciiz "ethernet_server_p2_lite"
	.long	383
.asciiz "delay_milliseconds"
	.long	1357
.asciiz "mii_single_server"
	.long	439
.asciiz "delay_microseconds"
	.long	576
.asciiz "the_server"
	.long	1621
.asciiz "ethernet_server_p2_lite.task.the_server.1"
	.long	495
.asciiz "init_macAddress"
	.long	1250
.asciiz "mii_single_server.task.the_server.1"
	.long	337
.asciiz "delay_seconds"
	.long	1143
.asciiz "mii_single_server.task.mii_driver.0"
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
	.long	3097
.asciiz "frame.0"
	.long	2928
.asciiz "frame.1"
	.long	2010
.asciiz "smi_interface_t"
	.long	2647
.asciiz "mii_interface_lite_t"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp2
.Lset4 = .Ltmp147-.Ltmp146
	.short	.Lset4
.Ltmp146:
	.byte	80
.Ltmp147:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp1
.Lset5 = .Ltmp149-.Ltmp148
	.short	.Lset5
.Ltmp148:
	.byte	81
.Ltmp149:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin1
	.long	.Ltmp27
.Lset6 = .Ltmp151-.Ltmp150
	.short	.Lset6
.Ltmp150:
	.byte	80
.Ltmp151:
	.long	.Ltmp27
	.long	.Ltmp29
.Lset7 = .Ltmp153-.Ltmp152
	.short	.Lset7
.Ltmp152:
	.byte	87
.Ltmp153:
	.long	.Ltmp29
	.long	.Ltmp30
.Lset8 = .Ltmp155-.Ltmp154
	.short	.Lset8
.Ltmp154:
	.byte	81
.Ltmp155:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin1
	.long	.Ltmp26
.Lset9 = .Ltmp157-.Ltmp156
	.short	.Lset9
.Ltmp156:
	.byte	81
.Ltmp157:
	.long	.Ltmp26
	.long	.Ltmp31
.Lset10 = .Ltmp159-.Ltmp158
	.short	.Lset10
.Ltmp158:
	.byte	86
.Ltmp159:
	.long	.Ltmp31
	.long	.Ltmp64
.Lset11 = .Ltmp161-.Ltmp160
	.short	.Lset11
.Ltmp160:
	.byte	88
.Ltmp161:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin1
	.long	.Ltmp25
.Lset12 = .Ltmp163-.Ltmp162
	.short	.Lset12
.Ltmp162:
	.byte	82
.Ltmp163:
	.long	.Ltmp25
	.long	.Ltmp34
.Lset13 = .Ltmp165-.Ltmp164
	.short	.Lset13
.Ltmp164:
	.byte	85
.Ltmp165:
	.long	.Ltmp34
	.long	.Lfunc_end1
.Lset14 = .Ltmp167-.Ltmp166
	.short	.Lset14
.Ltmp166:
	.byte	126
	.byte	36
.Ltmp167:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin1
	.long	.Ltmp24
.Lset15 = .Ltmp169-.Ltmp168
	.short	.Lset15
.Ltmp168:
	.byte	83
.Ltmp169:
	.long	.Ltmp24
	.long	.Lfunc_end1
.Lset16 = .Ltmp171-.Ltmp170
	.short	.Lset16
.Ltmp170:
	.byte	126
	.byte	40
.Ltmp171:
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Lfunc_begin1
	.long	.Ltmp64
.Lset17 = .Ltmp173-.Ltmp172
	.short	.Lset17
.Ltmp172:
	.byte	85
.Ltmp173:
	.long	0
	.long	0
.Ldebug_loc25:
	.long	.Lfunc_begin1
	.long	.Ltmp64
.Lset18 = .Ltmp175-.Ltmp174
	.short	.Lset18
.Ltmp174:
	.byte	89
.Ltmp175:
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Ltmp36
	.long	.Ltmp40
.Lset19 = .Ltmp177-.Ltmp176
	.short	.Lset19
.Ltmp176:
	.byte	83
.Ltmp177:
	.long	0
	.long	0
.Ldebug_loc31:
	.long	.Ltmp50
	.long	.Ltmp54
.Lset20 = .Ltmp179-.Ltmp178
	.short	.Lset20
.Ltmp178:
	.byte	80
.Ltmp179:
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Ltmp53
	.long	.Ltmp54
.Lset21 = .Ltmp181-.Ltmp180
	.short	.Lset21
.Ltmp180:
	.byte	81
.Ltmp181:
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Ltmp57
	.long	.Ltmp58
.Lset22 = .Ltmp183-.Ltmp182
	.short	.Lset22
.Ltmp182:
	.byte	81
.Ltmp183:
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Ltmp60
	.long	.Ltmp62
.Lset23 = .Ltmp185-.Ltmp184
	.short	.Lset23
.Ltmp184:
	.byte	82
.Ltmp185:
	.long	0
	.long	0
.Ldebug_loc40:
	.long	.Lfunc_begin2
	.long	.Ltmp76
.Lset24 = .Ltmp187-.Ltmp186
	.short	.Lset24
.Ltmp186:
	.byte	80
.Ltmp187:
	.long	0
	.long	0
.Ldebug_loc42:
	.long	.Lfunc_begin3
	.long	.Ltmp85
.Lset25 = .Ltmp189-.Ltmp188
	.short	.Lset25
.Ltmp188:
	.byte	80
.Ltmp189:
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Lfunc_begin4
	.long	.Ltmp98
.Lset26 = .Ltmp191-.Ltmp190
	.short	.Lset26
.Ltmp190:
	.byte	80
.Ltmp191:
	.long	.Ltmp98
	.long	.Ltmp99
.Lset27 = .Ltmp193-.Ltmp192
	.short	.Lset27
.Ltmp192:
	.byte	91
.Ltmp193:
	.long	0
	.long	0
.Ldebug_loc47:
	.long	.Lfunc_begin5
	.long	.Ltmp112
.Lset28 = .Ltmp195-.Ltmp194
	.short	.Lset28
.Ltmp194:
	.byte	82
.Ltmp195:
	.long	.Ltmp112
	.long	.Ltmp120
.Lset29 = .Ltmp197-.Ltmp196
	.short	.Lset29
.Ltmp196:
	.byte	84
.Ltmp197:
	.long	0
	.long	0
.Ldebug_loc51:
	.long	.Lfunc_begin6
	.long	.Ltmp128
.Lset30 = .Ltmp199-.Ltmp198
	.short	.Lset30
.Ltmp198:
	.byte	80
.Ltmp199:
	.long	0
	.long	0
.Ldebug_loc53:
	.long	.Lfunc_begin7
	.long	.Ltmp141
.Lset31 = .Ltmp201-.Ltmp200
	.short	.Lset31
.Ltmp200:
	.byte	80
.Ltmp201:
	.long	.Ltmp141
	.long	.Ltmp142
.Lset32 = .Ltmp203-.Ltmp202
	.short	.Lset32
.Ltmp202:
	.byte	91
.Ltmp203:
	.long	0
	.long	0
.Ldebug_loc56:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.long	.Ltmp36
	.long	.Ltmp37
	.long	.Ltmp38
	.long	.Ltmp41
	.long	.Ltmp44
	.long	.Ltmp45
	.long	0
	.long	0
	.long	.Ltmp59
	.long	.Ltmp61
	.long	.Ltmp62
	.long	.Ltmp63
	.long	0
	.long	0
	.long	.Ltmp55
	.long	.Ltmp56
	.long	.Ltmp58
	.long	.Ltmp64
	.long	0
	.long	0
	.long	.Ltmp115
	.long	.Ltmp116
	.long	.Ltmp117
	.long	.Ltmp120
	.long	0
	.long	0
	.section	.debug_macinfo,"",@progbits

	.typestring mii_initialise, "f{0}(no:p,&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}))"
	.typestring mii_driver, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),chd,chd)"
	.typestring mii_port_init, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}))"
	.typestring smi_init, "f{0}(&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}))"
	.typestring eth_phy_config, "f{0}(si,&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}))"
	.typestring smi_check_link_state, "f{si}(&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}))"
	.typestring mii_buffer_init, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),chd,chd,&(a(:si)),si)"
	.typestring mii_get_in_buffer, "f{ui,ui,ui}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}))"
	.typestring mii_free_in_buffer, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),si)"
	.typestring mii_restart_buffer, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}))"
	.typestring mii_out_init, "f{0}(chd)"
	.typestring mii_out_packet, "f{si}(chd,&(a(:si)),si,si)"
	.typestring mii_out_packet_done, "f{0}(chd)"
	.typestring init_macAddress, "f{0}(&(a(6:uc)),&(a(6:c:uc)))"
	.typestring mac_set_macaddr_lite, "f{0}(&(a(:uc)))"
	.typestring mii_single_server, "f{0}(no:p,n:&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}),&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),chd,chd,&(a(6:uc)))"
	.typestring ethernet_server_p2_lite, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),n:&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}),&(a(:c:uc)),chd,chd)"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	43
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	45
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	46
	.long	.Lxta.call_labels2
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	56
	.long	.Lxta.call_labels6
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	79
	.long	.Lxta.call_labels7
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	80
	.long	.Lxta.call_labels8
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	81
	.long	.Lxta.call_labels9
.cc_bottom cc_6
.cc_top cc_7,.Lxta.call_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	95
	.long	.Lxta.call_labels3
.cc_bottom cc_7
.cc_top cc_8,.Lxta.call_labels4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	96
	.long	.Lxta.call_labels4
.cc_bottom cc_8
.cc_top cc_9,.Lxta.call_labels5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	102
	.long	.Lxta.call_labels5
.cc_bottom cc_9
.cc_top cc_10,.Lxta.call_labels10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	119
	.long	.Lxta.call_labels10
.cc_bottom cc_10
.cc_top cc_11,.Lxta.call_labels11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	122
	.long	.Lxta.call_labels11
.cc_bottom cc_11
.cc_top cc_12,.Lxta.call_labels12
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	123
	.long	.Lxta.call_labels12
.cc_bottom cc_12
.cc_top cc_13,.Lxta.call_labels13
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	127
	.long	.Lxta.call_labels13
.cc_bottom cc_13
.cc_top cc_14,.Lxta.call_labels14
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	128
	.long	.Lxta.call_labels14
.cc_bottom cc_14
.cc_top cc_15,.Lxta.call_labels15
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	140
	.long	.Lxta.call_labels15
.cc_bottom cc_15
.cc_top cc_16,.Lxta.call_labels16
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	145
	.long	.Lxta.call_labels16
.cc_bottom cc_16
.cc_top cc_17,.Lxta.call_labels17
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	146
	.long	.Lxta.call_labels17
.cc_bottom cc_17
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_18,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	48
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_18
.cc_top cc_19,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	51
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_19
.cc_top cc_20,.Lxta.endpoint_labels5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	51
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_20
.cc_top cc_21,.Lxta.endpoint_labels11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	51
	.long	.Lxta.endpoint_labels11
.cc_bottom cc_21
.cc_top cc_22,.Lxta.endpoint_labels6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	58
	.long	.Lxta.endpoint_labels6
.cc_bottom cc_22
.cc_top cc_23,.Lxta.endpoint_labels7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	59
	.long	.Lxta.endpoint_labels7
.cc_bottom cc_23
.cc_top cc_24,.Lxta.endpoint_labels8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	60
	.long	.Lxta.endpoint_labels8
.cc_bottom cc_24
.cc_top cc_25,.Lxta.endpoint_labels9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	61
	.long	.Lxta.endpoint_labels9
.cc_bottom cc_25
.cc_top cc_26,.Lxta.endpoint_labels4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	69
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_26
.cc_top cc_27,.Lxta.endpoint_labels12
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	77
	.long	.Lxta.endpoint_labels12
.cc_bottom cc_27
.cc_top cc_28,.Lxta.endpoint_labels10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	85
	.long	.Lxta.endpoint_labels10
.cc_bottom cc_28
.cc_top cc_29,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	92
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_29
.cc_top cc_30,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	105
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_30
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_31,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	21
	.long	28
	.long	.Lxtalabel0
.cc_bottom cc_31
.cc_top cc_32,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	35
	.long	50
	.long	.Lxtalabel1
.cc_bottom cc_32
.cc_top cc_33,.Lxtalabel7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	51
	.long	52
	.long	.Lxtalabel7
.cc_bottom cc_33
.cc_top cc_34,.Lxtalabel9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	53
	.long	53
	.long	.Lxtalabel9
.cc_bottom cc_34
.cc_top cc_35,.Lxtalabel11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	54
	.long	57
	.long	.Lxtalabel11
.cc_bottom cc_35
.cc_top cc_36,.Lxtalabel12
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	58
	.long	63
	.long	.Lxtalabel12
.cc_bottom cc_36
.cc_top cc_37,.Lxtalabel10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	65
	.long	69
	.long	.Lxtalabel10
.cc_bottom cc_37
.cc_top cc_38,.Lxtalabel8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	70
	.long	73
	.long	.Lxtalabel8
.cc_bottom cc_38
.cc_top cc_39,.Lxtalabel15
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	74
	.long	74
	.long	.Lxtalabel15
.cc_bottom cc_39
.cc_top cc_40,.Lxtalabel16
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	75
	.long	78
	.long	.Lxtalabel16
.cc_bottom cc_40
.cc_top cc_41,.Lxtalabel13
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	79
	.long	82
	.long	.Lxtalabel13
.cc_bottom cc_41
.cc_top cc_42,.Lxtalabel13
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	83
	.long	84
	.long	.Lxtalabel13
.cc_bottom cc_42
.cc_top cc_43,.Lxtalabel14
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	85
	.long	86
	.long	.Lxtalabel14
.cc_bottom cc_43
.cc_top cc_44,.Lxtalabel2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	91
	.long	91
	.long	.Lxtalabel2
.cc_bottom cc_44
.cc_top cc_45,.Lxtalabel3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	92
	.long	93
	.long	.Lxtalabel3
.cc_bottom cc_45
.cc_top cc_46,.Lxtalabel4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	94
	.long	98
	.long	.Lxtalabel4
.cc_bottom cc_46
.cc_top cc_47,.Lxtalabel5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	102
	.long	103
	.long	.Lxtalabel5
.cc_bottom cc_47
.cc_top cc_48,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	104
	.long	106
	.long	.Lxtalabel6
.cc_bottom cc_48
.cc_top cc_49,.Lxtalabel17
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	117
	.long	121
	.long	.Lxtalabel17
.cc_bottom cc_49
.cc_top cc_50,.Lxtalabel18
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	122
	.long	124
	.long	.Lxtalabel18
.cc_bottom cc_50
.cc_top cc_51,.Lxtalabel19
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	125
	.long	131
	.long	.Lxtalabel19
.cc_bottom cc_51
.cc_top cc_52,.Lxtalabel20
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	137
	.long	149
	.long	.Lxtalabel20
.cc_bottom cc_52
.Lentries_end5:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start6:
	.long	.Lentries_end7-.Lentries_start6
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_53,.Lxta.loop_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	75
	.long	78
	.long	.Lxta.loop_labels1
.cc_bottom cc_53
.cc_top cc_54,.Lxta.loop_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_single_server_p2.xc"
	.byte	0
	.long	92
	.long	93
	.long	.Lxta.loop_labels0
.cc_bottom cc_54
.Lentries_end7:
