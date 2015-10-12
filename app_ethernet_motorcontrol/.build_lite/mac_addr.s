	.file	"../src/mac_addr.xc"

	.call showMAC,printstr
	.call showMAC,printhex
	.set showMAC.locnoside, 1
	.set showMAC.locnochandec, 1
	.set showMAC.locnoglobalaccess, 1
	.set showMAC.locnointerfaceaccess, 1
	.set showMAC.locnonotificationselect, 1


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/../src/mac_addr.xc"
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
	.cc_top showMAC.function
	.globl	showMAC
	.align	4
	.type	showMAC,@function
showMAC:
.Ltmp3:
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 4 0
.Lxtalabel0:
	entsp 3
.Ltmp4:
	.cfi_def_cfa_offset 12
.Ltmp5:
	.cfi_offset 15, 0
	.loc	1 4 0 prologue_end
.Ltmp6:
	stw r4, sp[2]
.Ltmp7:
	.cfi_offset 4, -4
	stw r5, sp[1]
.Ltmp8:
	.cfi_offset 5, -8
	mov r4, r0
.Ltmp9:
	.loc	1 6 0
	ldc r0, 0
	ld8u r0, r4[r0]
	.loc	1 6 0
.Lxta.call_labels0:
	bl printhex
	.loc	1 6 0
	ldaw r0, dp[.str]
	ldc r5, 2
	mov r1, r5
	bl printstr
	mkmsk r0, 1
	.loc	1 7 0
	ld8u r0, r4[r0]
	.loc	1 7 0
.Lxta.call_labels1:
	bl printhex
	.loc	1 7 0
	ldaw r0, dp[.str1]
	mov r1, r5
	bl printstr
	.loc	1 8 0
	ld8u r0, r4[r5]
	.loc	1 8 0
.Lxta.call_labels2:
	bl printhex
	.loc	1 8 0
	ldaw r0, dp[.str2]
	mov r1, r5
	bl printstr
	mkmsk r0, 2
	.loc	1 9 0
	ld8u r0, r4[r0]
	.loc	1 9 0
.Lxta.call_labels3:
	bl printhex
	.loc	1 9 0
	ldaw r0, dp[.str3]
	mov r1, r5
	bl printstr
	ldc r0, 4
	.loc	1 10 0
	ld8u r0, r4[r0]
	.loc	1 10 0
.Lxta.call_labels4:
	bl printhex
	.loc	1 10 0
	ldaw r0, dp[.str4]
	mov r1, r5
	bl printstr
	ldc r0, 5
	.loc	1 11 0
	ld8u r0, r4[r0]
	.loc	1 11 0
.Lxta.call_labels5:
	bl printhex
	.loc	1 11 0
	ldaw r0, dp[.str5]
	mov r1, r5
	bl printstr
	ldw r5, sp[1]
	ldw r4, sp[2]
.Ltmp10:
	retsp 3
.Ltmp11:
.Ltmp12:
	.size	showMAC, .Ltmp12-showMAC
.Lfunc_end0:
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:

	.align	4
	.cc_bottom showMAC.function
	.set	showMAC.nstackwords,((printhex.nstackwords $M printstr.nstackwords) + 3)
	.globl	showMAC.nstackwords
	.set	showMAC.maxcores,printhex.maxcores $M printstr.maxcores $M 1
	.globl	showMAC.maxcores
	.set	showMAC.maxtimers,printhex.maxtimers $M printstr.maxtimers $M 0
	.globl	showMAC.maxtimers
	.set	showMAC.maxchanends,printhex.maxchanends $M printstr.maxchanends $M 0
	.globl	showMAC.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,2
.str:
.asciiz ":"
	.space	2
	.cc_bottom .str.data
	.cc_top .str1.data
	.align	4
	.type	.str1,@object
	.size .str1,2
.str1:
.asciiz ":"
	.space	2
	.cc_bottom .str1.data
	.cc_top .str2.data
	.align	4
	.type	.str2,@object
	.size .str2,2
.str2:
.asciiz ":"
	.space	2
	.cc_bottom .str2.data
	.cc_top .str3.data
	.align	4
	.type	.str3,@object
	.size .str3,2
.str3:
.asciiz ":"
	.space	2
	.cc_bottom .str3.data
	.cc_top .str4.data
	.align	4
	.type	.str4,@object
	.size .str4,2
.str4:
.asciiz ":"
	.space	2
	.cc_bottom .str4.data
	.cc_top .str5.data
	.align	4
	.type	.str5,@object
	.size .str5,2
.str5:
.asciiz "\n"
	.space	2
	.cc_bottom .str5.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	281
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "showMAC"
	.byte	0
	.ascii	 "showMAC"
	.byte	0
	.byte	1
	.byte	4
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	3
	.ascii	 "mac"
	.byte	0
	.byte	1
	.byte	4
	.long	279
	.long	.Ldebug_loc0+0
	.byte	0
	.byte	4
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	5
	.long	242
	.byte	6
	.byte	4
	.byte	5
	.byte	7
	.long	259
	.byte	8
	.long	264
	.byte	5
	.byte	0
	.byte	9
	.long	267
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
	.byte	5
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	8
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	9
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
	.long	195
.asciiz "showMAC"
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
.Lset4 = .Ltmp15-.Ltmp14
	.short	.Lset4
.Ltmp14:
	.byte	80
.Ltmp15:
	.long	.Ltmp9
	.long	.Ltmp10
.Lset5 = .Ltmp17-.Ltmp16
	.short	.Lset5
.Ltmp16:
	.byte	84
.Ltmp17:
	.long	0
	.long	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring showMAC, "f{0}(&(a(6:c:uc)))"
	.typestring printhex, "f{si}(ui)"
	.typestring printstr, "f{si}(a:&(a(:c:uc)))"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	6
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	7
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels2
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	8
	.long	.Lxta.call_labels2
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels3
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	9
	.long	.Lxta.call_labels3
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels4
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	10
	.long	.Lxta.call_labels4
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels5
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	11
	.long	.Lxta.call_labels5
.cc_bottom cc_5
.Lentries_end1:
	.section	.xtalabeltable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_6,.Lxtalabel0
	.ascii	 "../src/mac_addr.xc"
	.byte	0
	.long	5
	.long	12
	.long	.Lxtalabel0
.cc_bottom cc_6
.Lentries_end3:
