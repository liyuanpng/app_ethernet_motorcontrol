	.file	"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.set _mii_notified.enable.savedstate,2
	.globl _mii_notified.enable.savedstate
	.set _mii_notified.enable.cases.maxtimers,0 $M _mii_notified.case.0.maxtimers
	.globl _mii_notified.enable.cases.maxtimers
	.set _mii_notified.enable.cases.maxcores,0 $M _mii_notified.case.0.maxcores
	.globl _mii_notified.enable.cases.maxcores
	.set _mii_notified.enable.cases.maxchanends,0 $M _mii_notified.case.0.maxchanends
	.globl _mii_notified.enable.cases.maxchanends
	.set _mii_notified.enable.cases,0
	.globl _mii_notified.enable.cases.nstackwords
	.set _mii_notified.enable.cases.nstackwords, 0 $M (_mii_notified.case.0.nstackwords)
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.set usage.anon.4,0
	.set usage.anon.5,0
	.set usage.anon.6,0
	.set usage.anon.7,0
	.set usage.anon.8,0
	.set usage.anon.9,0
	.set usage.anon.10,0
	.set usage.anon.11,0
	.set usage.anon.12,0
	.set usage.anon.13,0
	.globread _mii_out_packet_,_tailValues,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc:313: error: previously used here"
	.globread _mii_out_packet,_tailValues,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc:292: error: previously used here"
	.globwrite _miiTimeStampInit,usage.anon.12,"/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc:270: error: previously used here"
	.call _mii_close,usage.anon.13
	.call _miiClientUser,usage.anon.7
	.call _miiClientUser,usage.anon.11
	.call _miiClientUser,usage.anon.10
	.call _mii_free_in_buffer,usage.anon.9
	.call _mii_free_in_buffer,usage.anon.8
	.call _mii_restart_buffer,usage.anon.8
	.call usage.anon.10,usage.anon.8
	.call usage.anon.10,_miiNotify
	.call _mii_get_in_buffer,usage.anon.9
	.call _mii_buffer_init,usage.anon.8
	.call _mii_buffer_init,_mii_install_handler
	.call usage.anon.7,usage.anon.6
	.call usage.anon.6,usage.anon.5
	.call usage.anon.6,usage.anon.4
	.call usage.anon.6,usage.anon.3
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.3.locnoside, 1
	.set usage.anon.4.locnoside, 1
	.set usage.anon.5.locnoside, 1
	.set usage.anon.6.locnoside, 1
	.set usage.anon.8.locnoside, 1
	.set usage.anon.9.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set usage.anon.3.locnochandec, 1
	.set usage.anon.4.locnochandec, 1
	.set usage.anon.5.locnochandec, 1
	.set usage.anon.6.locnochandec, 1
	.set usage.anon.7.locnochandec, 1
	.set usage.anon.8.locnochandec, 1
	.set usage.anon.9.locnochandec, 1
	.set _mii_buffer_init.locnochandec, 1
	.set _miiNotify.locnochandec, 1
	.set _mii_notified.locnochandec, 1
	.set _mii_get_in_buffer.locnochandec, 1
	.set usage.anon.10.locnochandec, 1
	.set usage.anon.11.locnochandec, 1
	.set _mii_restart_buffer.locnochandec, 1
	.set _mii_free_in_buffer.locnochandec, 1
	.set _miiTimeStampInit.locnochandec, 1
	.set _miiClientUser.locnochandec, 1
	.set _mii_out_packet.locnochandec, 1
	.set _mii_out_packet_.locnochandec, 1
	.set _mii_out_packet_done.locnochandec, 1
	.set _mii_out_init.locnochandec, 1
	.set usage.anon.13.locnochandec, 1
	.set _mii_close.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set usage.anon.3.locnoglobalaccess, 1
	.set usage.anon.4.locnoglobalaccess, 1
	.set usage.anon.5.locnoglobalaccess, 1
	.set usage.anon.6.locnoglobalaccess, 1
	.set usage.anon.7.locnoglobalaccess, 1
	.set usage.anon.8.locnoglobalaccess, 1
	.set usage.anon.9.locnoglobalaccess, 1
	.set _mii_buffer_init.locnoglobalaccess, 1
	.set _miiNotify.locnoglobalaccess, 1
	.set _mii_notified.locnoglobalaccess, 1
	.set _mii_get_in_buffer.locnoglobalaccess, 1
	.set usage.anon.10.locnoglobalaccess, 1
	.set usage.anon.11.locnoglobalaccess, 1
	.set _mii_restart_buffer.locnoglobalaccess, 1
	.set _mii_free_in_buffer.locnoglobalaccess, 1
	.set _miiClientUser.locnoglobalaccess, 1
	.set _mii_out_packet_done.locnoglobalaccess, 1
	.set _mii_out_init.locnoglobalaccess, 1
	.set usage.anon.13.locnoglobalaccess, 1
	.set _mii_close.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set usage.anon.3.locnointerfaceaccess, 1
	.set usage.anon.4.locnointerfaceaccess, 1
	.set usage.anon.5.locnointerfaceaccess, 1
	.set usage.anon.6.locnointerfaceaccess, 1
	.set usage.anon.7.locnointerfaceaccess, 1
	.set usage.anon.8.locnointerfaceaccess, 1
	.set usage.anon.9.locnointerfaceaccess, 1
	.set _mii_buffer_init.locnointerfaceaccess, 1
	.set _miiNotify.locnointerfaceaccess, 1
	.set _mii_notified.locnointerfaceaccess, 1
	.set _mii_get_in_buffer.locnointerfaceaccess, 1
	.set usage.anon.10.locnointerfaceaccess, 1
	.set usage.anon.11.locnointerfaceaccess, 1
	.set _mii_restart_buffer.locnointerfaceaccess, 1
	.set _mii_free_in_buffer.locnointerfaceaccess, 1
	.set _miiTimeStampInit.locnointerfaceaccess, 1
	.set _miiClientUser.locnointerfaceaccess, 1
	.set _mii_out_packet.locnointerfaceaccess, 1
	.set _mii_out_packet_.locnointerfaceaccess, 1
	.set _mii_out_packet_done.locnointerfaceaccess, 1
	.set _mii_out_init.locnointerfaceaccess, 1
	.set usage.anon.13.locnointerfaceaccess, 1
	.set _mii_close.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set usage.anon.3.locnonotificationselect, 1
	.set usage.anon.4.locnonotificationselect, 1
	.set usage.anon.5.locnonotificationselect, 1
	.set usage.anon.6.locnonotificationselect, 1
	.set usage.anon.7.locnonotificationselect, 1
	.set usage.anon.8.locnonotificationselect, 1
	.set usage.anon.9.locnonotificationselect, 1
	.set _mii_buffer_init.locnonotificationselect, 1
	.set _miiNotify.locnonotificationselect, 1
	.set _mii_notified.locnonotificationselect, 1
	.set _mii_get_in_buffer.locnonotificationselect, 1
	.set usage.anon.10.locnonotificationselect, 1
	.set usage.anon.11.locnonotificationselect, 1
	.set _mii_restart_buffer.locnonotificationselect, 1
	.set _mii_free_in_buffer.locnonotificationselect, 1
	.set _miiTimeStampInit.locnonotificationselect, 1
	.set _miiClientUser.locnonotificationselect, 1
	.set _mii_out_packet.locnonotificationselect, 1
	.set _mii_out_packet_.locnonotificationselect, 1
	.set _mii_out_packet_done.locnonotificationselect, 1
	.set _mii_out_init.locnonotificationselect, 1
	.set usage.anon.13.locnonotificationselect, 1
	.set _mii_close.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
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
	.cc_top _mii_buffer_init.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI0_0.data
	.align	4
.LCPI0_0:
	.long	4294967292
	.cc_bottom .LCPI0_0.data
	.cc_top .LCPI0_1.data
	.align	4
.LCPI0_1:
	.long	4294965766
	.cc_bottom .LCPI0_1.data
	.text
	.globl	_mii_buffer_init
	.align	4
	.type	_mii_buffer_init,@function
_mii_buffer_init:
.Ltmp5:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 123 0
.Lxtalabel0:
	entsp 5
.Ltmp6:
	.cfi_def_cfa_offset 20
.Ltmp7:
	.cfi_offset 15, 0
	.loc	1 123 0 prologue_end
.Ltmp8:
	stw r4, sp[4]
.Ltmp9:
	.cfi_offset 4, -4
	stw r5, sp[3]
.Ltmp10:
	.cfi_offset 5, -8
	stw r6, sp[2]
.Ltmp11:
	.cfi_offset 6, -12
	stw r7, sp[1]
.Ltmp12:
	.cfi_offset 7, -16
	mov r11, r2
.Ltmp13:
	mov r2, r1
.Ltmp14:
	ldc r1, 65
	mkmsk r4, 1
	.loc	1 125 0
.Ltmp15:
	st8 r4, r0[r1]
	ldc r1, 64
	.loc	1 126 0
	st8 r4, r0[r1]
	.loc	1 127 0
	#APP
	add r3, r3, 0
	#NO_APP
.Ltmp16:
	.loc	1 128 0
	stw r3, r0[6]
	ldc r1, 48
	add r1, r0, r1
	stw r3, r1[0]
	ldc r1, 56
	add r1, r0, r1
	stw r3, r1[0]
	ldw r5, sp[6]
	.loc	1 129 0
	shl r1, r5, 1
	ldw r6, cp[.LCPI0_0]
	and r1, r1, r6
	add r6, r3, r1
.Ltmp17:
	stw r6, r0[7]
	ldc r1, 52
	add r1, r0, r1
	stw r6, r1[0]
	ldc r1, 60
	add r1, r0, r1
	stw r6, r1[0]
	.loc	1 130 0
	add r1, r3, 4
	stw r1, r0[8]
	.loc	1 131 0
	add r7, r6, 4
	stw r7, r0[9]
	.loc	1 112 0
.Ltmp18:
	#APP
	stw r4, r3[0]
	#NO_APP
.Ltmp19:
	.loc	1 112 0
	#APP
	stw r4, r6[0]
	#NO_APP
	ldw r4, cp[.LCPI0_1]
.Ltmp20:
	.loc	1 134 0
	add r6, r6, r4
.Ltmp21:
	stw r6, r0[10]
	.loc	1 135 0
	ldaw r3, r3[r5]
.Ltmp22:
	add r3, r3, r4
	stw r3, r0[11]
	.loc	1 136 0
	stw r7, r0[0]
	ldc r3, 0
	.loc	1 137 0
	stw r3, r0[4]
	.loc	1 138 0
	stw r3, r0[5]
	ldc r4, 68
	.loc	1 139 0
	add r4, r0, r4
	stw r3, r4[0]
	ldc r4, 72
	.loc	1 140 0
	add r4, r0, r4
	stw r3, r4[0]
	ldc r4, 76
	.loc	1 141 0
	add r4, r0, r4
	stw r3, r4[0]
	ldc r4, 80
	.loc	1 142 0
	add r4, r0, r4
	stw r3, r4[0]
	.loc	1 143 0
	mov r3, r11
.Ltmp23:
.Lxta.call_labels0:
	bl _mii_install_handler
.Ltmp24:
	ldw r7, sp[1]
	ldw r6, sp[2]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
.Ltmp25:
.Ltmp26:
	.size	_mii_buffer_init, .Ltmp26-_mii_buffer_init
.Lfunc_end0:
.Ltmp27:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom _mii_buffer_init.function
	.set	_mii_buffer_init.nstackwords,(_mii_install_handler.nstackwords + 5)
	.globl	_mii_buffer_init.nstackwords
	.set	_mii_buffer_init.maxcores,_mii_install_handler.maxcores $M 1
	.globl	_mii_buffer_init.maxcores
	.set	_mii_buffer_init.maxtimers,_mii_install_handler.maxtimers $M 0
	.globl	_mii_buffer_init.maxtimers
	.set	_mii_buffer_init.maxchanends,_mii_install_handler.maxchanends $M 0
	.globl	_mii_buffer_init.maxchanends
	.cc_top _mii_close.function
	.globl	_mii_close
	.align	4
	.type	_mii_close,@function
_mii_close:
.Ltmp28:
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 341 0
.Lxtalabel1:
	.loc	1 342 0 prologue_end
	#APP
	clrsr 2
	#NO_APP
	.loc	1 334 0
.Ltmp29:
.Lxta.endpoint_labels0:
	outct res[r0], 1
	.loc	1 335 0
	testct r3, res[r0]
	.loc	1 335 0
	bt r3, .LBB1_2
.Ltmp30:
.LBB1_1:
.Lxtalabel2:
	.loc	1 336 0
.Lxta.endpoint_labels1:
	int r3, res[r0]
	.loc	1 335 0
	testct r3, res[r0]
.Lxta.loop_labels0:
	# LOOPMARKER 0
	.loc	1 335 0
	bf r3, .LBB1_1
.LBB1_2:
.Lxtalabel3:
.Ltmp31:
	.loc	1 338 0
	chkct res[r0], 1
.Ltmp32:
	.loc	1 344 0
.Lxta.endpoint_labels2:
	outct res[r2], 1
	.loc	1 345 0
	chkct res[r2], 1
.Ltmp33:
	.loc	1 334 0
.Lxta.endpoint_labels3:
	outct res[r1], 1
	.loc	1 335 0
	testct r0, res[r1]
.Ltmp34:
	.loc	1 335 0
	bt r0, .LBB1_4
.Ltmp35:
.LBB1_3:
.Lxtalabel4:
	.loc	1 336 0
.Lxta.endpoint_labels4:
	int r0, res[r1]
	.loc	1 335 0
	testct r0, res[r1]
.Lxta.loop_labels1:
	# LOOPMARKER 1
	.loc	1 335 0
	bf r0, .LBB1_3
.LBB1_4:
.Lxtalabel5:
.Ltmp36:
	.loc	1 338 0
	chkct res[r1], 1
	retsp 0
.Ltmp37:
.Ltmp38:
	.size	_mii_close, .Ltmp38-_mii_close
.Lfunc_end1:
.Ltmp39:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom _mii_close.function
	.set	_mii_close.nstackwords,0
	.globl	_mii_close.nstackwords
	.set	_mii_close.maxcores,1
	.globl	_mii_close.maxcores
	.set	_mii_close.maxtimers,0
	.globl	_mii_close.maxtimers
	.set	_mii_close.maxchanends,0
	.globl	_mii_close.maxchanends
	.cc_top _mii_get_in_buffer.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI2_0.data
	.align	4
.LCPI2_0:
	.long	4294967292
	.cc_bottom .LCPI2_0.data
	.text
	.globl	_mii_get_in_buffer
	.align	4
	.type	_mii_get_in_buffer,@function
_mii_get_in_buffer:
.Ltmp43:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 162 0
.Lxtalabel6:
	entsp 2
.Ltmp44:
	.cfi_def_cfa_offset 8
.Ltmp45:
	.cfi_offset 15, 0
	.loc	1 162 0 prologue_end
.Ltmp46:
	stw r4, sp[1]
.Ltmp47:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp48:
	.cfi_offset 5, -8
	ldc r1, 80
	.loc	1 165 0
.Ltmp49:
	add r1, r0, r1
	ldw r2, r1[0]
	eq r3, r2, 0
	stw r3, r1[0]
	.loc	1 166 0
	ldaw r4, r0[r3]
	ldc r2, 56
	add r5, r4, r2
	ldw r11, r5[0]
.Ltmp50:
	.loc	1 117 0
	#APP
	ldw r11, r11[0]
	#NO_APP
.Ltmp51:
	.loc	1 167 0
	bt r11, .LBB2_2
.Ltmp52:
.Lxtalabel7:
	ldc r3, 48
	.loc	1 168 0
	add r3, r4, r3
	ldw r3, r3[0]
	stw r3, r5[0]
	.loc	1 169 0
	ldw r3, r1[0]
	ldaw r11, r0[r3]
	add r11, r11, r2
	ldw r11, r11[0]
.Ltmp53:
	.loc	1 117 0
	#APP
	ldw r11, r11[0]
	#NO_APP
.Ltmp54:
.LBB2_2:
.Lxtalabel8:
	.loc	1 171 0
	eq r4, r11, 1
	bt r4, .LBB2_7
.LBB2_3:
.Lxtalabel9:
	.loc	1 173 0
.Ltmp55:
	add r4, r11, 7
	ldw r5, cp[.LCPI2_0]
	and r5, r4, r5
	.loc	1 172 0
	add r4, r0, r2
	ldw r2, r4[r3]
	.loc	1 173 0
	add r5, r2, r5
	stw r5, r4[r3]
	.loc	1 174 0
	ldw r1, r1[0]
	ldw r3, r4[r1]
.Ltmp56:
	.loc	1 117 0
	#APP
	ldw r3, r3[0]
	#NO_APP
.Ltmp57:
	.loc	1 174 0
	bt r3, .LBB2_5
.Ltmp58:
.Lxtalabel10:
	ldaw r3, r4[r1]
	.loc	1 175 0
	ldaw r0, r0[r1]
.Ltmp59:
	ldc r1, 48
	add r0, r0, r1
	ldw r0, r0[0]
	stw r0, r3[0]
.LBB2_5:
.Lxtalabel11:
	.loc	1 172 0
	add r3, r2, 4
.Ltmp60:
	.loc	1 178 0
	sub r1, r11, 4
	add r0, r2, 8
	.loc	1 117 0
.Ltmp61:
	#APP
	ldw r2, r3[0]
	#NO_APP
.Ltmp62:
.LBB2_6:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.LBB2_7:
.Lxtalabel12:
.Ltmp63:
	.loc	1 165 0
	eq r3, r3, 0
	stw r3, r1[0]
	.loc	1 166 0
	ldaw r5, r0[r3]
	add r4, r5, r2
	ldw r11, r4[0]
	.loc	1 117 0
.Ltmp64:
	#APP
	ldw r11, r11[0]
	#NO_APP
.Ltmp65:
	.loc	1 167 0
	bt r11, .LBB2_9
.Lxtalabel13:
	ldc r3, 48
	.loc	1 168 0
	add r3, r5, r3
	ldw r3, r3[0]
	stw r3, r4[0]
	.loc	1 169 0
	ldw r3, r1[0]
	ldaw r11, r0[r3]
	add r11, r11, r2
	ldw r11, r11[0]
	.loc	1 117 0
.Ltmp66:
	#APP
	ldw r11, r11[0]
	#NO_APP
.Ltmp67:
.LBB2_9:
.Lxtalabel14:
	.loc	1 171 0
	eq r4, r11, 1
	bf r4, .LBB2_3
.Ltmp68:
	ldc r1, 0
	mov r0, r1
	mov r2, r1
	bu .LBB2_6
.Ltmp69:
	.size	_mii_get_in_buffer, .Ltmp69-_mii_get_in_buffer
.Lfunc_end2:
.Ltmp70:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom _mii_get_in_buffer.function
	.set	_mii_get_in_buffer.nstackwords,2
	.globl	_mii_get_in_buffer.nstackwords
	.set	_mii_get_in_buffer.maxcores,1
	.globl	_mii_get_in_buffer.maxcores
	.set	_mii_get_in_buffer.maxtimers,0
	.globl	_mii_get_in_buffer.maxtimers
	.set	_mii_get_in_buffer.maxchanends,0
	.globl	_mii_get_in_buffer.maxchanends
	.cc_top _mii_free_in_buffer.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI3_0.data
	.align	4
.LCPI3_0:
	.long	4294967292
	.cc_bottom .LCPI3_0.data
	.text
	.globl	_mii_free_in_buffer
	.align	4
	.type	_mii_free_in_buffer,@function
_mii_free_in_buffer:
.Ltmp74:
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 245 0
.Lxtalabel15:
	entsp 2
.Ltmp75:
	.cfi_def_cfa_offset 8
.Ltmp76:
	.cfi_offset 15, 0
	.loc	1 245 0 prologue_end
.Ltmp77:
	stw r4, sp[1]
.Ltmp78:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp79:
	.cfi_offset 5, -8
	ldc r2, 52
	.loc	1 246 0
.Ltmp80:
	add r2, r0, r2
	ldw r2, r2[0]
	.loc	1 249 0
.Ltmp81:
	sub r3, r1, 8
.Ltmp82:
	.loc	1 117 0
	#APP
	ldw r11, r3[0]
	#NO_APP
.Ltmp83:
	.loc	1 249 0
	neg r11, r11
.Ltmp84:
	.loc	1 112 0
	#APP
	stw r11, r3[0]
	#NO_APP
.Ltmp85:
	.loc	1 246 0
	lss r1, r1, r2
.Ltmp86:
	eq r1, r1, 0
	.loc	1 251 0
.Ltmp87:
	ldaw r3, r0[r1]
.Ltmp88:
	ldw r0, r3[6]
.Ltmp89:
	.loc	1 117 0
	#APP
	ldw r4, r0[0]
	#NO_APP
.Ltmp90:
	ldc r1, 0
.Ltmp91:
	.loc	1 252 0
	lss r2, r1, r4
	bt r2, .LBB3_5
.Ltmp92:
	.loc	1 251 0
	ldaw r2, r3[6]
	ldc r11, 48
	.loc	1 257 0
	add r3, r3, r11
	mkmsk r11, 3
.Ltmp93:
.LBB3_2:
.Lxtalabel16:
	.loc	1 256 0
	bt r4, .LBB3_6
.Lxtalabel17:
	.loc	1 257 0
	ldw r0, r3[0]
.LBB3_4:
.Lxtalabel18:
.Ltmp94:
	stw r0, r2[0]
	.loc	1 117 0
.Ltmp95:
	#APP
	ldw r4, r0[0]
	#NO_APP
.Ltmp96:
	.loc	1 252 0
	lss r5, r1, r4
	bf r5, .LBB3_2
	bu .LBB3_5
.Ltmp97:
.LBB3_6:
.Lxtalabel19:
	.loc	1 259 0
	sub r4, r11, r4
	ldw r5, cp[.LCPI3_0]
	and r4, r4, r5
	add r0, r0, r4
	bu .LBB3_4
.Ltmp98:
.LBB3_5:
.Lxtalabel20:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp99:
	.size	_mii_free_in_buffer, .Ltmp99-_mii_free_in_buffer
.Lfunc_end3:
.Ltmp100:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom _mii_free_in_buffer.function
	.set	_mii_free_in_buffer.nstackwords,2
	.globl	_mii_free_in_buffer.nstackwords
	.set	_mii_free_in_buffer.maxcores,1
	.globl	_mii_free_in_buffer.maxcores
	.set	_mii_free_in_buffer.maxtimers,0
	.globl	_mii_free_in_buffer.maxtimers
	.set	_mii_free_in_buffer.maxchanends,0
	.globl	_mii_free_in_buffer.maxchanends
	.cc_top _mii_notified.enable.function
	.globl	_mii_notified.enable
	.align	4
	.type	_mii_notified.enable,@function
_mii_notified.enable:
.Ltmp101:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 156 0
.Lxtalabel21:
	stw r1, r0[1]
	stw r2, r0[0]
	.loc	1 156 0 prologue_end
.Ltmp102:
	ldap r11, _mii_notified.case.0
	setv res[r2], r11
	mov r11, r0
	setev res[r2], r11
	add r0, r0, 8
	eeu res[r2]
	retsp 0
.Ltmp103:
.Ltmp104:
	.size	_mii_notified.enable, .Ltmp104-_mii_notified.enable
.Lfunc_end4:
.Ltmp105:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom _mii_notified.enable.function
	.set	_mii_notified.enable.nstackwords,0
	.globl	_mii_notified.enable.nstackwords
	.set	_mii_notified.enable.maxcores,1
	.globl	_mii_notified.enable.maxcores
	.set	_mii_notified.enable.maxtimers,0
	.globl	_mii_notified.enable.maxtimers
	.set	_mii_notified.enable.maxchanends,0
	.globl	_mii_notified.enable.maxchanends
	.cc_top _mii_notified.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI5_0.data
	.align	4
.LCPI5_0:
	.long	2147483647
	.cc_bottom .LCPI5_0.data
	.text
	.globl	_mii_notified
	.align	4
	.type	_mii_notified,@function
_mii_notified:
.Ltmp107:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 156 0
.Lxtalabel22:
	entsp 3
.Ltmp108:
	.cfi_def_cfa_offset 12
.Ltmp109:
	.cfi_offset 15, 0
	.loc	1 156 0 prologue_end
.Ltmp110:
	clre
	ldaw r2, dp[__timer_delta]
	ldw r3, cp[.LCPI5_0]
	get r11, id
	stw r3, r2[r11]
	ldaw r2, dp[__timers]
	ldw r2, r2[r11]
	setc res[r2], 1
	in r2, res[r2]
	ldaw r3, dp[__timer_base]
	stw r2, r3[r11]
.Ltmp111:
	stw r0, sp[2]
	stw r1, sp[1]
	.loc	1 156 0
.Ltmp112:
	ldap r11, _mii_notified.case.0
	setv res[r1], r11
	ldaw r11, sp[1]
	setev res[r1], r11
	eeu res[r1]
.Ltmp113:
	.loc	1 156 0
	bl __wait_nonlocal
.Ltmp114:
	.loc	1 156 0
	bu .Ltmp115
.Ltmp116:
.Ltmp115:
.LBB5_1:
	retsp 3
.Ltmp117:
	.size	_mii_notified, .Ltmp117-_mii_notified
.Lfunc_end5:
.Ltmp118:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom _mii_notified.function
	.set	_mii_notified.nstackwords,(_mii_notified.enable.cases.nstackwords + 3)
	.globl	_mii_notified.nstackwords
	.set	_mii_notified.maxcores,_mii_notified.enable.cases.maxcores $M 1
	.globl	_mii_notified.maxcores
	.set	_mii_notified.maxtimers,_mii_notified.enable.cases.maxtimers $M 0
	.globl	_mii_notified.maxtimers
	.set	_mii_notified.maxchanends,_mii_notified.enable.cases.maxchanends $M 0
	.globl	_mii_notified.maxchanends
	.cc_top _mii_restart_buffer.function
	.globl	_mii_restart_buffer
	.align	4
	.type	_mii_restart_buffer,@function
_mii_restart_buffer:
.Ltmp121:
	.cfi_startproc
.Lfunc_begin6:
	.loc	1 220 0
.Lxtalabel23:
	entsp 1
.Ltmp122:
	.cfi_def_cfa_offset 4
.Ltmp123:
	.cfi_offset 15, 0
	.loc	1 220 0 prologue_end
.Ltmp124:
	stw r4, sp[0]
.Ltmp125:
	.cfi_offset 4, -4
	.loc	1 222 0
.Ltmp126:
	ldw r1, r0[0]
	mkmsk r2, 32
	eq r1, r1, r2
	bf r1, .LBB6_7
.Lxtalabel24:
	.loc	1 225 0
	ldw r1, r0[5]
.Ltmp127:
	.loc	1 228 0
	ldaw r3, r0[r1]
	.loc	1 227 0
	ldw r1, r3[8]
.Ltmp128:
	ldw r2, r3[10]
	lss r11, r2, r1
	.loc	1 228 0
	ldw r2, r3[6]
	.loc	1 227 0
	bf r11, .LBB6_4
.Lxtalabel25:
	ldc r11, 48
	.loc	1 228 0
	add r11, r3, r11
	ldw r11, r11[0]
.Ltmp129:
	eq r4, r2, r11
	bt r4, .LBB6_7
.Lxtalabel26:
.Ltmp130:
	.loc	1 227 0
	ldaw r3, r3[8]
	.loc	1 229 0
	sub r1, r1, 4
.Ltmp131:
	ldc r4, 0
	.loc	1 112 0
.Ltmp132:
	#APP
	stw r4, r1[0]
	#NO_APP
.Ltmp133:
	.loc	1 230 0
	add r1, r11, 4
.Ltmp134:
	stw r1, r3[0]
	mkmsk r3, 1
	.loc	1 112 0
.Ltmp135:
	#APP
	stw r3, r11[0]
	#NO_APP
.Ltmp136:
	.loc	1 232 0
	sub r2, r2, r1
	ldc r3, 1530
	lss r2, r2, r3
	bf r2, .LBB6_6
	bu .LBB6_7
.Ltmp137:
.LBB6_4:
.Lxtalabel27:
	.loc	1 237 0
	lss r3, r2, r1
	bt r3, .LBB6_6
.Lxtalabel28:
	sub r2, r2, r1
	ldc r3, 1529
	lss r2, r3, r2
	bf r2, .LBB6_7
.LBB6_6:
.Lxtalabel29:
.Ltmp138:
	.loc	1 239 0
	stw r1, r0[0]
.Ltmp139:
.LBB6_7:
	ldw r4, sp[0]
	retsp 1
.Ltmp140:
	.size	_mii_restart_buffer, .Ltmp140-_mii_restart_buffer
.Lfunc_end6:
.Ltmp141:
	.cfi_endproc
.Leh_func_end6:

	.align	4
	.cc_bottom _mii_restart_buffer.function
	.set	_mii_restart_buffer.nstackwords,1
	.globl	_mii_restart_buffer.nstackwords
	.set	_mii_restart_buffer.maxcores,1
	.globl	_mii_restart_buffer.maxcores
	.set	_mii_restart_buffer.maxtimers,0
	.globl	_mii_restart_buffer.maxtimers
	.set	_mii_restart_buffer.maxchanends,0
	.globl	_mii_restart_buffer.maxchanends
	.cc_top _mii_out_init.function
	.globl	_mii_out_init
	.align	4
	.type	_mii_out_init,@function
_mii_out_init:
.Ltmp142:
	.cfi_startproc
.Lfunc_begin7:
	.loc	1 329 0
.Lxtalabel30:
	.loc	1 330 0 prologue_end
	chkct res[r0], 1
	retsp 0
.Ltmp143:
.Ltmp144:
	.size	_mii_out_init, .Ltmp144-_mii_out_init
.Lfunc_end7:
.Ltmp145:
	.cfi_endproc
.Leh_func_end7:

	.align	4
	.cc_bottom _mii_out_init.function
	.set	_mii_out_init.nstackwords,0
	.globl	_mii_out_init.nstackwords
	.set	_mii_out_init.maxcores,1
	.globl	_mii_out_init.maxcores
	.set	_mii_out_init.maxtimers,0
	.globl	_mii_out_init.maxtimers
	.set	_mii_out_init.maxchanends,0
	.globl	_mii_out_init.maxchanends
	.cc_top _mii_out_packet.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI8_0.data
	.align	4
.LCPI8_0:
	.long	4294967292
	.cc_bottom .LCPI8_0.data
	.text
	.globl	_mii_out_packet
	.align	4
	.type	_mii_out_packet,@function
_mii_out_packet:
.Ltmp149:
	.cfi_startproc
.Lfunc_begin8:
	.loc	1 284 0
.Lxtalabel31:
	entsp 2
.Ltmp150:
	.cfi_def_cfa_offset 8
.Ltmp151:
	.cfi_offset 15, 0
	.loc	1 284 0 prologue_end
.Ltmp152:
	stw r4, sp[1]
.Ltmp153:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp154:
	.cfi_offset 5, -8
	ldw r2, cp[.LCPI8_0]
.Ltmp155:
	.loc	1 293 0
	and r11, r3, r2
.Ltmp156:
	.loc	1 286 0
	mov r2, r3
	zext r2, 2
.Ltmp157:
	.loc	1 292 0
	ldaw r4, dp[_tailValues]
	ldw r4, r4[r2]
	add r11, r11, r1
	stw r4, r11[1]
	.loc	1 293 0
	ldw r4, r11[0]
	shl r5, r2, 3
	mkmsk r5, r5
	and r4, r4, r5
	stw r4, r11[0]
	.loc	1 291 0
	ashr r4, r3, 2
.Ltmp158:
	mkmsk r5, 1
	.loc	1 294 0
	sub r4, r5, r4
.Ltmp159:
	stw r4, r11[2]
	.loc	1 295 0
	sub r3, r3, 4
.Ltmp160:
	sub r2, r3, r2
.Ltmp161:
	.loc	1 289 0
	#APP
	 mov r1, r1
	#NO_APP
.Ltmp162:
	.loc	1 295 0
	add r1, r2, r1
.Ltmp163:
	.loc	1 295 0
.Lxta.endpoint_labels5:
	out res[r0], r1
	.loc	1 297 0
.Lxta.endpoint_labels6:
	in r0, res[r0]
.Ltmp164:
	ldc r1, 64
	.loc	1 300 0
	add r0, r0, r1
.Ltmp165:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp166:
.Ltmp167:
	.size	_mii_out_packet, .Ltmp167-_mii_out_packet
.Lfunc_end8:
.Ltmp168:
	.cfi_endproc
.Leh_func_end8:

	.align	4
	.cc_bottom _mii_out_packet.function
	.set	_mii_out_packet.nstackwords,2
	.globl	_mii_out_packet.nstackwords
	.set	_mii_out_packet.maxcores,1
	.globl	_mii_out_packet.maxcores
	.set	_mii_out_packet.maxtimers,0
	.globl	_mii_out_packet.maxtimers
	.set	_mii_out_packet.maxchanends,0
	.globl	_mii_out_packet.maxchanends
	.cc_top _mii_out_packet_.function
	.globl	_mii_out_packet_
	.align	4
	.type	_mii_out_packet_,@function
_mii_out_packet_:
.Ltmp172:
	.cfi_startproc
.Lfunc_begin9:
	.loc	1 306 0
.Lxtalabel32:
	entsp 2
.Ltmp173:
	.cfi_def_cfa_offset 8
.Ltmp174:
	.cfi_offset 15, 0
	.loc	1 306 0 prologue_end
.Ltmp175:
	stw r4, sp[1]
.Ltmp176:
	.cfi_offset 4, -4
	stw r5, sp[0]
.Ltmp177:
	.cfi_offset 5, -8
	.loc	1 312 0
.Ltmp178:
	ashr r11, r2, 2
.Ltmp179:
	.loc	1 308 0
	mov r3, r2
	zext r3, 2
.Ltmp180:
	.loc	1 313 0
	ldaw r4, dp[_tailValues]
	ldw r4, r4[r3]
	add r5, r11, 1
	#APP
	stw r4,r1[r5]
	#NO_APP
	.loc	1 314 0
	#APP
	ldw r0,r1[r11]
	#NO_APP
	ldc r4, 0
	.loc	1 315 0
	#APP
	stw r4,r1[r11]
	#NO_APP
	mkmsk r4, 1
	.loc	1 316 0
	sub r4, r4, r11
	add r11, r11, 2
.Ltmp181:
	#APP
	stw r4,r1[r11]
	#NO_APP
	.loc	1 317 0
	add r1, r1, r2
.Ltmp182:
	sub r1, r1, 4
	sub r1, r1, r3
	.loc	1 317 0
.Lxta.endpoint_labels7:
	out res[r0], r1
	.loc	1 319 0
.Lxta.endpoint_labels8:
	in r0, res[r0]
.Ltmp183:
	ldc r1, 64
	.loc	1 322 0
	add r0, r0, r1
.Ltmp184:
	ldw r5, sp[0]
	ldw r4, sp[1]
	retsp 2
.Ltmp185:
.Ltmp186:
	.size	_mii_out_packet_, .Ltmp186-_mii_out_packet_
.Lfunc_end9:
.Ltmp187:
	.cfi_endproc
.Leh_func_end9:

	.align	4
	.cc_bottom _mii_out_packet_.function
	.set	_mii_out_packet_.nstackwords,2
	.globl	_mii_out_packet_.nstackwords
	.set	_mii_out_packet_.maxcores,1
	.globl	_mii_out_packet_.maxcores
	.set	_mii_out_packet_.maxtimers,0
	.globl	_mii_out_packet_.maxtimers
	.set	_mii_out_packet_.maxchanends,0
	.globl	_mii_out_packet_.maxchanends
	.cc_top _mii_out_packet_done.function
	.globl	_mii_out_packet_done
	.align	4
	.type	_mii_out_packet_done,@function
_mii_out_packet_done:
.Ltmp188:
	.cfi_startproc
.Lfunc_begin10:
	.loc	1 325 0
.Lxtalabel33:
	.loc	1 326 0 prologue_end
	chkct res[r0], 1
	retsp 0
.Ltmp189:
.Ltmp190:
	.size	_mii_out_packet_done, .Ltmp190-_mii_out_packet_done
.Lfunc_end10:
.Ltmp191:
	.cfi_endproc
.Leh_func_end10:

	.align	4
	.cc_bottom _mii_out_packet_done.function
	.set	_mii_out_packet_done.nstackwords,0
	.globl	_mii_out_packet_done.nstackwords
	.set	_mii_out_packet_done.maxcores,1
	.globl	_mii_out_packet_done.maxcores
	.set	_mii_out_packet_done.maxtimers,0
	.globl	_mii_out_packet_done.maxtimers
	.set	_mii_out_packet_done.maxchanends,0
	.globl	_mii_out_packet_done.maxchanends
	.cc_top _miiNotify.function
	.globl	_miiNotify
	.align	4
	.type	_miiNotify,@function
_miiNotify:
.Ltmp192:
	.cfi_startproc
.Lfunc_begin11:
	.loc	1 149 0
.Lxtalabel34:
	ldc r2, 65
	.loc	1 150 0 prologue_end
.Ltmp193:
	ld8u r11, r0[r2]
	ldc r2, 64
	ld8u r3, r0[r2]
	eq r11, r3, r11
	bf r11, .LBB11_2
.Lxtalabel35:
.Ltmp194:
	add r2, r0, r2
	.loc	1 151 0
	eq r0, r3, 0
.Ltmp195:
	ldc r3, 0
	st8 r0, r2[r3]
	.loc	1 152 0
.Lxta.endpoint_labels9:
	outt res[r1], r0
.Ltmp196:
.LBB11_2:
.Lxtalabel36:
	retsp 0
.Ltmp197:
	.size	_miiNotify, .Ltmp197-_miiNotify
.Lfunc_end11:
.Ltmp198:
	.cfi_endproc
.Leh_func_end11:

	.align	4
	.cc_bottom _miiNotify.function
	.set	_miiNotify.nstackwords,0
	.globl	_miiNotify.nstackwords
	.set	_miiNotify.maxcores,1
	.globl	_miiNotify.maxcores
	.set	_miiNotify.maxtimers,0
	.globl	_miiNotify.maxtimers
	.set	_miiNotify.maxchanends,0
	.globl	_miiNotify.maxchanends
	.cc_top _mii_notified.case.0.function
	.align	4
	.type	_mii_notified.case.0,@function
_mii_notified.case.0:
.Ltmp199:
	.cfi_startproc
.Lfunc_begin12:
	.loc	1 157 0
.Lxtalabel37:
	get r11, ed
	ldw r0, r11[1]
	ldw r1, r11[0]
	.loc	1 157 0 prologue_end
.Ltmp200:
.Lxta.endpoint_labels10:
	int r1, res[r1]
	ldc r2, 65
	.loc	1 157 0
	st8 r1, r0[r2]
	retsp 0
.Ltmp201:
.Ltmp202:
	.size	_mii_notified.case.0, .Ltmp202-_mii_notified.case.0
.Lfunc_end12:
.Ltmp203:
	.cfi_endproc
.Leh_func_end12:

	.align	4
	.cc_bottom _mii_notified.case.0.function
	.set	_mii_notified.case.0.nstackwords,0
	.set	_mii_notified.case.0.maxcores,1
	.set	_mii_notified.case.0.maxtimers,0
	.set	_mii_notified.case.0.maxchanends,0
	.cc_top _miiTimeStampInit.function
	.globl	_miiTimeStampInit
	.align	4
	.type	_miiTimeStampInit,@function
_miiTimeStampInit:
.Ltmp204:
	.cfi_startproc
.Lxtalabel38:
	retsp 0
.Ltmp205:
	.size	_miiTimeStampInit, .Ltmp205-_miiTimeStampInit
.Ltmp206:
	.cfi_endproc
.Leh_func_end13:

	.align	4
	.cc_bottom _miiTimeStampInit.function
	.set	_miiTimeStampInit.nstackwords,0
	.globl	_miiTimeStampInit.nstackwords
	.set	_miiTimeStampInit.maxcores,1
	.globl	_miiTimeStampInit.maxcores
	.set	_miiTimeStampInit.maxtimers,0
	.globl	_miiTimeStampInit.maxtimers
	.set	_miiTimeStampInit.maxchanends,0
	.globl	_miiTimeStampInit.maxchanends
	.cc_top _miiClientUser.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI14_0.data
	.align	4
.LCPI14_0:
	.long	3988292384
	.cc_bottom .LCPI14_0.data
	.cc_top .LCPI14_1.data
	.align	4
.LCPI14_1:
	.long	4294967292
	.cc_bottom .LCPI14_1.data
	.text
	.globl	_miiClientUser
	.align	4
	.type	_miiClientUser,@function
_miiClientUser:
.Ltmp213:
	.cfi_startproc
.Lfunc_begin14:
	.loc	1 274 0
.Lxtalabel39:
	entsp 5
.Ltmp214:
	.cfi_def_cfa_offset 20
.Ltmp215:
	.cfi_offset 15, 0
	.loc	1 274 0 prologue_end
.Ltmp216:
	stw r4, sp[4]
.Ltmp217:
	.cfi_offset 4, -4
	stw r5, sp[3]
.Ltmp218:
	.cfi_offset 5, -8
	stw r6, sp[2]
.Ltmp219:
	.cfi_offset 6, -12
	stw r7, sp[1]
.Ltmp220:
	.cfi_offset 7, -16
	stw r8, sp[0]
.Ltmp221:
	.cfi_offset 8, -20
.Ltmp222:
	.loc	1 42 0
	sub r11, r2, r1
	.loc	1 22 0
.Ltmp223:
	#APP
	ldw r5, r2[1]
	#NO_APP
.Ltmp224:
	.loc	1 28 0
	#APP
	ldw r4, r2[2]
	#NO_APP
.Ltmp225:
	.loc	1 42 0
	shr r6, r4, 3
	add r11, r11, r6
.Ltmp226:
	.loc	1 34 0
	#APP
	ldw r4, r2[3]
	#NO_APP
.Ltmp227:
	.loc	1 43 0
	eq r2, r6, 3
.Ltmp228:
	bt r2, .LBB14_5
.Ltmp229:
.Lxtalabel40:
	eq r2, r6, 2
	bt r2, .LBB14_4
.Lxtalabel41:
	eq r2, r6, 1
	bf r2, .LBB14_7
.Lxtalabel42:
	.loc	1 47 0
	shr r2, r5, 24
.Ltmp230:
	ldw r5, cp[.LCPI14_0]
	.loc	1 48 0
	crc8 r4, r2, r2, r5
.Ltmp231:
	bu .LBB14_7
.LBB14_4:
.Lxtalabel43:
	.loc	1 51 0
	shr r5, r5, 16
.Ltmp232:
	ldw r2, cp[.LCPI14_0]
	bu .LBB14_6
.LBB14_5:
.Lxtalabel44:
.Ltmp233:
	.loc	1 56 0
	shr r5, r5, 8
.Ltmp234:
	ldw r2, cp[.LCPI14_0]
	.loc	1 57 0
	crc8 r4, r5, r5, r2
.Ltmp235:
.LBB14_6:
.Lxtalabel45:
	.loc	1 58 0
	crc8 r4, r5, r5, r2
	.loc	1 59 0
	crc8 r4, r2, r5, r2
.LBB14_7:
.Lxtalabel46:
.Ltmp236:
	mkmsk r2, 32
	.loc	1 62 0
	eq r4, r4, r2
	bt r4, .LBB14_9
.Ltmp237:
.Lxtalabel47:
	ldc r11, 0
.LBB14_9:
.Lxtalabel48:
.Ltmp238:
	.loc	1 68 0
	bf r11, .LBB14_20
.Ltmp239:
.Lxtalabel49:
	ldc r4, 72
.Ltmp240:
	.loc	1 73 0
	add r4, r0, r4
	ldw r5, r4[0]
	add r5, r5, 1
	stw r5, r4[0]
.Ltmp241:
	.loc	1 188 0
	add r4, r11, 7
	ldw r5, cp[.LCPI14_1]
	and r4, r4, r5
	ldc r5, 52
	.loc	1 186 0
	add r5, r0, r5
	ldw r5, r5[0]
.Ltmp242:
	lsu r1, r1, r5
.Ltmp243:
	eq r1, r1, 0
	.loc	1 187 0
	ldaw r5, r0[r1]
	ldw r6, r5[8]
	.loc	1 188 0
	add r4, r6, r4
	.loc	1 187 0
	sub r6, r6, 4
.Ltmp244:
	.loc	1 112 0
	#APP
	stw r11, r6[0]
	#NO_APP
.Ltmp245:
	.loc	1 188 0
	stw r4, r5[8]
	ldc r11, 65
.Ltmp246:
	.loc	1 150 0
	ld8u r11, r0[r11]
	ldc r6, 64
.Ltmp247:
	ld8u r7, r0[r6]
	eq r8, r7, r11
.Ltmp248:
	.loc	1 187 0
	ldaw r11, r5[8]
	.loc	1 150 0
.Ltmp249:
	bf r8, .LBB14_12
.Ltmp250:
.Lxtalabel50:
	add r6, r0, r6
.Ltmp251:
	.loc	1 151 0
	eq r4, r7, 0
	ldc r7, 0
	st8 r4, r6[r7]
	.loc	1 152 0
.Lxta.endpoint_labels11:
	outt res[r3], r4
.Ltmp252:
	.loc	1 190 0
	ldw r4, r11[0]
.Ltmp253:
.LBB14_12:
.Lxtalabel51:
	ldw r3, r5[10]
	lss r3, r3, r4
	bf r3, .LBB14_17
.Lxtalabel52:
	.loc	1 191 0
	ldw r3, r5[6]
	ldc r6, 48
	add r5, r5, r6
	ldw r5, r5[0]
.Ltmp254:
	eq r6, r3, r5
	.loc	1 192 0
	sub r4, r4, 4
.Ltmp255:
	.loc	1 191 0
	bt r6, .LBB14_18
.Ltmp256:
.Lxtalabel53:
	ldc r6, 0
	.loc	1 112 0
.Ltmp257:
	#APP
	stw r6, r4[0]
	#NO_APP
.Ltmp258:
	.loc	1 193 0
	add r4, r5, 4
.Ltmp259:
	stw r4, r11[0]
	mkmsk r11, 1
.Ltmp260:
	.loc	1 112 0
	#APP
	stw r11, r5[0]
	#NO_APP
.Ltmp261:
.LBB14_15:
.Lxtalabel54:
	.loc	1 195 0
	sub r3, r3, r4
	ldc r11, 1529
	lss r3, r11, r3
	bf r3, .LBB14_19
.LBB14_16:
.Lxtalabel55:
.Ltmp262:
	.loc	1 206 0
	stw r4, r0[0]
	bu .LBB14_21
.LBB14_17:
.Lxtalabel56:
.Ltmp263:
	.loc	1 203 0
	sub r3, r4, 4
.Ltmp264:
	mkmsk r11, 1
.Ltmp265:
	.loc	1 112 0
	#APP
	stw r11, r3[0]
	#NO_APP
.Ltmp266:
	.loc	1 204 0
	ldw r3, r5[6]
.Ltmp267:
	lss r11, r3, r4
	bf r11, .LBB14_15
	bu .LBB14_16
.LBB14_18:
.Lxtalabel57:
.Ltmp268:
	mkmsk r3, 1
	.loc	1 112 0
.Ltmp269:
	#APP
	stw r3, r4[0]
	#NO_APP
.Ltmp270:
.LBB14_19:
.Lxtalabel58:
	.loc	1 210 0
	stw r2, r0[0]
	.loc	1 211 0
	stw r1, r0[5]
	bu .LBB14_21
.Ltmp271:
.LBB14_20:
.Lxtalabel59:
	ldc r2, 76
.Ltmp272:
	.loc	1 69 0
	add r2, r0, r2
	ldw r3, r2[0]
	add r3, r3, 1
	stw r3, r2[0]
.Ltmp273:
	.loc	1 216 0
	stw r1, r0[0]
.Ltmp274:
.LBB14_21:
.Lxtalabel60:
	ldw r8, sp[0]
	ldw r7, sp[1]
	ldw r6, sp[2]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
.Ltmp275:
	.size	_miiClientUser, .Ltmp275-_miiClientUser
.Lfunc_end14:
.Ltmp276:
	.cfi_endproc
.Leh_func_end14:

	.align	4
	.cc_bottom _miiClientUser.function
	.set	_miiClientUser.nstackwords,5
	.globl	_miiClientUser.nstackwords
	.set	_miiClientUser.maxcores,1
	.globl	_miiClientUser.maxcores
	.set	_miiClientUser.maxtimers,0
	.globl	_miiClientUser.maxtimers
	.set	_miiClientUser.maxchanends,0
	.globl	_miiClientUser.maxchanends
	.section	.dp.bss,"awd",@nobits
	.cc_top _globalNow.data
	.globl	_globalNow
	.align	4
	.type	_globalNow,@object
	.size _globalNow,4
_globalNow:
	.long	0
	.cc_bottom _globalNow.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	3861
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
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
	.ascii	 "_globalNow"
	.byte	0
	.ascii	 "_globalNow"
	.byte	0
	.long	287
	.byte	1
	.byte	1
	.short	266
	.byte	5
	.byte	3
	.long	_globalNow
	.byte	4
	.ascii	 "delay_seconds"
	.byte	0
	.ascii	 "delay_seconds"
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	5
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	46
	.long	1477
	.byte	0
	.byte	4
	.ascii	 "delay_milliseconds"
	.byte	0
	.ascii	 "delay_milliseconds"
	.byte	0
	.byte	2
	.byte	54
	.byte	1
	.byte	5
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	54
	.long	1477
	.byte	0
	.byte	4
	.ascii	 "delay_microseconds"
	.byte	0
	.ascii	 "delay_microseconds"
	.byte	0
	.byte	2
	.byte	62
	.byte	1
	.byte	5
	.ascii	 "delay"
	.byte	0
	.byte	2
	.byte	62
	.long	1477
	.byte	0
	.byte	6
	.ascii	 "_value_1"
	.byte	0
	.ascii	 "_value_1"
	.byte	0
	.byte	1
	.byte	20
	.long	287
	.byte	5
	.ascii	 "address"
	.byte	0
	.byte	1
	.byte	20
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "retVal"
	.byte	0
	.byte	1
	.byte	21
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "_value_2"
	.byte	0
	.ascii	 "_value_2"
	.byte	0
	.byte	1
	.byte	26
	.long	287
	.byte	5
	.ascii	 "address"
	.byte	0
	.byte	1
	.byte	26
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "retVal"
	.byte	0
	.byte	1
	.byte	27
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "_value_3"
	.byte	0
	.ascii	 "_value_3"
	.byte	0
	.byte	1
	.byte	32
	.long	287
	.byte	5
	.ascii	 "address"
	.byte	0
	.byte	1
	.byte	32
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "retVal"
	.byte	0
	.byte	1
	.byte	33
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "_CRCBad"
	.byte	0
	.ascii	 "_CRCBad"
	.byte	0
	.byte	1
	.byte	38
	.long	287
	.byte	5
	.ascii	 "base"
	.byte	0
	.byte	1
	.byte	38
	.long	287
	.byte	5
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	38
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "tailBits"
	.byte	0
	.byte	1
	.byte	39
	.long	1477
	.byte	7
	.byte	8
	.ascii	 "tailLength"
	.byte	0
	.byte	1
	.byte	40
	.long	1477
	.byte	7
	.byte	8
	.ascii	 "partCRC"
	.byte	0
	.byte	1
	.byte	41
	.long	1477
	.byte	7
	.byte	8
	.ascii	 "length"
	.byte	0
	.byte	1
	.byte	42
	.long	1477
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.ascii	 "_packetGood"
	.byte	0
	.ascii	 "_packetGood"
	.byte	0
	.byte	1
	.byte	65
	.long	287
	.byte	5
	.ascii	 "base"
	.byte	0
	.byte	1
	.byte	65
	.long	287
	.byte	5
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	65
	.long	287
	.byte	5
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	65
	.long	3750
	.byte	5
	.ascii	 "base"
	.byte	0
	.byte	1
	.byte	65
	.long	287
	.byte	5
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	65
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "length"
	.byte	0
	.byte	1
	.byte	66
	.long	287
	.byte	8
	.ascii	 "length"
	.byte	0
	.byte	1
	.byte	66
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.ascii	 "_set"
	.byte	0
	.ascii	 "_set"
	.byte	0
	.byte	1
	.byte	111
	.byte	5
	.ascii	 "addr"
	.byte	0
	.byte	1
	.byte	111
	.long	287
	.byte	5
	.ascii	 "value"
	.byte	0
	.byte	1
	.byte	111
	.long	287
	.byte	0
	.byte	6
	.ascii	 "_get"
	.byte	0
	.ascii	 "_get"
	.byte	0
	.byte	1
	.byte	115
	.long	287
	.byte	5
	.ascii	 "addr"
	.byte	0
	.byte	1
	.byte	115
	.long	287
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "value"
	.byte	0
	.byte	1
	.byte	116
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.ascii	 "_mii_buffer_init"
	.byte	0
	.ascii	 "_mii_buffer_init"
	.byte	0
	.byte	1
	.byte	123
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	123
	.long	3750
	.long	.Ldebug_loc0+0
	.byte	11
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.byte	123
	.long	3755
	.long	.Ldebug_loc2+0
	.byte	11
	.ascii	 "cNotifications"
	.byte	0
	.byte	1
	.byte	123
	.long	3755
	.long	.Ldebug_loc5+0
	.byte	11
	.ascii	 "buffer"
	.byte	0
	.byte	1
	.byte	123
	.long	3771
	.long	.Ldebug_loc9+0
	.byte	12
	.ascii	 "numberWords"
	.byte	0
	.byte	1
	.byte	123
	.long	287
	.byte	2
	.byte	145
	.byte	24
	.byte	13
	.long	.Ltmp15
	.long	.Ltmp25
	.byte	13
	.long	.Ltmp15
	.long	.Ltmp25
	.byte	14
	.ascii	 "address"
	.byte	0
	.byte	1
	.byte	124
	.long	287
	.long	.Ldebug_loc11+0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.ascii	 "_miiNotify"
	.byte	0
	.ascii	 "_miiNotify"
	.byte	0
	.byte	1
	.byte	149
	.byte	1
	.long	.Lfunc_begin11
	.long	.Lfunc_end11
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	149
	.long	3750
	.long	.Ldebug_loc86+0
	.byte	11
	.ascii	 "notificationChannel"
	.byte	0
	.byte	1
	.byte	149
	.long	3755
	.long	.Ldebug_loc89+0
	.byte	0
	.byte	15
	.ascii	 "_mii_notified.case.0"
	.byte	0
	.ascii	 "_mii_notified.case.0"
	.byte	0
	.byte	1
	.byte	157
	.long	.Lfunc_begin12
	.long	.Lfunc_end12
	.byte	1
	.byte	94
	.byte	1
	.byte	16
	.ascii	 "_mii_notified.enable"
	.byte	0
	.ascii	 "_mii_notified.enable"
	.byte	0
	.byte	1
	.byte	156
	.long	1493
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	156
	.long	3750
	.long	.Ldebug_loc41+0
	.byte	11
	.ascii	 "notificationChannel"
	.byte	0
	.byte	1
	.byte	156
	.long	3755
	.long	.Ldebug_loc43+0
	.byte	17
	.ascii	 "_mii_notified.enable.saved_state_ptr"
	.byte	0
	.byte	1
	.long	16777215
	.long	3858
	.byte	0
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	18
	.long	1477
	.byte	4
	.byte	10
	.ascii	 "_mii_notified"
	.byte	0
	.ascii	 "_mii_notified"
	.byte	0
	.byte	1
	.byte	156
	.byte	1
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	156
	.long	3750
	.long	.Ldebug_loc45+0
	.byte	11
	.ascii	 "notificationChannel"
	.byte	0
	.byte	1
	.byte	156
	.long	3755
	.long	.Ldebug_loc47+0
	.byte	0
	.byte	10
	.ascii	 "_mii_get_in_buffer"
	.byte	0
	.ascii	 "_mii_get_in_buffer"
	.byte	0
	.byte	1
	.byte	162
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	162
	.long	3750
	.long	.Ldebug_loc22+0
	.byte	13
	.long	.Ltmp49
	.long	.Ltmp68
	.byte	13
	.long	.Ltmp49
	.long	.Ltmp68
	.byte	14
	.ascii	 "nBytes"
	.byte	0
	.byte	1
	.byte	163
	.long	1477
	.long	.Ldebug_loc27+0
	.byte	14
	.ascii	 "timeStamp"
	.byte	0
	.byte	1
	.byte	163
	.long	1477
	.long	.Ldebug_loc32+0
	.byte	13
	.long	.Ltmp49
	.long	.Ltmp68
	.byte	8
	.byte	105
	.byte	0
	.byte	1
	.byte	164
	.long	287
	.byte	13
	.long	.Ltmp55
	.long	.Ltmp62
	.byte	14
	.ascii	 "retVal"
	.byte	0
	.byte	1
	.byte	172
	.long	1477
	.long	.Ldebug_loc30+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.ascii	 "_miiCommitBuffer"
	.byte	0
	.ascii	 "_miiCommitBuffer"
	.byte	0
	.byte	1
	.byte	185
	.byte	5
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	185
	.long	3750
	.byte	5
	.ascii	 "currentBuffer"
	.byte	0
	.byte	1
	.byte	185
	.long	1477
	.byte	5
	.ascii	 "length"
	.byte	0
	.byte	1
	.byte	185
	.long	1477
	.byte	5
	.ascii	 "notificationChannel"
	.byte	0
	.byte	1
	.byte	185
	.long	3755
	.byte	7
	.byte	7
	.byte	8
	.ascii	 "bn"
	.byte	0
	.byte	1
	.byte	186
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.ascii	 "_miiRejectBuffer"
	.byte	0
	.ascii	 "_miiRejectBuffer"
	.byte	0
	.byte	1
	.byte	215
	.byte	5
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	215
	.long	3750
	.byte	5
	.ascii	 "currentBuffer"
	.byte	0
	.byte	1
	.byte	215
	.long	1477
	.byte	0
	.byte	10
	.ascii	 "_mii_restart_buffer"
	.byte	0
	.ascii	 "_mii_restart_buffer"
	.byte	0
	.byte	1
	.byte	220
	.byte	1
	.long	.Lfunc_begin6
	.long	.Lfunc_end6
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	220
	.long	3750
	.long	.Ldebug_loc49+0
	.byte	13
	.long	.Ltmp126
	.long	.Ltmp139
	.byte	13
	.long	.Ltmp126
	.long	.Ltmp139
	.byte	14
	.ascii	 "bn"
	.byte	0
	.byte	1
	.byte	221
	.long	287
	.long	.Ldebug_loc52+0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.ascii	 "_mii_free_in_buffer"
	.byte	0
	.ascii	 "_mii_free_in_buffer"
	.byte	0
	.byte	1
	.byte	245
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	11
	.ascii	 "this"
	.byte	0
	.byte	1
	.byte	245
	.long	3750
	.long	.Ldebug_loc34+0
	.byte	11
	.ascii	 "base"
	.byte	0
	.byte	1
	.byte	245
	.long	287
	.long	.Ldebug_loc36+0
	.byte	13
	.long	.Ltmp80
	.long	.Ltmp98
	.byte	13
	.long	.Ltmp80
	.long	.Ltmp98
	.byte	8
	.ascii	 "bankNumber"
	.byte	0
	.byte	1
	.byte	246
	.long	287
	.byte	19
	.long	.Ldebug_range+0
	.byte	8
	.ascii	 "modifiedFreePtr"
	.byte	0
	.byte	1
	.byte	247
	.long	287
	.byte	13
	.long	.Ltmp87
	.long	.Ltmp98
	.byte	14
	.byte	108
	.byte	0
	.byte	1
	.byte	251
	.long	287
	.long	.Ldebug_loc38+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	20
	.ascii	 "_miiTimeStampInit"
	.byte	0
	.ascii	 "_miiTimeStampInit"
	.byte	0
	.byte	1
	.short	268
	.byte	1
	.byte	21
	.ascii	 "offset"
	.byte	0
	.byte	1
	.short	268
	.long	1477
	.byte	22
	.ascii	 "testOffset"
	.byte	0
	.byte	1
	.short	269
	.long	287
	.byte	0
	.byte	23
	.ascii	 "_miiClientUser"
	.byte	0
	.ascii	 "_miiClientUser"
	.byte	0
	.byte	1
	.short	274
	.byte	1
	.long	.Lfunc_begin14
	.long	.Lfunc_end14
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "this"
	.byte	0
	.byte	1
	.short	274
	.long	3750
	.long	.Ldebug_loc92+0
	.byte	24
	.ascii	 "base"
	.byte	0
	.byte	1
	.short	274
	.long	287
	.long	.Ldebug_loc97+0
	.byte	24
	.ascii	 "end"
	.byte	0
	.byte	1
	.short	274
	.long	287
	.long	.Ldebug_loc101+0
	.byte	24
	.ascii	 "notificationChannel"
	.byte	0
	.byte	1
	.short	274
	.long	3755
	.long	.Ldebug_loc103+0
	.byte	13
	.long	.Ltmp222
	.long	.Ltmp274
	.byte	13
	.long	.Ltmp222
	.long	.Ltmp274
	.byte	25
	.ascii	 "length"
	.byte	0
	.byte	1
	.short	275
	.long	287
	.long	.Ldebug_loc114+0
	.byte	0
	.byte	0
	.byte	0
	.byte	26
	.ascii	 "_mii_out_packet"
	.byte	0
	.ascii	 "_mii_out_packet"
	.byte	0
	.byte	1
	.short	284
	.long	287
	.byte	1
	.long	.Lfunc_begin8
	.long	.Lfunc_end8
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "c_out"
	.byte	0
	.byte	1
	.short	284
	.long	3755
	.long	.Ldebug_loc56+0
	.byte	24
	.byte	98
	.byte	0
	.byte	1
	.short	284
	.long	3771
	.long	.Ldebug_loc58+0
	.byte	24
	.ascii	 "index"
	.byte	0
	.byte	1
	.short	284
	.long	287
	.long	.Ldebug_loc60+0
	.byte	24
	.ascii	 "length"
	.byte	0
	.byte	1
	.short	284
	.long	287
	.long	.Ldebug_loc62+0
	.byte	13
	.long	.Ltmp155
	.long	.Ltmp166
	.byte	13
	.long	.Ltmp155
	.long	.Ltmp166
	.byte	25
	.ascii	 "roundedLength"
	.byte	0
	.byte	1
	.short	285
	.long	287
	.long	.Ldebug_loc66+0
	.byte	25
	.byte	97
	.byte	0
	.byte	1
	.short	285
	.long	287
	.long	.Ldebug_loc68+0
	.byte	13
	.long	.Ltmp155
	.long	.Ltmp166
	.byte	25
	.ascii	 "oddBytes"
	.byte	0
	.byte	1
	.short	286
	.long	287
	.long	.Ldebug_loc64+0
	.byte	19
	.long	.Ldebug_range+24
	.byte	25
	.ascii	 "precise"
	.byte	0
	.byte	1
	.short	287
	.long	287
	.long	.Ldebug_loc70+0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	26
	.ascii	 "_mii_out_packet_"
	.byte	0
	.ascii	 "_mii_out_packet_"
	.byte	0
	.byte	1
	.short	306
	.long	287
	.byte	1
	.long	.Lfunc_begin9
	.long	.Lfunc_end9
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "c_out"
	.byte	0
	.byte	1
	.short	306
	.long	3755
	.long	.Ldebug_loc72+0
	.byte	24
	.byte	97
	.byte	0
	.byte	1
	.short	306
	.long	287
	.long	.Ldebug_loc74+0
	.byte	24
	.ascii	 "length"
	.byte	0
	.byte	1
	.short	306
	.long	287
	.long	.Ldebug_loc76+0
	.byte	13
	.long	.Ltmp178
	.long	.Ltmp185
	.byte	13
	.long	.Ltmp178
	.long	.Ltmp185
	.byte	25
	.ascii	 "roundedLength"
	.byte	0
	.byte	1
	.short	307
	.long	287
	.long	.Ldebug_loc78+0
	.byte	13
	.long	.Ltmp178
	.long	.Ltmp185
	.byte	25
	.ascii	 "oddBytes"
	.byte	0
	.byte	1
	.short	308
	.long	287
	.long	.Ldebug_loc80+0
	.byte	19
	.long	.Ldebug_range+72
	.byte	25
	.ascii	 "precise"
	.byte	0
	.byte	1
	.short	309
	.long	287
	.long	.Ldebug_loc82+0
	.byte	19
	.long	.Ldebug_range+48
	.byte	22
	.byte	120
	.byte	0
	.byte	1
	.short	310
	.long	287
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	23
	.ascii	 "_mii_out_packet_done"
	.byte	0
	.ascii	 "_mii_out_packet_done"
	.byte	0
	.byte	1
	.short	325
	.byte	1
	.long	.Lfunc_begin10
	.long	.Lfunc_end10
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "c_out"
	.byte	0
	.byte	1
	.short	325
	.long	3755
	.long	.Ldebug_loc84+0
	.byte	0
	.byte	23
	.ascii	 "_mii_out_init"
	.byte	0
	.ascii	 "_mii_out_init"
	.byte	0
	.byte	1
	.short	329
	.byte	1
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "c_out"
	.byte	0
	.byte	1
	.short	329
	.long	3755
	.long	.Ldebug_loc54+0
	.byte	0
	.byte	27
	.ascii	 "_drain"
	.byte	0
	.ascii	 "_drain"
	.byte	0
	.byte	1
	.short	333
	.byte	21
	.byte	99
	.byte	0
	.byte	1
	.short	333
	.long	3755
	.byte	0
	.byte	23
	.ascii	 "_mii_close"
	.byte	0
	.ascii	 "_mii_close"
	.byte	0
	.byte	1
	.short	341
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	24
	.ascii	 "cNotifications"
	.byte	0
	.byte	1
	.short	341
	.long	3755
	.long	.Ldebug_loc13+0
	.byte	24
	.ascii	 "cIn"
	.byte	0
	.byte	1
	.short	341
	.long	3755
	.long	.Ldebug_loc16+0
	.byte	24
	.ascii	 "cOut"
	.byte	0
	.byte	1
	.short	341
	.long	3755
	.long	.Ldebug_loc19+0
	.byte	0
	.byte	28
	.byte	4
	.byte	5
	.byte	29
	.long	287
	.byte	30
	.long	3223
	.byte	1
	.byte	0
	.byte	2
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	29
	.long	287
	.byte	30
	.long	3223
	.byte	127
	.byte	0
	.byte	31
	.ascii	 "miiData"
	.byte	0
	.short	596
	.byte	32
	.ascii	 "nextBuffer"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	32
	.ascii	 "packetInLLD"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	32
	.ascii	 "notificationChannelEnd"
	.byte	0
	.long	1477
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	32
	.ascii	 "miiChannelEnd"
	.byte	0
	.long	1477
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	32
	.ascii	 "miiPacketsOverran"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	32
	.ascii	 "refillBankNumber"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	32
	.ascii	 "freePtr"
	.byte	0
	.long	3226
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	32
	.ascii	 "wrPtr"
	.byte	0
	.long	3226
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	32
	.ascii	 "lastSafePtr"
	.byte	0
	.long	3226
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	40
	.byte	1
	.byte	32
	.ascii	 "firstPtr"
	.byte	0
	.long	3226
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	48
	.byte	1
	.byte	32
	.ascii	 "readPtr"
	.byte	0
	.long	3226
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	56
	.byte	1
	.byte	32
	.ascii	 "notifyLast"
	.byte	0
	.long	3238
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	64
	.byte	1
	.byte	32
	.ascii	 "notifySeen"
	.byte	0
	.long	3238
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	65
	.byte	1
	.byte	32
	.ascii	 "pad0"
	.byte	0
	.long	3238
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	66
	.byte	1
	.byte	32
	.ascii	 "pad1"
	.byte	0
	.long	3238
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	67
	.byte	1
	.byte	32
	.ascii	 "miiPacketsTransmitted"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	68
	.byte	1
	.byte	32
	.ascii	 "miiPacketsReceived"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	72
	.byte	1
	.byte	32
	.ascii	 "miiPacketsCRCError"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	76
	.byte	1
	.byte	32
	.ascii	 "readBank"
	.byte	0
	.long	287
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	80
	.byte	1
	.byte	32
	.ascii	 "kernelStack"
	.byte	0
	.long	3255
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	84
	.byte	1
	.byte	0
	.byte	33
	.long	3267
	.byte	2
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	34
	.long	287
	.byte	33
	.long	3766
	.byte	18
	.long	3267
	.byte	4
	.byte	35
	.ascii	 "_mii_notified.struct.type"
	.byte	0
	.byte	8
	.byte	32
	.ascii	 "notificationChannel"
	.byte	0
	.long	3755
	.byte	1
	.byte	156
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	32
	.ascii	 "this"
	.byte	0
	.long	3776
	.byte	1
	.byte	156
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	18
	.long	3782
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
	.byte	63
	.byte	12
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	2
	.byte	10
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
	.byte	0
	.byte	0
	.byte	6
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
	.byte	0
	.byte	0
	.byte	7
	.byte	11
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
	.byte	0
	.byte	0
	.byte	10
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
	.byte	11
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
	.byte	10
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
	.byte	15
	.byte	46
	.byte	0
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
	.byte	16
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
	.byte	17
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
	.byte	0
	.byte	0
	.byte	18
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	20
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	21
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	22
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	23
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
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
	.byte	24
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	25
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	26
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
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
	.byte	27
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	28
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	29
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	30
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	31
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	5
	.byte	0
	.byte	0
	.byte	32
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
	.byte	33
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	34
	.byte	1
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	35
	.byte	19
	.byte	1
	.byte	3
	.byte	8
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
	.long	294
.asciiz "_globalNow"
	.long	3032
.asciiz "_mii_out_init"
	.long	994
.asciiz "_mii_buffer_init"
	.long	489
.asciiz "_value_1"
	.long	548
.asciiz "_value_2"
	.long	607
.asciiz "_value_3"
	.long	2069
.asciiz "_mii_free_in_buffer"
	.long	2955
.asciiz "_mii_out_packet_done"
	.long	1590
.asciiz "_mii_get_in_buffer"
	.long	3124
.asciiz "_mii_close"
	.long	377
.asciiz "delay_milliseconds"
	.long	1892
.asciiz "_miiRejectBuffer"
	.long	2491
.asciiz "_mii_out_packet"
	.long	1180
.asciiz "_miiNotify"
	.long	2323
.asciiz "_miiClientUser"
	.long	666
.asciiz "_CRCBad"
	.long	947
.asciiz "_get"
	.long	786
.asciiz "_packetGood"
	.long	1766
.asciiz "_miiCommitBuffer"
	.long	1321
.asciiz "_mii_notified.enable"
	.long	2247
.asciiz "_miiTimeStampInit"
	.long	2730
.asciiz "_mii_out_packet_"
	.long	908
.asciiz "_set"
	.long	3095
.asciiz "_drain"
	.long	1499
.asciiz "_mii_notified"
	.long	433
.asciiz "delay_microseconds"
	.long	1265
.asciiz "_mii_notified.case.0"
	.long	1963
.asciiz "_mii_restart_buffer"
	.long	331
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
	.long	3782
.asciiz "_mii_notified.struct.type"
	.long	3267
.asciiz "miiData"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp24
.Lset4 = .Ltmp278-.Ltmp277
	.short	.Lset4
.Ltmp277:
	.byte	80
.Ltmp278:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp14
.Lset5 = .Ltmp280-.Ltmp279
	.short	.Lset5
.Ltmp279:
	.byte	81
.Ltmp280:
	.long	.Ltmp14
	.long	.Ltmp24
.Lset6 = .Ltmp282-.Ltmp281
	.short	.Lset6
.Ltmp281:
	.byte	82
.Ltmp282:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin0
	.long	.Ltmp13
.Lset7 = .Ltmp284-.Ltmp283
	.short	.Lset7
.Ltmp283:
	.byte	82
.Ltmp284:
	.long	.Ltmp13
	.long	.Ltmp23
.Lset8 = .Ltmp286-.Ltmp285
	.short	.Lset8
.Ltmp285:
	.byte	91
.Ltmp286:
	.long	.Ltmp23
	.long	.Ltmp24
.Lset9 = .Ltmp288-.Ltmp287
	.short	.Lset9
.Ltmp287:
	.byte	83
.Ltmp288:
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Lfunc_begin0
	.long	.Ltmp16
.Lset10 = .Ltmp290-.Ltmp289
	.short	.Lset10
.Ltmp289:
	.byte	83
.Ltmp290:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Ltmp16
	.long	.Ltmp25
.Lset11 = .Ltmp292-.Ltmp291
	.short	.Lset11
.Ltmp291:
	.byte	83
.Ltmp292:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin1
	.long	.Ltmp35
.Lset12 = .Ltmp294-.Ltmp293
	.short	.Lset12
.Ltmp293:
	.byte	80
.Ltmp294:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin1
	.long	.Ltmp37
.Lset13 = .Ltmp296-.Ltmp295
	.short	.Lset13
.Ltmp295:
	.byte	81
.Ltmp296:
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Lfunc_begin1
	.long	.Ltmp35
.Lset14 = .Ltmp298-.Ltmp297
	.short	.Lset14
.Ltmp297:
	.byte	82
.Ltmp298:
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Lfunc_begin2
	.long	.Ltmp59
.Lset15 = .Ltmp300-.Ltmp299
	.short	.Lset15
.Ltmp299:
	.byte	80
.Ltmp300:
	.long	.Ltmp63
	.long	.Ltmp68
.Lset16 = .Ltmp302-.Ltmp301
	.short	.Lset16
.Ltmp301:
	.byte	80
.Ltmp302:
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Ltmp51
	.long	.Ltmp52
.Lset17 = .Ltmp304-.Ltmp303
	.short	.Lset17
.Ltmp303:
	.byte	91
.Ltmp304:
	.long	.Ltmp54
	.long	.Ltmp54
.Lset18 = .Ltmp306-.Ltmp305
	.short	.Lset18
.Ltmp305:
	.byte	91
.Ltmp306:
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Ltmp60
	.long	.Ltmp62
.Lset19 = .Ltmp308-.Ltmp307
	.short	.Lset19
.Ltmp307:
	.byte	83
.Ltmp308:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp62
	.long	.Ltmp62
.Lset20 = .Ltmp310-.Ltmp309
	.short	.Lset20
.Ltmp309:
	.byte	82
.Ltmp310:
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Lfunc_begin3
	.long	.Ltmp89
.Lset21 = .Ltmp312-.Ltmp311
	.short	.Lset21
.Ltmp311:
	.byte	80
.Ltmp312:
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Lfunc_begin3
	.long	.Ltmp86
.Lset22 = .Ltmp314-.Ltmp313
	.short	.Lset22
.Ltmp313:
	.byte	81
.Ltmp314:
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Ltmp90
	.long	.Ltmp93
.Lset23 = .Ltmp316-.Ltmp315
	.short	.Lset23
.Ltmp315:
	.byte	84
.Ltmp316:
	.long	.Ltmp96
	.long	.Ltmp97
.Lset24 = .Ltmp318-.Ltmp317
	.short	.Lset24
.Ltmp317:
	.byte	84
.Ltmp318:
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Lfunc_begin4
	.long	.Ltmp103
.Lset25 = .Ltmp320-.Ltmp319
	.short	.Lset25
.Ltmp319:
	.byte	81
.Ltmp320:
	.long	0
	.long	0
.Ldebug_loc43:
	.long	.Lfunc_begin4
	.long	.Ltmp103
.Lset26 = .Ltmp322-.Ltmp321
	.short	.Lset26
.Ltmp321:
	.byte	82
.Ltmp322:
	.long	0
	.long	0
.Ldebug_loc45:
	.long	.Lfunc_begin5
	.long	.Ltmp116
.Lset27 = .Ltmp324-.Ltmp323
	.short	.Lset27
.Ltmp323:
	.byte	80
.Ltmp324:
	.long	0
	.long	0
.Ldebug_loc47:
	.long	.Lfunc_begin5
	.long	.Ltmp116
.Lset28 = .Ltmp326-.Ltmp325
	.short	.Lset28
.Ltmp325:
	.byte	81
.Ltmp326:
	.long	0
	.long	0
.Ldebug_loc49:
	.long	.Lfunc_begin6
	.long	.Ltmp139
.Lset29 = .Ltmp328-.Ltmp327
	.short	.Lset29
.Ltmp327:
	.byte	80
.Ltmp328:
	.long	0
	.long	0
.Ldebug_loc52:
	.long	.Ltmp127
	.long	.Ltmp128
.Lset30 = .Ltmp330-.Ltmp329
	.short	.Lset30
.Ltmp329:
	.byte	81
.Ltmp330:
	.long	0
	.long	0
.Ldebug_loc54:
	.long	.Lfunc_begin7
	.long	.Ltmp143
.Lset31 = .Ltmp332-.Ltmp331
	.short	.Lset31
.Ltmp331:
	.byte	80
.Ltmp332:
	.long	0
	.long	0
.Ldebug_loc56:
	.long	.Lfunc_begin8
	.long	.Ltmp164
.Lset32 = .Ltmp334-.Ltmp333
	.short	.Lset32
.Ltmp333:
	.byte	80
.Ltmp334:
	.long	0
	.long	0
.Ldebug_loc58:
	.long	.Lfunc_begin8
	.long	.Ltmp162
.Lset33 = .Ltmp336-.Ltmp335
	.short	.Lset33
.Ltmp335:
	.byte	81
.Ltmp336:
	.long	0
	.long	0
.Ldebug_loc60:
	.long	.Lfunc_begin8
	.long	.Ltmp155
.Lset34 = .Ltmp338-.Ltmp337
	.short	.Lset34
.Ltmp337:
	.byte	82
.Ltmp338:
	.long	0
	.long	0
.Ldebug_loc62:
	.long	.Lfunc_begin8
	.long	.Ltmp160
.Lset35 = .Ltmp340-.Ltmp339
	.short	.Lset35
.Ltmp339:
	.byte	83
.Ltmp340:
	.long	0
	.long	0
.Ldebug_loc64:
	.long	.Ltmp157
	.long	.Ltmp161
.Lset36 = .Ltmp342-.Ltmp341
	.short	.Lset36
.Ltmp341:
	.byte	82
.Ltmp342:
	.long	0
	.long	0
.Ldebug_loc66:
	.long	.Ltmp158
	.long	.Ltmp159
.Lset37 = .Ltmp344-.Ltmp343
	.short	.Lset37
.Ltmp343:
	.byte	84
.Ltmp344:
	.long	0
	.long	0
.Ldebug_loc68:
	.long	.Ltmp162
	.long	.Ltmp163
.Lset38 = .Ltmp346-.Ltmp345
	.short	.Lset38
.Ltmp345:
	.byte	81
.Ltmp346:
	.long	0
	.long	0
.Ldebug_loc70:
	.long	.Ltmp164
	.long	.Ltmp165
.Lset39 = .Ltmp348-.Ltmp347
	.short	.Lset39
.Ltmp347:
	.byte	80
.Ltmp348:
	.long	0
	.long	0
.Ldebug_loc72:
	.long	.Lfunc_begin9
	.long	.Ltmp183
.Lset40 = .Ltmp350-.Ltmp349
	.short	.Lset40
.Ltmp349:
	.byte	80
.Ltmp350:
	.long	0
	.long	0
.Ldebug_loc74:
	.long	.Lfunc_begin9
	.long	.Ltmp182
.Lset41 = .Ltmp352-.Ltmp351
	.short	.Lset41
.Ltmp351:
	.byte	81
.Ltmp352:
	.long	0
	.long	0
.Ldebug_loc76:
	.long	.Lfunc_begin9
	.long	.Ltmp185
.Lset42 = .Ltmp354-.Ltmp353
	.short	.Lset42
.Ltmp353:
	.byte	82
.Ltmp354:
	.long	0
	.long	0
.Ldebug_loc78:
	.long	.Ltmp179
	.long	.Ltmp181
.Lset43 = .Ltmp356-.Ltmp355
	.short	.Lset43
.Ltmp355:
	.byte	91
.Ltmp356:
	.long	0
	.long	0
.Ldebug_loc80:
	.long	.Ltmp180
	.long	.Ltmp185
.Lset44 = .Ltmp358-.Ltmp357
	.short	.Lset44
.Ltmp357:
	.byte	83
.Ltmp358:
	.long	0
	.long	0
.Ldebug_loc82:
	.long	.Ltmp183
	.long	.Ltmp184
.Lset45 = .Ltmp360-.Ltmp359
	.short	.Lset45
.Ltmp359:
	.byte	80
.Ltmp360:
	.long	0
	.long	0
.Ldebug_loc84:
	.long	.Lfunc_begin10
	.long	.Ltmp189
.Lset46 = .Ltmp362-.Ltmp361
	.short	.Lset46
.Ltmp361:
	.byte	80
.Ltmp362:
	.long	0
	.long	0
.Ldebug_loc86:
	.long	.Lfunc_begin11
	.long	.Ltmp195
.Lset47 = .Ltmp364-.Ltmp363
	.short	.Lset47
.Ltmp363:
	.byte	80
.Ltmp364:
	.long	0
	.long	0
.Ldebug_loc89:
	.long	.Lfunc_begin11
	.long	.Ltmp196
.Lset48 = .Ltmp366-.Ltmp365
	.short	.Lset48
.Ltmp365:
	.byte	81
.Ltmp366:
	.long	0
	.long	0
.Ldebug_loc92:
	.long	.Lfunc_begin14
	.long	.Ltmp235
.Lset49 = .Ltmp368-.Ltmp367
	.short	.Lset49
.Ltmp367:
	.byte	80
.Ltmp368:
	.long	.Ltmp236
	.long	.Ltmp261
.Lset50 = .Ltmp370-.Ltmp369
	.short	.Lset50
.Ltmp369:
	.byte	80
.Ltmp370:
	.long	.Ltmp262
	.long	.Ltmp274
.Lset51 = .Ltmp372-.Ltmp371
	.short	.Lset51
.Ltmp371:
	.byte	80
.Ltmp372:
	.long	0
	.long	0
.Ldebug_loc97:
	.long	.Lfunc_begin14
	.long	.Ltmp235
.Lset52 = .Ltmp374-.Ltmp373
	.short	.Lset52
.Ltmp373:
	.byte	81
.Ltmp374:
	.long	.Ltmp236
	.long	.Ltmp250
.Lset53 = .Ltmp376-.Ltmp375
	.short	.Lset53
.Ltmp375:
	.byte	81
.Ltmp376:
	.long	.Ltmp271
	.long	.Ltmp274
.Lset54 = .Ltmp378-.Ltmp377
	.short	.Lset54
.Ltmp377:
	.byte	81
.Ltmp378:
	.long	0
	.long	0
.Ldebug_loc101:
	.long	.Lfunc_begin14
	.long	.Ltmp229
.Lset55 = .Ltmp380-.Ltmp379
	.short	.Lset55
.Ltmp379:
	.byte	82
.Ltmp380:
	.long	0
	.long	0
.Ldebug_loc103:
	.long	.Lfunc_begin14
	.long	.Ltmp235
.Lset56 = .Ltmp382-.Ltmp381
	.short	.Lset56
.Ltmp381:
	.byte	83
.Ltmp382:
	.long	.Ltmp236
	.long	.Ltmp253
.Lset57 = .Ltmp384-.Ltmp383
	.short	.Lset57
.Ltmp383:
	.byte	83
.Ltmp384:
	.long	0
	.long	0
.Ldebug_loc107:
	.long	.Ltmp222
	.long	.Ltmp229
.Lset58 = .Ltmp386-.Ltmp385
	.short	.Lset58
.Ltmp385:
	.byte	81
.Ltmp386:
	.long	.Ltmp233
	.long	.Ltmp235
.Lset59 = .Ltmp388-.Ltmp387
	.short	.Lset59
.Ltmp387:
	.byte	81
.Ltmp388:
	.long	.Ltmp236
	.long	.Ltmp250
.Lset60 = .Ltmp390-.Ltmp389
	.short	.Lset60
.Ltmp389:
	.byte	81
.Ltmp390:
	.long	.Ltmp271
	.long	.Ltmp274
.Lset61 = .Ltmp392-.Ltmp391
	.short	.Lset61
.Ltmp391:
	.byte	81
.Ltmp392:
	.long	0
	.long	0
.Ldebug_loc112:
	.long	.Ltmp222
	.long	.Ltmp229
.Lset62 = .Ltmp394-.Ltmp393
	.short	.Lset62
.Ltmp393:
	.byte	82
.Ltmp394:
	.long	0
	.long	0
.Ldebug_loc114:
	.long	.Ltmp238
	.long	.Ltmp261
.Lset63 = .Ltmp396-.Ltmp395
	.short	.Lset63
.Ltmp395:
	.byte	91
.Ltmp396:
	.long	.Ltmp262
	.long	.Ltmp274
.Lset64 = .Ltmp398-.Ltmp397
	.short	.Lset64
.Ltmp397:
	.byte	91
.Ltmp398:
	.long	0
	.long	0
.Ldebug_loc118:
	.long	.Ltmp238
	.long	.Ltmp246
.Lset65 = .Ltmp400-.Ltmp399
	.short	.Lset65
.Ltmp399:
	.byte	91
.Ltmp400:
	.long	.Ltmp271
	.long	.Ltmp274
.Lset66 = .Ltmp402-.Ltmp401
	.short	.Lset66
.Ltmp401:
	.byte	91
.Ltmp402:
	.long	0
	.long	0
.Ldebug_loc122:
	.long	.Ltmp240
	.long	.Ltmp253
.Lset67 = .Ltmp404-.Ltmp403
	.short	.Lset67
.Ltmp403:
	.byte	80
.Ltmp404:
	.long	0
	.long	0
.Ldebug_loc125:
	.long	.Ltmp251
	.long	.Ltmp253
.Lset68 = .Ltmp406-.Ltmp405
	.short	.Lset68
.Ltmp405:
	.byte	83
.Ltmp406:
	.long	0
	.long	0
.Ldebug_loc127:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.long	.Ltmp81
	.long	.Ltmp85
	.long	.Ltmp87
	.long	.Ltmp98
	.long	0
	.long	0
	.long	.Ltmp155
	.long	.Ltmp156
	.long	.Ltmp157
	.long	.Ltmp166
	.long	0
	.long	0
	.long	.Ltmp178
	.long	.Ltmp179
	.long	.Ltmp180
	.long	.Ltmp185
	.long	0
	.long	0
	.long	.Ltmp178
	.long	.Ltmp179
	.long	.Ltmp180
	.long	.Ltmp185
	.long	0
	.long	0
	.section	.debug_macinfo,"",@progbits

	.typestring _mii_buffer_init, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),chd,chd,&(a(:si)),si)"
	.typestring _mii_close, "f{0}(chd,chd,chd)"
	.typestring _mii_get_in_buffer, "f{ui,ui,ui}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}))"
	.typestring _mii_free_in_buffer, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),si)"
	.typestring _mii_notified.enable, "fe{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),chd)"
	.typestring _mii_notified, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),chd)"
	.typestring _mii_restart_buffer, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}))"
	.typestring _mii_out_init, "f{0}(chd)"
	.typestring _mii_out_packet, "f{si}(chd,&(a(:si)),si,si)"
	.typestring _mii_out_packet_, "f{si}(chd,si,si)"
	.typestring _mii_out_packet_done, "f{0}(chd)"
	.typestring _mii_install_handler, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),si,chd,chd)"
	.typestring _miiNotify, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),chd)"
	.typestring _miiTimeStampInit, "f{0}(ui)"
	.typestring _miiClientUser, "f{0}(&(s(miiData){m(nextBuffer){si},m(packetInLLD){si},m(notificationChannelEnd){ui},m(miiChannelEnd){ui},m(miiPacketsOverran){si},m(refillBankNumber){si},m(freePtr){a(2:si)},m(wrPtr){a(2:si)},m(lastSafePtr){a(2:si)},m(firstPtr){a(2:si)},m(readPtr){a(2:si)},m(notifyLast){uc},m(notifySeen){uc},m(pad0){uc},m(pad1){uc},m(miiPacketsTransmitted){si},m(miiPacketsReceived){si},m(miiPacketsCRCError){si},m(readBank){si},m(kernelStack){a(128:si)}}),si,si,chd)"
	.typestring _tailValues, "a(4:ui)"
	.typestring _globalNow, "si"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	143
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_1,.Lxta.endpoint_labels9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	152
	.long	.Lxta.endpoint_labels9
.cc_bottom cc_1
.cc_top cc_2,.Lxta.endpoint_labels11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	152
	.long	.Lxta.endpoint_labels11
.cc_bottom cc_2
.cc_top cc_3,.Lxta.endpoint_labels10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	157
	.long	.Lxta.endpoint_labels10
.cc_bottom cc_3
.cc_top cc_4,.Lxta.endpoint_labels5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	295
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_4
.cc_top cc_5,.Lxta.endpoint_labels6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	297
	.long	.Lxta.endpoint_labels6
.cc_bottom cc_5
.cc_top cc_6,.Lxta.endpoint_labels7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	317
	.long	.Lxta.endpoint_labels7
.cc_bottom cc_6
.cc_top cc_7,.Lxta.endpoint_labels8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	319
	.long	.Lxta.endpoint_labels8
.cc_bottom cc_7
.cc_top cc_8,.Lxta.endpoint_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	334
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_8
.cc_top cc_9,.Lxta.endpoint_labels3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	334
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_9
.cc_top cc_10,.Lxta.endpoint_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_10
.cc_top cc_11,.Lxta.endpoint_labels4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_11
.cc_top cc_12,.Lxta.endpoint_labels2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	344
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_12
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_13,.Lxtalabel42
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	47
	.long	50
	.long	.Lxtalabel42
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel43
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	51
	.long	55
	.long	.Lxtalabel43
.cc_bottom cc_14
.cc_top cc_15,.Lxtalabel45
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	56
	.long	61
	.long	.Lxtalabel45
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel44
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	56
	.long	61
	.long	.Lxtalabel44
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel47
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	62
	.long	63
	.long	.Lxtalabel47
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel46
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	62
	.long	63
	.long	.Lxtalabel46
.cc_bottom cc_18
.cc_top cc_19,.Lxtalabel48
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	62
	.long	63
	.long	.Lxtalabel48
.cc_bottom cc_19
.cc_top cc_20,.Lxtalabel59
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	69
	.long	71
	.long	.Lxtalabel59
.cc_bottom cc_20
.cc_top cc_21,.Lxtalabel49
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	72
	.long	75
	.long	.Lxtalabel49
.cc_bottom cc_21
.cc_top cc_22,.Lxtalabel56
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel56
.cc_bottom cc_22
.cc_top cc_23,.Lxtalabel54
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel54
.cc_bottom cc_23
.cc_top cc_24,.Lxtalabel15
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel15
.cc_bottom cc_24
.cc_top cc_25,.Lxtalabel54
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel54
.cc_bottom cc_25
.cc_top cc_26,.Lxtalabel26
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel26
.cc_bottom cc_26
.cc_top cc_27,.Lxtalabel26
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel26
.cc_bottom cc_27
.cc_top cc_28,.Lxtalabel53
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel53
.cc_bottom cc_28
.cc_top cc_29,.Lxtalabel53
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel53
.cc_bottom cc_29
.cc_top cc_30,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel0
.cc_bottom cc_30
.cc_top cc_31,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel0
.cc_bottom cc_31
.cc_top cc_32,.Lxtalabel57
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	112
	.long	113
	.long	.Lxtalabel57
.cc_bottom cc_32
.cc_top cc_33,.Lxtalabel11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel11
.cc_bottom cc_33
.cc_top cc_34,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel6
.cc_bottom cc_34
.cc_top cc_35,.Lxtalabel12
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel12
.cc_bottom cc_35
.cc_top cc_36,.Lxtalabel13
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel13
.cc_bottom cc_36
.cc_top cc_37,.Lxtalabel7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel7
.cc_bottom cc_37
.cc_top cc_38,.Lxtalabel15
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel15
.cc_bottom cc_38
.cc_top cc_39,.Lxtalabel9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel9
.cc_bottom cc_39
.cc_top cc_40,.Lxtalabel18
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	116
	.long	119
	.long	.Lxtalabel18
.cc_bottom cc_40
.cc_top cc_41,.Lxtalabel0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	124
	.long	144
	.long	.Lxtalabel0
.cc_bottom cc_41
.cc_top cc_42,.Lxtalabel34
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	150
	.long	150
	.long	.Lxtalabel34
.cc_bottom cc_42
.cc_top cc_43,.Lxtalabel35
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	151
	.long	153
	.long	.Lxtalabel35
.cc_bottom cc_43
.cc_top cc_44,.Lxtalabel50
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	151
	.long	153
	.long	.Lxtalabel50
.cc_bottom cc_44
.cc_top cc_45,.Lxtalabel51
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	154
	.long	154
	.long	.Lxtalabel51
.cc_bottom cc_45
.cc_top cc_46,.Lxtalabel36
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	154
	.long	154
	.long	.Lxtalabel36
.cc_bottom cc_46
.cc_top cc_47,.Lxtalabel21
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	157
	.long	157
	.long	.Lxtalabel21
.cc_bottom cc_47
.cc_top cc_48,.Lxtalabel22
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	157
	.long	157
	.long	.Lxtalabel22
.cc_bottom cc_48
.cc_top cc_49,.Lxtalabel22
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	157
	.long	157
	.long	.Lxtalabel22
.cc_bottom cc_49
.cc_top cc_50,.Lxtalabel37
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	158
	.long	159
	.long	.Lxtalabel37
.cc_bottom cc_50
.cc_top cc_51,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	163
	.long	164
	.long	.Lxtalabel6
.cc_bottom cc_51
.cc_top cc_52,.Lxtalabel6
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	165
	.long	167
	.long	.Lxtalabel6
.cc_bottom cc_52
.cc_top cc_53,.Lxtalabel12
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	165
	.long	167
	.long	.Lxtalabel12
.cc_bottom cc_53
.cc_top cc_54,.Lxtalabel13
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	168
	.long	170
	.long	.Lxtalabel13
.cc_bottom cc_54
.cc_top cc_55,.Lxtalabel7
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	168
	.long	170
	.long	.Lxtalabel7
.cc_bottom cc_55
.cc_top cc_56,.Lxtalabel8
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	171
	.long	171
	.long	.Lxtalabel8
.cc_bottom cc_56
.cc_top cc_57,.Lxtalabel14
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	171
	.long	171
	.long	.Lxtalabel14
.cc_bottom cc_57
.cc_top cc_58,.Lxtalabel9
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	172
	.long	174
	.long	.Lxtalabel9
.cc_bottom cc_58
.cc_top cc_59,.Lxtalabel10
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	175
	.long	176
	.long	.Lxtalabel10
.cc_bottom cc_59
.cc_top cc_60,.Lxtalabel11
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	177
	.long	179
	.long	.Lxtalabel11
.cc_bottom cc_60
.cc_top cc_61,.Lxtalabel52
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	191
	.long	191
	.long	.Lxtalabel52
.cc_bottom cc_61
.cc_top cc_62,.Lxtalabel53
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	192
	.long	195
	.long	.Lxtalabel53
.cc_bottom cc_62
.cc_top cc_63,.Lxtalabel54
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	192
	.long	195
	.long	.Lxtalabel54
.cc_bottom cc_63
.cc_top cc_64,.Lxtalabel53
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	199
	.long	199
	.long	.Lxtalabel53
.cc_bottom cc_64
.cc_top cc_65,.Lxtalabel54
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	199
	.long	199
	.long	.Lxtalabel54
.cc_bottom cc_65
.cc_top cc_66,.Lxtalabel57
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	200
	.long	201
	.long	.Lxtalabel57
.cc_bottom cc_66
.cc_top cc_67,.Lxtalabel56
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	203
	.long	205
	.long	.Lxtalabel56
.cc_bottom cc_67
.cc_top cc_68,.Lxtalabel55
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	206
	.long	208
	.long	.Lxtalabel55
.cc_bottom cc_68
.cc_top cc_69,.Lxtalabel56
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	209
	.long	209
	.long	.Lxtalabel56
.cc_bottom cc_69
.cc_top cc_70,.Lxtalabel58
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	210
	.long	213
	.long	.Lxtalabel58
.cc_bottom cc_70
.cc_top cc_71,.Lxtalabel59
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	216
	.long	217
	.long	.Lxtalabel59
.cc_bottom cc_71
.cc_top cc_72,.Lxtalabel23
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	221
	.long	222
	.long	.Lxtalabel23
.cc_bottom cc_72
.cc_top cc_73,.Lxtalabel23
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	223
	.long	224
	.long	.Lxtalabel23
.cc_bottom cc_73
.cc_top cc_74,.Lxtalabel24
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	225
	.long	227
	.long	.Lxtalabel24
.cc_bottom cc_74
.cc_top cc_75,.Lxtalabel25
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	228
	.long	228
	.long	.Lxtalabel25
.cc_bottom cc_75
.cc_top cc_76,.Lxtalabel26
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	229
	.long	232
	.long	.Lxtalabel26
.cc_bottom cc_76
.cc_top cc_77,.Lxtalabel28
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	237
	.long	238
	.long	.Lxtalabel28
.cc_bottom cc_77
.cc_top cc_78,.Lxtalabel27
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	237
	.long	238
	.long	.Lxtalabel27
.cc_bottom cc_78
.cc_top cc_79,.Lxtalabel29
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	239
	.long	240
	.long	.Lxtalabel29
.cc_bottom cc_79
.cc_top cc_80,.Lxtalabel15
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	246
	.long	250
	.long	.Lxtalabel15
.cc_bottom cc_80
.cc_top cc_81,.Lxtalabel18
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	251
	.long	252
	.long	.Lxtalabel18
.cc_bottom cc_81
.cc_top cc_82,.Lxtalabel20
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	253
	.long	254
	.long	.Lxtalabel20
.cc_bottom cc_82
.cc_top cc_83,.Lxtalabel16
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	255
	.long	256
	.long	.Lxtalabel16
.cc_bottom cc_83
.cc_top cc_84,.Lxtalabel17
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	257
	.long	258
	.long	.Lxtalabel17
.cc_bottom cc_84
.cc_top cc_85,.Lxtalabel19
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	259
	.long	260
	.long	.Lxtalabel19
.cc_bottom cc_85
.cc_top cc_86,.Lxtalabel20
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	262
	.long	263
	.long	.Lxtalabel20
.cc_bottom cc_86
.cc_top cc_87,.Lxtalabel38
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	269
	.long	271
	.long	.Lxtalabel38
.cc_bottom cc_87
.cc_top cc_88,.Lxtalabel41
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	275
	.long	276
	.long	.Lxtalabel41
.cc_bottom cc_88
.cc_top cc_89,.Lxtalabel39
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	275
	.long	276
	.long	.Lxtalabel39
.cc_bottom cc_89
.cc_top cc_90,.Lxtalabel40
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	275
	.long	276
	.long	.Lxtalabel40
.cc_bottom cc_90
.cc_top cc_91,.Lxtalabel49
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	277
	.long	278
	.long	.Lxtalabel49
.cc_bottom cc_91
.cc_top cc_92,.Lxtalabel59
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	279
	.long	280
	.long	.Lxtalabel59
.cc_bottom cc_92
.cc_top cc_93,.Lxtalabel60
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	281
	.long	281
	.long	.Lxtalabel60
.cc_bottom cc_93
.cc_top cc_94,.Lxtalabel31
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	285
	.long	301
	.long	.Lxtalabel31
.cc_bottom cc_94
.cc_top cc_95,.Lxtalabel32
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	307
	.long	323
	.long	.Lxtalabel32
.cc_bottom cc_95
.cc_top cc_96,.Lxtalabel33
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	326
	.long	327
	.long	.Lxtalabel33
.cc_bottom cc_96
.cc_top cc_97,.Lxtalabel30
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	330
	.long	331
	.long	.Lxtalabel30
.cc_bottom cc_97
.cc_top cc_98,.Lxtalabel4
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	337
	.long	.Lxtalabel4
.cc_bottom cc_98
.cc_top cc_99,.Lxtalabel2
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	337
	.long	.Lxtalabel2
.cc_bottom cc_99
.cc_top cc_100,.Lxtalabel5
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	338
	.long	339
	.long	.Lxtalabel5
.cc_bottom cc_100
.cc_top cc_101,.Lxtalabel3
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	338
	.long	339
	.long	.Lxtalabel3
.cc_bottom cc_101
.cc_top cc_102,.Lxtalabel1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	342
	.long	347
	.long	.Lxtalabel1
.cc_bottom cc_102
.Lentries_end5:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start6:
	.long	.Lentries_end7-.Lentries_start6
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_103,.Lxta.loop_labels0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	337
	.long	.Lxta.loop_labels0
.cc_bottom cc_103
.cc_top cc_104,.Lxta.loop_labels1
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_client_user_p1.xc"
	.byte	0
	.long	336
	.long	337
	.long	.Lxta.loop_labels1
.cc_bottom cc_104
.Lentries_end7:
