	.file	"../src/protocol.xc"

	.inline_definition _safe_memcmp
	.inline_definition _safe_memmove
	.inline_definition _safe_memset
	.weak _i.if_addr.msg.maxchanends.group
	.max_reduce _i.if_addr.msg.max.maxchanends, _i.if_addr.msg.maxchanends.group, 0
	.weak _i.if_addr.msg.maxcores.group
	.max_reduce _i.if_addr.msg.max.maxcores, _i.if_addr.msg.maxcores.group, 0
	.weak _i.if_addr.msg.maxtimers.group
	.max_reduce _i.if_addr.msg.max.maxtimers, _i.if_addr.msg.maxtimers.group, 0
	.weak _i.if_addr.msg.nstackwords.group
	.globl _i.if_addr.msg.nstackwords.group
	.weak _i.if_addr.msg.fns.group
	.globl _i.if_addr.msg.fns.group
	.max_reduce _i.if_addr.msg.max.nstackwords, _i.if_addr.msg.nstackwords.group, 0
	.max_reduce _i.if_addr.msg.fns, _i.if_addr.msg.fns.group, 0
	.weak _i.if_addr.__interface_init.maxchanends.group
	.max_reduce _i.if_addr.__interface_init.max.maxchanends, _i.if_addr.__interface_init.maxchanends.group, 0
	.weak _i.if_addr.__interface_init.maxcores.group
	.max_reduce _i.if_addr.__interface_init.max.maxcores, _i.if_addr.__interface_init.maxcores.group, 0
	.weak _i.if_addr.__interface_init.maxtimers.group
	.max_reduce _i.if_addr.__interface_init.max.maxtimers, _i.if_addr.__interface_init.maxtimers.group, 0
	.weak _i.if_addr.__interface_init.nstackwords.group
	.globl _i.if_addr.__interface_init.nstackwords.group
	.weak _i.if_addr.__interface_init.fns.group
	.globl _i.if_addr.__interface_init.fns.group
	.max_reduce _i.if_addr.__interface_init.max.nstackwords, _i.if_addr.__interface_init.nstackwords.group, 0
	.max_reduce _i.if_addr.__interface_init.fns, _i.if_addr.__interface_init.fns.group, 0
	.weak _i.if_addr._client_call.maxchanends.group
	.add_to_set _i.if_addr._client_call.maxchanends.group, (__interface_client_call_other.maxchanends + __interface_client_call_extra.maxchanends), __interface_client_call_other
	.max_reduce _i.if_addr._client_call.max.maxchanends, _i.if_addr._client_call.maxchanends.group, 0
	.weak _i.if_addr._client_call.maxcores.group
	.add_to_set _i.if_addr._client_call.maxcores.group, (__interface_client_call_other.maxcores + __interface_client_call_extra.maxcores), __interface_client_call_other
	.max_reduce _i.if_addr._client_call.max.maxcores, _i.if_addr._client_call.maxcores.group, 0
	.weak _i.if_addr._client_call.maxtimers.group
	.add_to_set _i.if_addr._client_call.maxtimers.group, (__interface_client_call_other.maxtimers + __interface_client_call_extra.maxtimers), __interface_client_call_other
	.max_reduce _i.if_addr._client_call.max.maxtimers, _i.if_addr._client_call.maxtimers.group, 0
	.weak _i.if_addr._client_call.nstackwords.group
	.globl _i.if_addr._client_call.nstackwords.group
	.weak _i.if_addr._client_call.fns.group
	.globl _i.if_addr._client_call.fns.group
	.add_to_set _i.if_addr._client_call.nstackwords.group, (__interface_client_call_other.nstackwords + __interface_client_call_extra.nstackwords), __interface_client_call_other
	.add_to_set _i.if_addr._client_call.fns.group, __interface_client_call_other
	.max_reduce _i.if_addr._client_call.max.nstackwords, _i.if_addr._client_call.nstackwords.group, 0
	.max_reduce _i.if_addr._client_call.fns, _i.if_addr._client_call.fns.group, 0
	.weak _i.if_led.msg.maxchanends.group
	.max_reduce _i.if_led.msg.max.maxchanends, _i.if_led.msg.maxchanends.group, 0
	.weak _i.if_led.msg.maxcores.group
	.max_reduce _i.if_led.msg.max.maxcores, _i.if_led.msg.maxcores.group, 0
	.weak _i.if_led.msg.maxtimers.group
	.max_reduce _i.if_led.msg.max.maxtimers, _i.if_led.msg.maxtimers.group, 0
	.weak _i.if_led.msg.nstackwords.group
	.globl _i.if_led.msg.nstackwords.group
	.weak _i.if_led.msg.fns.group
	.globl _i.if_led.msg.fns.group
	.max_reduce _i.if_led.msg.max.nstackwords, _i.if_led.msg.nstackwords.group, 0
	.max_reduce _i.if_led.msg.fns, _i.if_led.msg.fns.group, 0
	.weak _i.if_led.__interface_init.maxchanends.group
	.max_reduce _i.if_led.__interface_init.max.maxchanends, _i.if_led.__interface_init.maxchanends.group, 0
	.weak _i.if_led.__interface_init.maxcores.group
	.max_reduce _i.if_led.__interface_init.max.maxcores, _i.if_led.__interface_init.maxcores.group, 0
	.weak _i.if_led.__interface_init.maxtimers.group
	.max_reduce _i.if_led.__interface_init.max.maxtimers, _i.if_led.__interface_init.maxtimers.group, 0
	.weak _i.if_led.__interface_init.nstackwords.group
	.globl _i.if_led.__interface_init.nstackwords.group
	.weak _i.if_led.__interface_init.fns.group
	.globl _i.if_led.__interface_init.fns.group
	.max_reduce _i.if_led.__interface_init.max.nstackwords, _i.if_led.__interface_init.nstackwords.group, 0
	.max_reduce _i.if_led.__interface_init.fns, _i.if_led.__interface_init.fns.group, 0
	.weak _i.if_led._client_call.maxchanends.group
	.add_to_set _i.if_led._client_call.maxchanends.group, (__interface_client_call_other.maxchanends + __interface_client_call_extra.maxchanends), __interface_client_call_other
	.max_reduce _i.if_led._client_call.max.maxchanends, _i.if_led._client_call.maxchanends.group, 0
	.weak _i.if_led._client_call.maxcores.group
	.add_to_set _i.if_led._client_call.maxcores.group, (__interface_client_call_other.maxcores + __interface_client_call_extra.maxcores), __interface_client_call_other
	.max_reduce _i.if_led._client_call.max.maxcores, _i.if_led._client_call.maxcores.group, 0
	.weak _i.if_led._client_call.maxtimers.group
	.add_to_set _i.if_led._client_call.maxtimers.group, (__interface_client_call_other.maxtimers + __interface_client_call_extra.maxtimers), __interface_client_call_other
	.max_reduce _i.if_led._client_call.max.maxtimers, _i.if_led._client_call.maxtimers.group, 0
	.weak _i.if_led._client_call.nstackwords.group
	.globl _i.if_led._client_call.nstackwords.group
	.weak _i.if_led._client_call.fns.group
	.globl _i.if_led._client_call.fns.group
	.add_to_set _i.if_led._client_call.nstackwords.group, (__interface_client_call_other.nstackwords + __interface_client_call_extra.nstackwords), __interface_client_call_other
	.add_to_set _i.if_led._client_call.fns.group, __interface_client_call_other
	.max_reduce _i.if_led._client_call.max.nstackwords, _i.if_led._client_call.nstackwords.group, 0
	.max_reduce _i.if_led._client_call.fns, _i.if_led._client_call.fns.group, 0
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.globread filter,usage.anon.3,"../src/protocol.xc:34: error: previously used here"
	.call protocol,filter
	.call protocol,fetchFrameFromHub
	.call send,passFrameToHub
	.call send,make_packet
	.call make_packet,usage.anon.2
	.call filter,isSNCN
	.call filter,isForMe
	.call usage.anon.2,memset
	.call usage.anon.1,memmove
	.call usage.anon.0,memcmp
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set filter.locnochandec, 1
	.set make_packet.locnochandec, 1
	.set send.locnochandec, 1
	.set protocol.locnochandec, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set make_packet.locnoglobalaccess, 1
	.set send.locnoglobalaccess, 1
	.set protocol.locnoglobalaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set make_packet.locnointerfaceaccess, 1
	.set protocol.locnointerfaceaccess, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set filter.locnonotificationselect, 1
	.set make_packet.locnonotificationselect, 1
	.set send.locnonotificationselect, 1
	.set protocol.locnonotificationselect, 1
	.assert 1,memset.actnoglobalaccess, "safe/string.h:21: error: passing non-local alias to function `memset' which accesses a global variable"
	.assert 1,memmove.actnoglobalaccess, "safe/string.h:15: error: passing non-local alias to function `memmove' which accesses a global variable"
	.globpassesref isForMe, usage.anon.3,"../src/protocol.xc:34: error: call to `isForMe' in `filter' makes alias of global 'MAC_P1_NODE_2'"


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/../src/protocol.xc"
	.file	2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/ethernet_config.h"
	.file	3 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/<synthesized>"
	.file	4 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/safe/string.h"
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
	.section	.text._i.if_led._chan.msg,"ax",@progbits
	.cc_top _i.if_led._chan.msg.function
	.weak	_i.if_led._chan.msg
	.align	4
	.type	_i.if_led._chan.msg,@function
_i.if_led._chan.msg:
.Ltmp2:
	.cfi_startproc
.Lfunc_begin0:
	.loc	3 0 0
	entsp 2
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset 15, 0
	.loc	3 0 0 prologue_end
.Ltmp5:
	stw r4, sp[1]
.Ltmp6:
	.cfi_offset 4, -4
	ldw r3, r0[0]
	getr r4, 2
	setd res[r4], r3
	out res[r4], r4
	outct res[r4], 2
	chkct res[r4], 1
	outt res[r4], r1
	outt res[r4], r2
	outct res[r4], 2
	ldw r2, r0[1]
.Ltmp7:
	ldc r1, 0
.Ltmp8:
	mov r0, r4
.Ltmp9:
	bl __interface_client_call
	in r0, res[r4]
	chkct res[r4], 1
	freer res[r4]
	ldw r4, sp[1]
	retsp 2
.Ltmp10:
.Ltmp11:
	.size	_i.if_led._chan.msg, .Ltmp11-_i.if_led._chan.msg
.Lfunc_end0:
.Ltmp12:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom _i.if_led._chan.msg.function
	.set	_i.if_led._chan.msg.nstackwords,((_i.if_led._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.if_led._client_call.max.nstackwords)) + 2)
	.globl	_i.if_led._chan.msg.nstackwords
	.weak	_i.if_led._chan.msg.nstackwords
	.set	_i.if_led._chan.msg.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.if_led._client_call.max.maxcores) $M 1
	.globl	_i.if_led._chan.msg.maxcores
	.weak	_i.if_led._chan.msg.maxcores
	.set	_i.if_led._chan.msg.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.if_led._client_call.max.maxtimers) $M 0
	.globl	_i.if_led._chan.msg.maxtimers
	.weak	_i.if_led._chan.msg.maxtimers
	.set	_i.if_led._chan.msg.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.if_led._client_call.max.maxchanends)) $M 1
	.globl	_i.if_led._chan.msg.maxchanends
	.weak	_i.if_led._chan.msg.maxchanends
	.section	.text._i.if_addr._chan.msg,"ax",@progbits
	.cc_top _i.if_addr._chan.msg.function
	.weak	_i.if_addr._chan.msg
	.align	4
	.type	_i.if_addr._chan.msg,@function
_i.if_addr._chan.msg:
.Ltmp15:
	.cfi_startproc
.Lfunc_begin1:
	.loc	3 0 0
	entsp 3
.Ltmp16:
	.cfi_def_cfa_offset 12
.Ltmp17:
	.cfi_offset 15, 0
	.loc	3 0 0 prologue_end
.Ltmp18:
	stw r4, sp[2]
.Ltmp19:
	.cfi_offset 4, -4
	ldw r11, r0[0]
	getr r4, 2
	setd res[r4], r11
	out res[r4], r4
	outct res[r4], 2
	chkct res[r4], 1
	out res[r4], r3
	stw r1, sp[1]
	out res[r4], r2
	outct res[r4], 2
	ldw r2, r0[1]
.Ltmp20:
	ldaw r1, sp[1]
.Ltmp21:
	mov r0, r4
.Ltmp22:
	bl __interface_client_call
	chkct res[r4], 1
	freer res[r4]
	ldw r4, sp[2]
	retsp 3
.Ltmp23:
.Ltmp24:
	.size	_i.if_addr._chan.msg, .Ltmp24-_i.if_addr._chan.msg
.Lfunc_end1:
.Ltmp25:
	.cfi_endproc
.Leh_func_end1:

	.align	4
	.cc_bottom _i.if_addr._chan.msg.function
	.set	_i.if_addr._chan.msg.nstackwords,((_i.if_addr._client_call.max.nstackwords $M ($D __interface_client_call.nstackwords ? __interface_client_call.nstackwords $: _i.if_addr._client_call.max.nstackwords)) + 3)
	.globl	_i.if_addr._chan.msg.nstackwords
	.weak	_i.if_addr._chan.msg.nstackwords
	.set	_i.if_addr._chan.msg.maxcores,($D __interface_client_call.maxcores ? __interface_client_call.maxcores $: _i.if_addr._client_call.max.maxcores) $M 1
	.globl	_i.if_addr._chan.msg.maxcores
	.weak	_i.if_addr._chan.msg.maxcores
	.set	_i.if_addr._chan.msg.maxtimers,($D __interface_client_call.maxtimers ? __interface_client_call.maxtimers $: _i.if_addr._client_call.max.maxtimers) $M 0
	.globl	_i.if_addr._chan.msg.maxtimers
	.weak	_i.if_addr._chan.msg.maxtimers
	.set	_i.if_addr._chan.msg.maxchanends,(1 + ($D __interface_client_call.maxchanends ? __interface_client_call.maxchanends $: _i.if_addr._client_call.max.maxchanends)) $M 1
	.globl	_i.if_addr._chan.msg.maxchanends
	.weak	_i.if_addr._chan.msg.maxchanends
	.text
	.cc_top protocol.function
	.globl	protocol
	.align	4
	.type	protocol,@function
protocol:
.Ltmp31:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 105 0
.Lxtalabel0:
	entsp 407
.Ltmp32:
	.cfi_def_cfa_offset 1628
.Ltmp33:
	.cfi_offset 15, 0
	.loc	1 104 0 prologue_end
.Ltmp34:
	stw r4, sp[406]
.Ltmp35:
	.cfi_offset 4, -4
	stw r5, sp[405]
.Ltmp36:
	.cfi_offset 5, -8
	stw r6, sp[404]
.Ltmp37:
	.cfi_offset 6, -12
	stw r7, sp[403]
.Ltmp38:
	.cfi_offset 7, -16
	mov r4, r3
.Ltmp39:
	mov r5, r2
.Ltmp40:
	mov r6, r1
.Ltmp41:
	mov r7, r0
.Ltmp42:
	.loc	1 111 0
	clre
	ldap r11, .Ltmp43
	setv res[r7], r11
	eeu res[r7]
	ldap r11, .Ltmp44
	setv res[r6], r11
	eeu res[r6]
	.loc	1 117 0
	
	.xtabranch .LBB2_2, .LBB2_1
waiteu
.Ltmp43:
.LBB2_1:
.Lxtalabel1:
	ldaw r1, sp[2]
	ldaw r2, sp[402]
	ldc r3, 400
	.loc	1 113 0
	mov r0, r7
	bu .LBB2_3
.Ltmp44:
.LBB2_2:
.Lxtalabel2:
	ldaw r1, sp[2]
	ldaw r2, sp[402]
.Ltmp45:
	ldc r3, 400
	.loc	1 116 0
	mov r0, r6
.Ltmp46:
.LBB2_3:
.Lxtalabel3:
.Lxta.call_labels0:
	bl fetchFrameFromHub
.Ltmp47:
	ldc r0, 1600
	.loc	1 120 0
	stw r0, sp[1]
	ldaw r0, sp[2]
	mov r2, r5
	mov r3, r4
.Lxta.call_labels1:
	bl filter
	.loc	1 111 0
	clre
	ldap r11, .Ltmp43
	setv res[r7], r11
	eeu res[r7]
	ldap r11, .Ltmp44
	setv res[r6], r11
	eeu res[r6]
	.loc	1 117 0
	
	.xtabranch .LBB2_2, .LBB2_1
waiteu
.Ltmp48:
.Ltmp49:
	.size	protocol, .Ltmp49-protocol
.Lfunc_end2:
.Ltmp50:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom protocol.function
	.set	protocol.nstackwords,((fetchFrameFromHub.nstackwords $M filter.nstackwords) + 407)
	.globl	protocol.nstackwords
	.set	protocol.maxcores,fetchFrameFromHub.maxcores $M filter.maxcores $M 1
	.globl	protocol.maxcores
	.set	protocol.maxtimers,fetchFrameFromHub.maxtimers $M filter.maxtimers $M 0
	.globl	protocol.maxtimers
	.set	protocol.maxchanends,fetchFrameFromHub.maxchanends $M filter.maxchanends $M 0
	.globl	protocol.maxchanends
	.cc_top send.function
	.globl	send
	.align	4
	.type	send,@function
send:
.Ltmp59:
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 78 0
.Lxtalabel4:
	entsp 93
.Ltmp60:
	.cfi_def_cfa_offset 372
.Ltmp61:
	.cfi_offset 15, 0
	.loc	1 77 0 prologue_end
.Ltmp62:
	stw r4, sp[92]
.Ltmp63:
	.cfi_offset 4, -4
	stw r5, sp[91]
.Ltmp64:
	.cfi_offset 5, -8
	stw r6, sp[90]
.Ltmp65:
	.cfi_offset 6, -12
	stw r7, sp[89]
.Ltmp66:
	.cfi_offset 7, -16
	stw r8, sp[88]
.Ltmp67:
	.cfi_offset 8, -20
	stw r9, sp[87]
.Ltmp68:
	.cfi_offset 9, -24
	stw r10, sp[86]
.Ltmp69:
	.cfi_offset 10, -28
	stw r2, sp[5]
	stw r1, sp[10]
.Ltmp70:
	stw r0, sp[9]
.Ltmp71:
	ldc r4, 14
	ldaw r1, sp[71]
	.loc	1 66 0
.Ltmp72:
	add r0, r1, r4
	stw r0, sp[8]
	ldc r0, 13
	.loc	1 64 0
	add r0, r1, r0
	stw r0, sp[7]
	ldaw r6, sp[11]
.Ltmp73:
	.loc	1 60 0
	add r0, r6, 6
	stw r0, sp[6]
	.loc	1 59 0
	add r0, r1, 6
.Ltmp74:
	.loc	1 83 0
	stw r0, sp[4]
	clre
	ldw r0, r2[0]
.Ltmp75:
	ldap r11, .Ltmp76
	setv res[r0], r11
	eeu res[r0]
	ldc r8, 0
	ldc r10, 240
	
	.xtabranch .LBB3_1
waiteu
.Ltmp77:
.Ltmp76:
.LBB3_1:
.Lxtalabel5:
	in r1, res[r0]
	ldc r2, 254
	add r2, r1, r2
	zext r2, 8
	sub r1, r1, r2
	setd res[r0], r1
	outct res[r0], 1
	in r1, res[r0]
	.loc	1 86 0
	lsu r1, r1, r4
	in r9, res[r0]
.Ltmp78:
	mov r2, r8
	bt r1, .LBB3_6
	ldc r1, 9
	out res[r0], r1
	out res[r0], r2
	outct res[r0], 2
	in r1, res[r0]
	chkct res[r0], 1
	bf r1, .LBB3_6
	stw r4, sp[1]
	mov r1, r2
	mov r7, r2
	mov r2, r6
	mov r3, r7
	bl __interface_block_load
	ldaw r5, sp[71]
	.loc	4 21 0
.Ltmp79:
	mov r0, r5
	mov r1, r7
	ldc r2, 60
	bl memset
	mov r2, r6
	ldw r0, sp[4]
	lsu r1, r0, r5
.Ltmp80:
	ldw r5, sp[6]
.Ltmp81:
	.loc	1 59 0
	bt r1, .LBB3_7
	mov r1, r2
	mov r6, r2
	ldc r2, 6
	bl memcpy
	mov r2, r6
	.loc	1 60 0
	lsu r0, r5, r2
	bt r0, .LBB3_7
.Lxtalabel6:
.Ltmp82:
	mov r6, r7
	ld16s r0, r5[r6]
	zext r0, 16
	add r1, r5, 2
	ld16s r1, r1[r6]
	shl r1, r1, 16
	or r0, r0, r1
	stw r0, sp[71]
	add r0, r5, 4
	ld16s r0, r0[r6]
	ldaw r1, sp[72]
	st16 r0, r1[r6]
	.loc	1 63 0
	ldaw r0, sp[14]
	ld16s r0, r0[r6]
	ldaw r1, sp[74]
	st8 r0, r1[r6]
	shr r0, r0, 8
	.loc	1 64 0
	ldw r1, sp[7]
	st8 r0, r1[r6]
	.loc	1 66 0
	ldw r0, sp[8]
	st8 r9, r0[r6]
	.loc	1 68 0
	mov r0, r2
	ldaw r1, sp[71]
	mov r7, r2
	ldc r5, 60
	mov r2, r5
	bl __memcpy_4
	ldw r9, sp[5]
.Ltmp83:
	ldw r0, r9[0]
	out res[r0], r6
	mov r8, r6
	outct res[r0], 1
.Ltmp84:
	.loc	1 92 0
	ldw r0, sp[9]
	mov r1, r7
	mov r2, r5
	mov r3, r10
.Lxta.call_labels2:
	bl passFrameToHub
	.loc	1 93 0
	ldw r0, sp[10]
	mov r1, r7
	mov r6, r7
	mov r2, r5
	mov r3, r10
.Lxta.call_labels3:
	bl passFrameToHub
	.loc	1 83 0
	clre
	ldw r0, r9[0]
.Ltmp85:
	ldap r11, .Ltmp76
	setv res[r0], r11
	eeu res[r0]
	
	.xtabranch .LBB3_1
waiteu
.Ltmp86:
.LBB3_6:
	ecallf r2
.LBB3_7:
	ecallf r7
.Ltmp87:
	.size	send, .Ltmp87-send
.Lfunc_end3:
.Ltmp88:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom send.function
	.set	send.nstackwords,((__interface_block_load.nstackwords $M memset.nstackwords $M memcpy.nstackwords $M __memcpy_4.nstackwords $M passFrameToHub.nstackwords) + 93)
	.globl	send.nstackwords
	.set	send.maxcores,__interface_block_load.maxcores $M passFrameToHub.maxcores $M 1
	.globl	send.maxcores
	.set	send.maxtimers,__interface_block_load.maxtimers $M passFrameToHub.maxtimers $M 0
	.globl	send.maxtimers
	.set	send.maxchanends,__interface_block_load.maxchanends $M passFrameToHub.maxchanends $M 0
	.globl	send.maxchanends
	.cc_top filter.function
	.globl	filter
	.align	4
	.type	filter,@function
filter:
.Ltmp94:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 31 0
.Lxtalabel7:
	entsp 5
.Ltmp95:
	.cfi_def_cfa_offset 20
.Ltmp96:
	.cfi_offset 15, 0
	.loc	1 30 0 prologue_end
.Ltmp97:
	stw r4, sp[4]
.Ltmp98:
	.cfi_offset 4, -4
	stw r5, sp[3]
.Ltmp99:
	.cfi_offset 5, -8
	stw r6, sp[2]
.Ltmp100:
	.cfi_offset 6, -12
	stw r7, sp[1]
.Ltmp101:
	.cfi_offset 7, -16
	mov r6, r3
.Ltmp102:
	mov r7, r2
.Ltmp103:
	mov r4, r0
.Ltmp104:
	.loc	1 34 0
	ldaw r1, dp[MAC_P1_NODE_2]
.Ltmp105:
	ldw r5, sp[6]
	ldc r3, 6
	mov r0, r4
	mov r2, r5
.Lxta.call_labels4:
	bl isForMe
	.loc	1 34 0
	bf r0, .LBB4_4
.Ltmp106:
	mov r0, r4
	mov r1, r5
.Ltmp107:
	bl isSNCN
	bf r0, .LBB4_4
.Lxtalabel8:
.Ltmp108:
	ldc r0, 14
	.loc	1 37 0
	lsu r1, r0, r5
.Ltmp109:
	ecallf r1
.Ltmp110:
	ld8u r1, r4[r0]
.Ltmp111:
	bf r1, .LBB4_4
.Lxtalabel9:
.Ltmp112:
	mkmsk r0, 4
	.loc	1 40 0
	lsu r2, r0, r5
	ecallf r2
.Ltmp113:
	.loc	1 40 0
	ld8u r2, r4[r0]
	.loc	1 40 0
	ldw r0, r7[0]
	ldw r3, r7[1]
	ldw r3, r3[0]
	.loc	1 40 0
.Lxta.call_labels5:
	bla r3
.Ltmp114:
	mov r2, r0
.Ltmp115:
	.loc	1 42 0
	ldw r0, r6[0]
	ldw r1, r6[1]
	ldw r11, r1[0]
	.loc	1 42 0
	mov r1, r4
	mov r3, r5
.Lxta.call_labels6:
	bla r11
.Ltmp116:
.LBB4_4:
.Lxtalabel10:
	ldw r7, sp[1]
	ldw r6, sp[2]
	ldw r5, sp[3]
	ldw r4, sp[4]
	retsp 5
.Ltmp117:
.Ltmp118:
	.size	filter, .Ltmp118-filter
.Lfunc_end4:
.Ltmp119:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom filter.function
	.set	filter.nstackwords,((isForMe.nstackwords $M isSNCN.nstackwords $M _i.if_led.msg.max.nstackwords $M _i.if_addr.msg.max.nstackwords) + 5)
	.globl	filter.nstackwords
	.set	filter.maxcores,_i.if_addr.msg.max.maxcores $M _i.if_led.msg.max.maxcores $M isForMe.maxcores $M isSNCN.maxcores $M 1
	.globl	filter.maxcores
	.set	filter.maxtimers,_i.if_addr.msg.max.maxtimers $M _i.if_led.msg.max.maxtimers $M isForMe.maxtimers $M isSNCN.maxtimers $M 0
	.globl	filter.maxtimers
	.set	filter.maxchanends,_i.if_addr.msg.max.maxchanends $M _i.if_led.msg.max.maxchanends $M isForMe.maxchanends $M isSNCN.maxchanends $M 0
	.globl	filter.maxchanends
	.cc_top make_packet.function
	.globl	make_packet
	.align	4
	.type	make_packet,@function
make_packet:
.Ltmp128:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 53 0
.Lxtalabel11:
	entsp 24
.Ltmp129:
	.cfi_def_cfa_offset 96
.Ltmp130:
	.cfi_offset 15, 0
	.loc	1 52 0 prologue_end
.Ltmp131:
	stw r4, sp[23]
.Ltmp132:
	.cfi_offset 4, -4
	stw r5, sp[22]
.Ltmp133:
	.cfi_offset 5, -8
	stw r6, sp[21]
.Ltmp134:
	.cfi_offset 6, -12
	stw r7, sp[20]
.Ltmp135:
	.cfi_offset 7, -16
	stw r8, sp[19]
.Ltmp136:
	.cfi_offset 8, -20
	stw r9, sp[18]
.Ltmp137:
	.cfi_offset 9, -24
	stw r10, sp[17]
.Ltmp138:
	.cfi_offset 10, -28
	mov r5, r2
	stw r1, sp[1]
.Ltmp139:
	mov r4, r0
.Ltmp140:
	ldaw r8, sp[2]
	ldc r2, 0
	ldc r3, 60
	.loc	4 21 0
.Ltmp141:
	mov r0, r8
	mov r1, r2
	mov r7, r2
	mov r2, r3
	mov r6, r3
	bl memset
.Ltmp142:
	.loc	1 59 0
	add r0, r8, 6
.Ltmp143:
	lsu r1, r0, r8
	bt r1, .LBB5_8
.Lxtalabel12:
	ldc r1, 6
	lsu r1, r5, r1
	bt r1, .LBB5_8
	ldc r10, 6
	mov r1, r4
	mov r2, r10
	bl memcpy
	.loc	1 60 0
	add r0, r4, 6
	lsu r1, r0, r4
	bt r1, .LBB5_8
	sub r1, r5, 6
	lsu r1, r1, r10
	bt r1, .LBB5_8
	ldc r1, 4
	ld8u r1, r0[r1]
	ldc r2, 5
	ld8u r2, r0[r2]
	shl r2, r2, 8
	or r1, r2, r1
	ldaw r2, sp[3]
	st16 r1, r2[r7]
	ldc r10, 13
	.loc	1 63 0
	lsu r9, r5, r10
	.loc	1 60 0
	bl __misaligned_load
	stw r0, sp[2]
	.loc	1 63 0
	bt r9, .LBB5_8
	ldc r0, 12
	ld8u r1, r4[r0]
	st8 r1, r8[r0]
	ldc r0, 14
	.loc	1 64 0
	lsu r1, r5, r0
	bt r1, .LBB5_8
.Ltmp144:
	ld8u r1, r4[r10]
	st8 r1, r8[r10]
	.loc	1 66 0
	ldw r1, sp[1]
	st8 r1, r8[r0]
	.loc	1 68 0
	lsu r0, r5, r6
	bt r0, .LBB5_8
.Ltmp145:
	ldaw r1, sp[2]
	ldc r2, 60
	mov r0, r4
	bl memcpy
	ldw r10, sp[17]
	ldw r9, sp[18]
	ldw r8, sp[19]
	ldw r7, sp[20]
	ldw r6, sp[21]
	ldw r5, sp[22]
	ldw r4, sp[23]
.Ltmp146:
	retsp 24
.Ltmp147:
.LBB5_8:
	ecallf r7
.Ltmp148:
	.size	make_packet, .Ltmp148-make_packet
.Lfunc_end5:
.Ltmp149:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom make_packet.function
	.set	make_packet.nstackwords,((memset.nstackwords $M __misaligned_load.nstackwords $M memcpy.nstackwords) + 24)
	.globl	make_packet.nstackwords
	.set	make_packet.maxcores,1
	.globl	make_packet.maxcores
	.set	make_packet.maxtimers,0
	.globl	make_packet.maxtimers
	.set	make_packet.maxchanends,0
	.globl	make_packet.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top MAC_P1_NODE_2.data
	.align	4
	.type	MAC_P1_NODE_2,@object
	.size MAC_P1_NODE_2,6
MAC_P1_NODE_2:
	.ascii	 "\360\312\360\312\360\202"
	.cc_bottom MAC_P1_NODE_2.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	1377
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	3
	.long	195
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.long	212
	.byte	6
	.long	217
	.byte	5
	.byte	0
	.byte	7
	.ascii	 "MAC_P1_NODE_2"
	.byte	0
	.ascii	 "MAC_P1_NODE_2"
	.byte	0
	.long	220
	.byte	2
	.byte	38
	.byte	5
	.byte	3
	.long	MAC_P1_NODE_2
	.byte	8
	.ascii	 "_i.if_led._chan.msg"
	.byte	0
	.ascii	 "_i.if_led._chan.msg"
	.byte	0
	.byte	3
	.long	4294967295
	.long	357
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	9
	.ascii	 "param2"
	.byte	0
	.byte	3
	.long	16777215
	.long	195
	.long	.Ldebug_loc4+0
	.byte	0
	.byte	2
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	10
	.ascii	 "_i.if_addr._chan.msg"
	.byte	0
	.ascii	 "_i.if_addr._chan.msg"
	.byte	0
	.byte	3
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	9
	.ascii	 "param2"
	.byte	0
	.byte	3
	.long	16777215
	.long	357
	.long	.Ldebug_loc10+0
	.byte	0
	.byte	11
	.ascii	 "_safe_memcmp"
	.byte	0
	.ascii	 "_safe_memcmp"
	.byte	0
	.byte	4
	.byte	8
	.long	357
	.byte	1
	.byte	12
	.ascii	 "s1"
	.byte	0
	.byte	4
	.byte	8
	.long	1375
	.byte	12
	.ascii	 "s2"
	.byte	0
	.byte	4
	.byte	8
	.long	1375
	.byte	12
	.byte	110
	.byte	0
	.byte	4
	.byte	8
	.long	1221
	.byte	0
	.byte	11
	.ascii	 "_safe_memmove"
	.byte	0
	.ascii	 "_safe_memmove"
	.byte	0
	.byte	4
	.byte	12
	.long	576
	.byte	1
	.byte	12
	.ascii	 "s1"
	.byte	0
	.byte	4
	.byte	12
	.long	576
	.byte	12
	.ascii	 "s2"
	.byte	0
	.byte	4
	.byte	12
	.long	1375
	.byte	12
	.byte	110
	.byte	0
	.byte	4
	.byte	12
	.long	1221
	.byte	0
	.byte	13
	.long	195
	.byte	12
	.byte	11
	.ascii	 "_safe_memset"
	.byte	0
	.ascii	 "_safe_memset"
	.byte	0
	.byte	4
	.byte	18
	.long	576
	.byte	1
	.byte	12
	.byte	115
	.byte	0
	.byte	4
	.byte	18
	.long	576
	.byte	12
	.byte	99
	.byte	0
	.byte	4
	.byte	18
	.long	357
	.byte	12
	.byte	110
	.byte	0
	.byte	4
	.byte	18
	.long	1221
	.byte	0
	.byte	14
	.ascii	 "filter"
	.byte	0
	.ascii	 "filter"
	.byte	0
	.byte	1
	.byte	31
	.byte	1
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	15
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	30
	.long	1255
	.long	.Ldebug_loc44+0
	.byte	15
	.ascii	 "nBytes"
	.byte	0
	.byte	1
	.byte	30
	.long	357
	.long	.Ldebug_loc48+0
	.byte	15
	.ascii	 "led"
	.byte	0
	.byte	1
	.byte	30
	.long	1208
	.long	.Ldebug_loc56+0
	.byte	15
	.ascii	 "addr"
	.byte	0
	.byte	1
	.byte	30
	.long	1208
	.long	.Ldebug_loc60+0
	.byte	16
	.long	.Ltmp104
	.long	.Ltmp116
	.byte	16
	.long	.Ltmp104
	.long	.Ltmp116
	.byte	17
	.ascii	 "reply"
	.byte	0
	.byte	1
	.byte	32
	.long	357
	.long	.Ldebug_loc64+0
	.byte	0
	.byte	0
	.byte	0
	.byte	18
	.ascii	 "make_packet"
	.byte	0
	.ascii	 "make_packet"
	.byte	0
	.byte	1
	.byte	53
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	52
	.long	1255
	.byte	12
	.ascii	 "reply"
	.byte	0
	.byte	1
	.byte	52
	.long	195
	.byte	19
	.byte	19
	.byte	20
	.ascii	 "txbuffer"
	.byte	0
	.byte	1
	.byte	54
	.long	1260
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.ascii	 "send"
	.byte	0
	.ascii	 "send"
	.byte	0
	.byte	1
	.byte	78
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	15
	.ascii	 "dataToP1"
	.byte	0
	.byte	1
	.byte	77
	.long	1197
	.long	.Ldebug_loc28+0
	.byte	15
	.ascii	 "dataToP2"
	.byte	0
	.byte	1
	.byte	77
	.long	1197
	.long	.Ldebug_loc32+0
	.byte	15
	.ascii	 "addr"
	.byte	0
	.byte	1
	.byte	77
	.long	1208
	.long	.Ldebug_loc36+0
	.byte	16
	.long	.Ltmp72
	.long	.Ltmp86
	.byte	16
	.long	.Ltmp72
	.long	.Ltmp86
	.byte	21
	.ascii	 "txbuffer"
	.byte	0
	.byte	1
	.byte	79
	.long	1272
	.byte	2
	.byte	145
	.byte	44
	.byte	17
	.ascii	 "reply"
	.byte	0
	.byte	1
	.byte	85
	.long	357
	.long	.Ldebug_loc41+0
	.byte	20
	.ascii	 "address"
	.byte	0
	.byte	1
	.byte	85
	.long	1255
	.byte	0
	.byte	0
	.byte	0
	.byte	14
	.ascii	 "protocol"
	.byte	0
	.ascii	 "protocol"
	.byte	0
	.byte	1
	.byte	105
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	15
	.ascii	 "dataFromP1"
	.byte	0
	.byte	1
	.byte	104
	.long	1197
	.long	.Ldebug_loc12+0
	.byte	15
	.ascii	 "dataFromP2"
	.byte	0
	.byte	1
	.byte	104
	.long	1197
	.long	.Ldebug_loc16+0
	.byte	15
	.ascii	 "led"
	.byte	0
	.byte	1
	.byte	104
	.long	1208
	.long	.Ldebug_loc20+0
	.byte	15
	.ascii	 "addr"
	.byte	0
	.byte	1
	.byte	104
	.long	1208
	.long	.Ldebug_loc24+0
	.byte	16
	.long	.Ltmp42
	.long	.Ltmp48
	.byte	16
	.long	.Ltmp42
	.long	.Ltmp48
	.byte	21
	.ascii	 "nbytes"
	.byte	0
	.byte	1
	.byte	106
	.long	357
	.byte	3
	.byte	145
	.ascii	 "\310\f"
	.byte	16
	.long	.Ltmp42
	.long	.Ltmp48
	.byte	21
	.ascii	 "rxbuffer"
	.byte	0
	.byte	1
	.byte	107
	.long	1237
	.byte	2
	.byte	145
	.byte	8
	.byte	21
	.ascii	 "nbytes"
	.byte	0
	.byte	1
	.byte	106
	.long	357
	.byte	3
	.byte	145
	.ascii	 "\310\f"
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "interface"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	5
	.long	1221
	.byte	22
	.long	217
	.short	399
	.byte	0
	.byte	23
	.long	195
	.byte	24
	.long	1250
	.byte	5
	.long	195
	.byte	6
	.long	217
	.byte	59
	.byte	0
	.byte	5
	.long	1221
	.byte	6
	.long	217
	.byte	59
	.byte	0
	.byte	25
	.long	776
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	15
	.ascii	 "data"
	.byte	0
	.byte	1
	.byte	52
	.long	1255
	.long	.Ldebug_loc66+0
	.byte	15
	.ascii	 "reply"
	.byte	0
	.byte	1
	.byte	52
	.long	195
	.long	.Ldebug_loc70+0
	.byte	16
	.long	.Ltmp141
	.long	.Ltmp147
	.byte	16
	.long	.Ltmp141
	.long	.Ltmp147
	.byte	20
	.ascii	 "txbuffer"
	.byte	0
	.byte	1
	.byte	54
	.long	1260
	.byte	0
	.byte	0
	.byte	0
	.byte	23
	.long	212
	.byte	24
	.long	1370
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
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	4
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	5
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	7
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
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	8
	.byte	46
	.byte	1
	.ascii	 "\207@"
	.byte	8
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	6
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
	.byte	9
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
	.byte	6
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
	.byte	0
	.byte	0
	.byte	13
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	14
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
	.byte	15
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
	.byte	16
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	17
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
	.byte	18
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
	.byte	19
	.byte	11
	.byte	1
	.byte	0
	.byte	0
	.byte	20
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
	.byte	21
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
	.byte	22
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
	.byte	0
	.byte	0
	.byte	23
	.byte	1
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	24
	.byte	16
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	25
	.byte	46
	.byte	1
	.byte	49
	.byte	19
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
	.long	1003
.asciiz "protocol"
	.long	510
.asciiz "_safe_memmove"
	.long	273
.asciiz "_i.if_led._chan.msg"
	.long	644
.asciiz "filter"
	.long	582
.asciiz "_safe_memset"
	.long	850
.asciiz "send"
	.long	364
.asciiz "_i.if_addr._chan.msg"
	.long	446
.asciiz "_safe_memcmp"
	.long	776
.asciiz "make_packet"
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
.Lset4 = .Ltmp151-.Ltmp150
	.short	.Lset4
.Ltmp150:
	.byte	80
.Ltmp151:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp8
.Lset5 = .Ltmp153-.Ltmp152
	.short	.Lset5
.Ltmp152:
	.byte	81
.Ltmp153:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin0
	.long	.Ltmp7
.Lset6 = .Ltmp155-.Ltmp154
	.short	.Lset6
.Ltmp154:
	.byte	82
.Ltmp155:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin1
	.long	.Ltmp22
.Lset7 = .Ltmp157-.Ltmp156
	.short	.Lset7
.Ltmp156:
	.byte	80
.Ltmp157:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin1
	.long	.Ltmp21
.Lset8 = .Ltmp159-.Ltmp158
	.short	.Lset8
.Ltmp158:
	.byte	81
.Ltmp159:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin1
	.long	.Ltmp20
.Lset9 = .Ltmp161-.Ltmp160
	.short	.Lset9
.Ltmp160:
	.byte	82
.Ltmp161:
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Lfunc_begin2
	.long	.Ltmp42
.Lset10 = .Ltmp163-.Ltmp162
	.short	.Lset10
.Ltmp162:
	.byte	80
.Ltmp163:
	.long	.Ltmp42
	.long	.Ltmp46
.Lset11 = .Ltmp165-.Ltmp164
	.short	.Lset11
.Ltmp164:
	.byte	87
.Ltmp165:
	.long	.Ltmp47
	.long	.Ltmp48
.Lset12 = .Ltmp167-.Ltmp166
	.short	.Lset12
.Ltmp166:
	.byte	87
.Ltmp167:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin2
	.long	.Ltmp41
.Lset13 = .Ltmp169-.Ltmp168
	.short	.Lset13
.Ltmp168:
	.byte	81
.Ltmp169:
	.long	.Ltmp41
	.long	.Ltmp46
.Lset14 = .Ltmp171-.Ltmp170
	.short	.Lset14
.Ltmp170:
	.byte	86
.Ltmp171:
	.long	.Ltmp47
	.long	.Ltmp48
.Lset15 = .Ltmp173-.Ltmp172
	.short	.Lset15
.Ltmp172:
	.byte	86
.Ltmp173:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin2
	.long	.Ltmp40
.Lset16 = .Ltmp175-.Ltmp174
	.short	.Lset16
.Ltmp174:
	.byte	82
.Ltmp175:
	.long	.Ltmp40
	.long	.Ltmp46
.Lset17 = .Ltmp177-.Ltmp176
	.short	.Lset17
.Ltmp176:
	.byte	85
.Ltmp177:
	.long	.Ltmp47
	.long	.Ltmp48
.Lset18 = .Ltmp179-.Ltmp178
	.short	.Lset18
.Ltmp178:
	.byte	85
.Ltmp179:
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Lfunc_begin2
	.long	.Ltmp39
.Lset19 = .Ltmp181-.Ltmp180
	.short	.Lset19
.Ltmp180:
	.byte	83
.Ltmp181:
	.long	.Ltmp39
	.long	.Ltmp46
.Lset20 = .Ltmp183-.Ltmp182
	.short	.Lset20
.Ltmp182:
	.byte	84
.Ltmp183:
	.long	.Ltmp47
	.long	.Ltmp48
.Lset21 = .Ltmp185-.Ltmp184
	.short	.Lset21
.Ltmp184:
	.byte	84
.Ltmp185:
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Lfunc_begin3
	.long	.Ltmp71
.Lset22 = .Ltmp187-.Ltmp186
	.short	.Lset22
.Ltmp186:
	.byte	80
.Ltmp187:
	.long	.Ltmp71
	.long	.Lfunc_end3
.Lset23 = .Ltmp189-.Ltmp188
	.short	.Lset23
.Ltmp188:
	.byte	126
	.byte	36
.Ltmp189:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Lfunc_begin3
	.long	.Ltmp70
.Lset24 = .Ltmp191-.Ltmp190
	.short	.Lset24
.Ltmp190:
	.byte	81
.Ltmp191:
	.long	.Ltmp70
	.long	.Lfunc_end3
.Lset25 = .Ltmp193-.Ltmp192
	.short	.Lset25
.Ltmp192:
	.byte	126
	.byte	40
.Ltmp193:
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Lfunc_begin3
	.long	.Ltmp75
.Lset26 = .Ltmp195-.Ltmp194
	.short	.Lset26
.Ltmp194:
	.byte	82
.Ltmp195:
	.long	.Ltmp75
	.long	.Ltmp83
.Lset27 = .Ltmp197-.Ltmp196
	.short	.Lset27
.Ltmp196:
	.byte	126
	.byte	20
.Ltmp197:
	.long	.Ltmp83
	.long	.Ltmp85
.Lset28 = .Ltmp199-.Ltmp198
	.short	.Lset28
.Ltmp198:
	.byte	89
.Ltmp199:
	.long	.Ltmp85
	.long	.Lfunc_end3
.Lset29 = .Ltmp201-.Ltmp200
	.short	.Lset29
.Ltmp200:
	.byte	126
	.byte	20
.Ltmp201:
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Ltmp78
	.long	.Ltmp83
.Lset30 = .Ltmp203-.Ltmp202
	.short	.Lset30
.Ltmp202:
	.byte	89
.Ltmp203:
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Lfunc_begin4
	.long	.Ltmp104
.Lset31 = .Ltmp205-.Ltmp204
	.short	.Lset31
.Ltmp204:
	.byte	80
.Ltmp205:
	.long	.Ltmp104
	.long	.Ltmp116
.Lset32 = .Ltmp207-.Ltmp206
	.short	.Lset32
.Ltmp206:
	.byte	84
.Ltmp207:
	.long	0
	.long	0
.Ldebug_loc48:
	.long	.Lfunc_begin4
	.long	.Ltmp105
.Lset33 = .Ltmp209-.Ltmp208
	.short	.Lset33
.Ltmp208:
	.byte	81
.Ltmp209:
	.long	.Ltmp106
	.long	.Ltmp107
.Lset34 = .Ltmp211-.Ltmp210
	.short	.Lset34
.Ltmp210:
	.byte	81
.Ltmp211:
	.long	.Ltmp108
	.long	.Ltmp109
.Lset35 = .Ltmp213-.Ltmp212
	.short	.Lset35
.Ltmp212:
	.byte	81
.Ltmp213:
	.long	.Ltmp110
	.long	.Ltmp111
.Lset36 = .Ltmp215-.Ltmp214
	.short	.Lset36
.Ltmp214:
	.byte	81
.Ltmp215:
	.long	.Ltmp112
	.long	.Ltmp114
.Lset37 = .Ltmp217-.Ltmp216
	.short	.Lset37
.Ltmp216:
	.byte	81
.Ltmp217:
	.long	.Ltmp116
	.long	.Ltmp117
.Lset38 = .Ltmp219-.Ltmp218
	.short	.Lset38
.Ltmp218:
	.byte	81
.Ltmp219:
	.long	0
	.long	0
.Ldebug_loc56:
	.long	.Lfunc_begin4
	.long	.Ltmp103
.Lset39 = .Ltmp221-.Ltmp220
	.short	.Lset39
.Ltmp220:
	.byte	82
.Ltmp221:
	.long	.Ltmp103
	.long	.Ltmp116
.Lset40 = .Ltmp223-.Ltmp222
	.short	.Lset40
.Ltmp222:
	.byte	87
.Ltmp223:
	.long	0
	.long	0
.Ldebug_loc60:
	.long	.Lfunc_begin4
	.long	.Ltmp102
.Lset41 = .Ltmp225-.Ltmp224
	.short	.Lset41
.Ltmp224:
	.byte	83
.Ltmp225:
	.long	.Ltmp102
	.long	.Ltmp116
.Lset42 = .Ltmp227-.Ltmp226
	.short	.Lset42
.Ltmp226:
	.byte	86
.Ltmp227:
	.long	0
	.long	0
.Ldebug_loc64:
	.long	.Ltmp115
	.long	.Ltmp116
.Lset43 = .Ltmp229-.Ltmp228
	.short	.Lset43
.Ltmp228:
	.byte	82
.Ltmp229:
	.long	0
	.long	0
.Ldebug_loc66:
	.long	.Lfunc_begin5
	.long	.Ltmp140
.Lset44 = .Ltmp231-.Ltmp230
	.short	.Lset44
.Ltmp230:
	.byte	80
.Ltmp231:
	.long	.Ltmp140
	.long	.Ltmp146
.Lset45 = .Ltmp233-.Ltmp232
	.short	.Lset45
.Ltmp232:
	.byte	84
.Ltmp233:
	.long	0
	.long	0
.Ldebug_loc70:
	.long	.Lfunc_begin5
	.long	.Ltmp139
.Lset46 = .Ltmp235-.Ltmp234
	.short	.Lset46
.Ltmp234:
	.byte	81
.Ltmp235:
	.long	.Ltmp139
	.long	.Lfunc_end5
.Lset47 = .Ltmp237-.Ltmp236
	.short	.Lset47
.Ltmp236:
	.byte	126
	.byte	4
.Ltmp237:
	.long	0
	.long	0
.Ldebug_loc74:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring _i.if_led._chan.msg, "f{si}(&(s(yarg){m(dest){chd},m(y){ui}}),uc,uc)"
	.overlay_reference _i.if_led._chan.msg,_i.if_led._client_call.fns
	.typestring _i.if_addr._chan.msg, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),&(a(:uc)),si)"
	.overlay_reference _i.if_addr._chan.msg,_i.if_addr._client_call.fns
	.typestring passFrameToHub, "f{0}(chd,&(a(:c:uc)),si)"
	.typestring fetchFrameFromHub, "f{0}(chd,&(a(:ui)),&(si))"
	.typestring isForMe, "f{ui}(&(a(:uc)),&(a(:c:uc)))"
	.typestring isSNCN, "f{ui}(&(a(:uc)))"
	.typestring protocol, "f{0}(chd,chd,ic(if_led){m(msg){f{si}(uc,uc)}},ic(if_addr){m(msg){f{0}(&(a(:uc)),si)}})"
	.typestring send, "f{0}(chd,chd,is(if_addr){m(msg){f{0}(&(a(:uc)),si)}})"
	.typestring filter, "f{0}(&(a(:uc)),si,ic(if_led){m(msg){f{si}(uc,uc)}},ic(if_addr){m(msg){f{0}(&(a(:uc)),si)}})"
	.overlay_reference filter,_i.if_led.msg.fns
	.overlay_reference filter,_i.if_addr.msg.fns
	.typestring make_packet, "f{0}(&(a(:uc)),uc)"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels4
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	34
	.long	.Lxta.call_labels4
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels5
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	40
	.long	.Lxta.call_labels5
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels6
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	42
	.long	.Lxta.call_labels6
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels2
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	92
	.long	.Lxta.call_labels2
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels3
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	93
	.long	.Lxta.call_labels3
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels0
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	116
	.long	.Lxta.call_labels0
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels1
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	120
	.long	.Lxta.call_labels1
.cc_bottom cc_6
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_7,.Lxtalabel7
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	31
	.long	34
	.long	.Lxtalabel7
.cc_bottom cc_7
.cc_top cc_8,.Lxtalabel8
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	35
	.long	37
	.long	.Lxtalabel8
.cc_bottom cc_8
.cc_top cc_9,.Lxtalabel9
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	38
	.long	43
	.long	.Lxtalabel9
.cc_bottom cc_9
.cc_top cc_10,.Lxtalabel10
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	45
	.long	45
	.long	.Lxtalabel10
.cc_bottom cc_10
.cc_top cc_11,.Lxtalabel12
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	53
	.long	69
	.long	.Lxtalabel12
.cc_bottom cc_11
.cc_top cc_12,.Lxtalabel11
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	53
	.long	69
	.long	.Lxtalabel11
.cc_bottom cc_12
.cc_top cc_13,.Lxtalabel4
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	78
	.long	81
	.long	.Lxtalabel4
.cc_bottom cc_13
.cc_top cc_14,.Lxtalabel6
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	82
	.long	85
	.long	.Lxtalabel6
.cc_bottom cc_14
.cc_top cc_15,.Lxtalabel4
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	82
	.long	85
	.long	.Lxtalabel4
.cc_bottom cc_15
.cc_top cc_16,.Lxtalabel5
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	86
	.long	90
	.long	.Lxtalabel5
.cc_bottom cc_16
.cc_top cc_17,.Lxtalabel0
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	105
	.long	109
	.long	.Lxtalabel0
.cc_bottom cc_17
.cc_top cc_18,.Lxtalabel0
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	110
	.long	113
	.long	.Lxtalabel0
.cc_bottom cc_18
.cc_top cc_19,.Lxtalabel1
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	114
	.long	116
	.long	.Lxtalabel1
.cc_bottom cc_19
.cc_top cc_20,.Lxtalabel3
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	117
	.long	118
	.long	.Lxtalabel3
.cc_bottom cc_20
.cc_top cc_21,.Lxtalabel2
	.ascii	 "../src/protocol.xc"
	.byte	0
	.long	117
	.long	118
	.long	.Lxtalabel2
.cc_bottom cc_21
.cc_top cc_22,.Lxtalabel11
	.ascii	 "safe/string.h"
	.byte	0
	.long	21
	.long	23
	.long	.Lxtalabel11
.cc_bottom cc_22
.cc_top cc_23,.Lxtalabel12
	.ascii	 "safe/string.h"
	.byte	0
	.long	21
	.long	23
	.long	.Lxtalabel12
.cc_bottom cc_23
.Lentries_end3:
