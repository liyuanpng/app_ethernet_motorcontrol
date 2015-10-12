	.file	"../src/main.xc"

	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.globalresource 0x10200,"p_spi_flash.spiMISO","tile[0]"
	.globalresource 0x10000,"p_spi_flash.spiSS","tile[0]"
	.globalresource 0x10100,"p_spi_flash.spiCLK","tile[0]"
	.globalresource 0x10300,"p_spi_flash.spiMOSI","tile[0]"
	.globalresource 0x206,"p_spi_flash.spiClkblk","tile[0]"
	.globalresource 0x10c00,"p_core_leds[0]","tile[1]"
	.globalresource 0x10b00,"p_core_leds[1]","tile[1]"
	.globalresource 0x10900,"p_core_leds[2]","tile[1]"
	.globalresource 0x40300,"smi_p1.p_smi_mdc","tile[0]"
	.globalresource 0x40200,"smi_p2.p_smi_mdc","tile[0]"
	.globalresource 0x106,"mii_p1.clk_mii_rx","tile[0]"
	.globalresource 0x306,"mii_p1.clk_mii_tx","tile[0]"
	.globalresource 0x10500,"mii_p1.p_mii_rxclk","tile[0]"
	.globalresource 0x10c00,"mii_p1.p_mii_rxer","tile[0]"
	.globalresource 0x40400,"mii_p1.p_mii_rxd","tile[0]"
	.globalresource 0x10e00,"mii_p1.p_mii_rxdv","tile[0]"
	.globalresource 0x10a00,"mii_p1.p_mii_txclk","tile[0]"
	.globalresource 0x10d00,"mii_p1.p_mii_txen","tile[0]"
	.globalresource 0x40500,"mii_p1.p_mii_txd","tile[0]"
	.globalresource 0x80200,"mii_p1.p_mii_timing","tile[0]"
	.globalresource 0x406,"mii_p2.clk_mii_rx","tile[0]"
	.globalresource 0x506,"mii_p2.clk_mii_tx","tile[0]"
	.globalresource 0x10800,"mii_p2.p_mii_rxclk","tile[0]"
	.globalresource 0x10600,"mii_p2.p_mii_rxer","tile[0]"
	.globalresource 0x40100,"mii_p2.p_mii_rxd","tile[0]"
	.globalresource 0x10b00,"mii_p2.p_mii_rxdv","tile[0]"
	.globalresource 0x10700,"mii_p2.p_mii_txclk","tile[0]"
	.globalresource 0x10900,"mii_p2.p_mii_txen","tile[0]"
	.globalresource 0x40000,"mii_p2.p_mii_txd","tile[0]"
	.globalresource 0x80300,"mii_p2.p_mii_timing","tile[0]"
	.globalresource 0x10f00,"eth_rst_p1","tile[0]"
	.globalresource 0x10400,"eth_rst_p2","tile[0]"
	.set __main__main_tile_0.savedstate,8
	.globl __main__main_tile_0.savedstate
	.set __main__main_tile_1.savedstate,21
	.globl __main__main_tile_1.savedstate
	.weak _i.if_led.msg.maxchanends.group
	.add_to_set _i.if_led.msg.maxchanends.group, _i.if_led._chan.msg.maxchanends, _i.if_led._chan.msg
	.max_reduce _i.if_led.msg.max.maxchanends, _i.if_led.msg.maxchanends.group, 0
	.weak _i.if_led.msg.maxcores.group
	.add_to_set _i.if_led.msg.maxcores.group, _i.if_led._chan.msg.maxcores, _i.if_led._chan.msg
	.max_reduce _i.if_led.msg.max.maxcores, _i.if_led.msg.maxcores.group, 0
	.weak _i.if_led.msg.maxtimers.group
	.add_to_set _i.if_led.msg.maxtimers.group, _i.if_led._chan.msg.maxtimers, _i.if_led._chan.msg
	.max_reduce _i.if_led.msg.max.maxtimers, _i.if_led.msg.maxtimers.group, 0
	.weak _i.if_led.msg.nstackwords.group
	.globl _i.if_led.msg.nstackwords.group
	.weak _i.if_led.msg.fns.group
	.globl _i.if_led.msg.fns.group
	.add_to_set _i.if_led.msg.nstackwords.group, _i.if_led._chan.msg.nstackwords, _i.if_led._chan.msg
	.add_to_set _i.if_led.msg.fns.group, _i.if_led._chan.msg
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
	.weak _i.if_addr.msg.maxchanends.group
	.add_to_set _i.if_addr.msg.maxchanends.group, _i.if_addr._chan.msg.maxchanends, _i.if_addr._chan.msg
	.max_reduce _i.if_addr.msg.max.maxchanends, _i.if_addr.msg.maxchanends.group, 0
	.weak _i.if_addr.msg.maxcores.group
	.add_to_set _i.if_addr.msg.maxcores.group, _i.if_addr._chan.msg.maxcores, _i.if_addr._chan.msg
	.max_reduce _i.if_addr.msg.max.maxcores, _i.if_addr.msg.maxcores.group, 0
	.weak _i.if_addr.msg.maxtimers.group
	.add_to_set _i.if_addr.msg.maxtimers.group, _i.if_addr._chan.msg.maxtimers, _i.if_addr._chan.msg
	.max_reduce _i.if_addr.msg.max.maxtimers, _i.if_addr.msg.maxtimers.group, 0
	.weak _i.if_addr.msg.nstackwords.group
	.globl _i.if_addr.msg.nstackwords.group
	.weak _i.if_addr.msg.fns.group
	.globl _i.if_addr.msg.fns.group
	.add_to_set _i.if_addr.msg.nstackwords.group, _i.if_addr._chan.msg.nstackwords, _i.if_addr._chan.msg
	.add_to_set _i.if_addr.msg.fns.group, _i.if_addr._chan.msg
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
	.section .netinfo, "", @netinfo
	.int      0x1eaba15c
	main.parinfo.debugstring0:
	.asciiz "# 105 \"../src/main.xc\""
	main.parinfo.debugstring1:
	.asciiz "# 166 \"../src/main.xc\""
	.cc_top main.parinfo.cc, main.parinfo
	.globl main.parinfo
	.type main.parinfo, @object
	main.parinfo:
	.int 0x00000004
	.long 0
	.long main.parinfo.debugstring0
	.long main.parinfo.debugstring1
	.int 0x00000004
	.int 0x00000000
	.int $N __main__main_tile_0
	.long tile + 0
	.call __main__main_tile_0,usage.anon.12
	.int 0x00000004
	.int 0x00000001
	.int 0x00000002
	.int 0x00000003
	.int 0x00000004
	.int $N __main__main_tile_1
	.long tile + 4
	.call __main__main_tile_1,usage.anon.13
	.int 0x00000009
	.int 0x00000001
	.int 0x00000002
	.int 0x00000003
	.int 0x00000004
	.int 0x00000005
	.int 0x00000006
	.int 0x00000007
	.int 0x00000008
	.int 0x00000009
	.int $N __main__main_tile_2
	.long tile + 8
	.call __main__main_tile_2,usage.anon.14
	.int 0x00000004
	.int 0x00000005
	.int 0x00000007
	.int 0x00000009
	.int 0x0000000a
	.int $N __main__main_tile_3
	.long tile + 12
	.call __main__main_tile_3,usage.anon.15
	.int 0x00000003
	.int 0x00000006
	.int 0x00000008
	.int 0x0000000a
	.cc_bottom main.parinfo.cc
.locl __xcc1_internal_1.info, "bi:p:8"
__xcc1_internal_1.info:
	.int 0x00010200
	.long tile + 0
.sameresource __xcc1_internal_1, p_spi_flash, 0
.locl __xcc1_internal_2.info, "o:p"
__xcc1_internal_2.info:
	.int 0x00010000
	.long tile + 0
.sameresource __xcc1_internal_2, p_spi_flash, 4
.locl __xcc1_internal_3.info, "o:p"
__xcc1_internal_3.info:
	.int 0x00010100
	.long tile + 0
.sameresource __xcc1_internal_3, p_spi_flash, 8
.locl __xcc1_internal_4.info, "bo:p:8"
__xcc1_internal_4.info:
	.int 0x00010300
	.long tile + 0
.sameresource __xcc1_internal_4, p_spi_flash, 12
.locl __xcc1_internal_5.info, "ck"
__xcc1_internal_5.info:
	.int 0x00000206
	.long tile + 0
.sameresource __xcc1_internal_5, p_spi_flash, 16
.locl __xcc1_internal_6.info, "o:p"
__xcc1_internal_6.info:
	.int 0x00010c00
	.long tile + 4
.sameresource __xcc1_internal_6, p_core_leds, 0
.locl __xcc1_internal_7.info, "o:p"
__xcc1_internal_7.info:
	.int 0x00010b00
	.long tile + 4
.sameresource __xcc1_internal_7, p_core_leds, 4
.locl __xcc1_internal_8.info, "o:p"
__xcc1_internal_8.info:
	.int 0x00010900
	.long tile + 4
.sameresource __xcc1_internal_8, p_core_leds, 8
.locl __xcc1_internal_9.info, "p"
__xcc1_internal_9.info:
	.int 0x00040300
	.long tile + 0
.sameresource __xcc1_internal_9, smi_p1, 4
.locl __xcc1_internal_10.info, "p"
__xcc1_internal_10.info:
	.int 0x00040200
	.long tile + 0
.sameresource __xcc1_internal_10, smi_p2, 4
.locl __xcc1_internal_11.info, "ck"
__xcc1_internal_11.info:
	.int 0x00000106
	.long tile + 0
.sameresource __xcc1_internal_11, mii_p1, 0
.locl __xcc1_internal_12.info, "ck"
__xcc1_internal_12.info:
	.int 0x00000306
	.long tile + 0
.sameresource __xcc1_internal_12, mii_p1, 4
.locl __xcc1_internal_13.info, "i:p"
__xcc1_internal_13.info:
	.int 0x00010500
	.long tile + 0
.sameresource __xcc1_internal_13, mii_p1, 8
.locl __xcc1_internal_14.info, "i:p"
__xcc1_internal_14.info:
	.int 0x00010c00
	.long tile + 0
.sameresource __xcc1_internal_14, mii_p1, 12
.locl __xcc1_internal_15.info, "bi:p:32"
__xcc1_internal_15.info:
	.int 0x00040400
	.long tile + 0
.sameresource __xcc1_internal_15, mii_p1, 16
.locl __xcc1_internal_16.info, "i:p"
__xcc1_internal_16.info:
	.int 0x00010e00
	.long tile + 0
.sameresource __xcc1_internal_16, mii_p1, 20
.locl __xcc1_internal_17.info, "i:p"
__xcc1_internal_17.info:
	.int 0x00010a00
	.long tile + 0
.sameresource __xcc1_internal_17, mii_p1, 24
.locl __xcc1_internal_18.info, "o:p"
__xcc1_internal_18.info:
	.int 0x00010d00
	.long tile + 0
.sameresource __xcc1_internal_18, mii_p1, 28
.locl __xcc1_internal_19.info, "bo:p:32"
__xcc1_internal_19.info:
	.int 0x00040500
	.long tile + 0
.sameresource __xcc1_internal_19, mii_p1, 32
.locl __xcc1_internal_20.info, "i:p"
__xcc1_internal_20.info:
	.int 0x00080200
	.long tile + 0
.sameresource __xcc1_internal_20, mii_p1, 36
.locl __xcc1_internal_21.info, "ck"
__xcc1_internal_21.info:
	.int 0x00000406
	.long tile + 0
.sameresource __xcc1_internal_21, mii_p2, 0
.locl __xcc1_internal_22.info, "ck"
__xcc1_internal_22.info:
	.int 0x00000506
	.long tile + 0
.sameresource __xcc1_internal_22, mii_p2, 4
.locl __xcc1_internal_23.info, "i:p"
__xcc1_internal_23.info:
	.int 0x00010800
	.long tile + 0
.sameresource __xcc1_internal_23, mii_p2, 8
.locl __xcc1_internal_24.info, "i:p"
__xcc1_internal_24.info:
	.int 0x00010600
	.long tile + 0
.sameresource __xcc1_internal_24, mii_p2, 12
.locl __xcc1_internal_25.info, "bi:p:32"
__xcc1_internal_25.info:
	.int 0x00040100
	.long tile + 0
.sameresource __xcc1_internal_25, mii_p2, 16
.locl __xcc1_internal_26.info, "i:p"
__xcc1_internal_26.info:
	.int 0x00010b00
	.long tile + 0
.sameresource __xcc1_internal_26, mii_p2, 20
.locl __xcc1_internal_27.info, "i:p"
__xcc1_internal_27.info:
	.int 0x00010700
	.long tile + 0
.sameresource __xcc1_internal_27, mii_p2, 24
.locl __xcc1_internal_28.info, "o:p"
__xcc1_internal_28.info:
	.int 0x00010900
	.long tile + 0
.sameresource __xcc1_internal_28, mii_p2, 28
.locl __xcc1_internal_29.info, "bo:p:32"
__xcc1_internal_29.info:
	.int 0x00040000
	.long tile + 0
.sameresource __xcc1_internal_29, mii_p2, 32
.locl __xcc1_internal_30.info, "i:p"
__xcc1_internal_30.info:
	.int 0x00080300
	.long tile + 0
.sameresource __xcc1_internal_30, mii_p2, 36
.globl eth_rst_p1.info, "o:p"
eth_rst_p1.info:
	.int 0x00010f00
	.long tile + 0
.globl eth_rst_p2.info, "o:p"
eth_rst_p2.info:
	.int 0x00010400
	.long tile + 0
	.weak _i.if_addr.msg.maxchanends.group
	.weak _i.if_addr.msg.maxcores.group
	.weak _i.if_addr.msg.maxtimers.group
	.weak _i.if_addr.msg.nstackwords.group
	.globl _i.if_addr.msg.nstackwords.group
	.weak _i.if_addr.msg.fns.group
	.globl _i.if_addr.msg.fns.group
	.weak _i.if_addr.__interface_init.maxchanends.group
	.weak _i.if_addr.__interface_init.maxcores.group
	.weak _i.if_addr.__interface_init.maxtimers.group
	.weak _i.if_addr.__interface_init.nstackwords.group
	.globl _i.if_addr.__interface_init.nstackwords.group
	.weak _i.if_addr.__interface_init.fns.group
	.globl _i.if_addr.__interface_init.fns.group
	.weak _i.if_led.msg.maxchanends.group
	.weak _i.if_led.msg.maxcores.group
	.weak _i.if_led.msg.maxtimers.group
	.weak _i.if_led.msg.nstackwords.group
	.globl _i.if_led.msg.nstackwords.group
	.weak _i.if_led.msg.fns.group
	.globl _i.if_led.msg.fns.group
	.weak _i.if_led.__interface_init.maxchanends.group
	.weak _i.if_led.__interface_init.maxcores.group
	.weak _i.if_led.__interface_init.maxtimers.group
	.weak _i.if_led.__interface_init.nstackwords.group
	.globl _i.if_led.__interface_init.nstackwords.group
	.weak _i.if_led.__interface_init.fns.group
	.globl _i.if_led.__interface_init.fns.group
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
	.set usage.anon.14,0
	.set usage.anon.15,0
	.globread usage.anon.10,usage.anon.9,"../src/main.xc:114: error: previously used here"
	.globread usage.anon.10,usage.anon.7,"../src/main.xc:113: error: previously used here"
	.globread usage.anon.8,usage.anon.9,"../src/main.xc:135: error: previously used here"
	.globread usage.anon.6,usage.anon.7,"../src/main.xc:133: error: previously used here"
	.globread led_server,p_core_leds,"../src/main.xc:60: error: previously used here"
	.globwrite usage.anon.12,eth_rst_p2,"../src/main.xc:119: error: previously used here"
	.globwrite usage.anon.12,eth_rst_p1,"../src/main.xc:118: error: previously used here"
	.globwrite usage.anon.12,mii_p2,"../src/main.xc:135: error: previously used here"
	.globwrite usage.anon.12,mii_p1,"../src/main.xc:133: error: previously used here"
	.globwrite usage.anon.12,smi_p2,"../src/main.xc:123: error: previously used here"
	.globwrite usage.anon.12,smi_p1,"../src/main.xc:122: error: previously used here"
	.globwrite usage.anon.10,eth_rst_p2,"../src/main.xc:119: error: previously used here"
	.globwrite usage.anon.10,eth_rst_p1,"../src/main.xc:118: error: previously used here"
	.globwrite usage.anon.10,smi_p2,"../src/main.xc:123: error: previously used here"
	.globwrite usage.anon.10,smi_p1,"../src/main.xc:122: error: previously used here"
	.globwrite usage.anon.8,mii_p2,"../src/main.xc:135: error: previously used here"
	.globwrite usage.anon.8,smi_p2,"../src/main.xc:135: error: previously used here"
	.globwrite usage.anon.6,mii_p1,"../src/main.xc:133: error: previously used here"
	.globwrite usage.anon.6,smi_p1,"../src/main.xc:133: error: previously used here"
	.globwrite led_server,usage.anon.5,"../src/main.xc:61: error: previously used here"
	.globwrite led_server,usage.anon.4,"../src/main.xc:48: error: previously used here"
	.globwrite led_server,usage.anon.3,"../src/main.xc:47: error: previously used here"
	.globwrite led_server,p_core_leds,0,4,"../src/main.xc:85: error: previously used here (bytes 0..4)"
	.globwrite led_server,p_core_leds,"../src/main.xc:60: error: previously used here"
	.call usage.anon.15,send
	.call usage.anon.14,protocol
	.call usage.anon.13,led_server
	.call usage.anon.13,ethernetHUB
	.call usage.anon.12,smi_init
	.call usage.anon.12,showMAC
	.call usage.anon.12,printstr
	.call usage.anon.12,ethernet_server_p2_lite
	.call usage.anon.12,ethernet_server_p1_lite
	.call usage.anon.12,eth_phy_reset
	.call usage.anon.12,eth_phy_config
	.call main,usage.anon.11
	.call main,usage.anon.10
	.call main,send
	.call main,protocol
	.call usage.anon.11,led_server
	.call usage.anon.11,ethernetHUB
	.call usage.anon.10,usage.anon.8
	.call usage.anon.10,usage.anon.6
	.call usage.anon.10,smi_init
	.call usage.anon.10,showMAC
	.call usage.anon.10,printstr
	.call usage.anon.10,eth_phy_reset
	.call usage.anon.10,eth_phy_config
	.call usage.anon.8,ethernet_server_p2_lite
	.call usage.anon.6,ethernet_server_p1_lite
	.call led_server,usage.anon.1
	.call led_server,usage.anon.0
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.par usage.anon.10,usage.anon.11,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par usage.anon.10,protocol,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par usage.anon.10,send,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par usage.anon.11,protocol,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par usage.anon.11,send,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par protocol,send,"../src/main.xc:105: error: use of `%s' violates parallel usage rules"
	.par ethernetHUB,led_server,"../src/main.xc:145: error: use of `%s' violates parallel usage rules"
	.par usage.anon.6,usage.anon.8,"../src/main.xc:130: error: use of `%s' violates parallel usage rules"
	.set usage.anon.6.locnoside, 1
	.set usage.anon.8.locnoside, 1
	.set usage.anon.10.locnoside, 1
	.set usage.anon.11.locnoside, 1
	.set usage.anon.0.locnoside, 1
	.set usage.anon.1.locnoside, 1
	.set usage.anon.2.locnoside, 1
	.set usage.anon.6.locnochandec, 1
	.set usage.anon.8.locnochandec, 1
	.set usage.anon.10.locnochandec, 1
	.set usage.anon.11.locnochandec, 1
	.set usage.anon.0.locnochandec, 1
	.set usage.anon.1.locnochandec, 1
	.set usage.anon.2.locnochandec, 1
	.set led_server.locnochandec, 1
	.set usage.anon.6.locnoglobalaccess, 1
	.set usage.anon.8.locnoglobalaccess, 1
	.set usage.anon.10.locnoglobalaccess, 1
	.set usage.anon.11.locnoglobalaccess, 1
	.set usage.anon.0.locnoglobalaccess, 1
	.set usage.anon.1.locnoglobalaccess, 1
	.set usage.anon.2.locnoglobalaccess, 1
	.set usage.anon.6.locnointerfaceaccess, 1
	.set usage.anon.8.locnointerfaceaccess, 1
	.set usage.anon.10.locnointerfaceaccess, 1
	.set usage.anon.11.locnointerfaceaccess, 1
	.set usage.anon.0.locnointerfaceaccess, 1
	.set usage.anon.1.locnointerfaceaccess, 1
	.set usage.anon.2.locnointerfaceaccess, 1
	.set main.locnointerfaceaccess, 1
	.set usage.anon.6.locnonotificationselect, 1
	.set usage.anon.8.locnonotificationselect, 1
	.set usage.anon.10.locnonotificationselect, 1
	.set usage.anon.11.locnonotificationselect, 1
	.set usage.anon.0.locnonotificationselect, 1
	.set usage.anon.1.locnonotificationselect, 1
	.set usage.anon.2.locnonotificationselect, 1
	.set led_server.locnonotificationselect, 1
	.set main.locnonotificationselect, 1
	.globpassesref ethernet_server_p2_lite, usage.anon.9,"../src/main.xc:135: error: call to `ethernet_server_p2_lite' in `main' makes alias of global 'MAC_P2_NODE_2'"
	.globpassesref ethernet_server_p2_lite, smi_p2,"../src/main.xc:135: error: call to `ethernet_server_p2_lite' in `main' makes alias of global 'smi_p2'"
	.globpassesref ethernet_server_p2_lite, mii_p2,"../src/main.xc:135: error: call to `ethernet_server_p2_lite' in `main' makes alias of global 'mii_p2'"
	.globpassesref ethernet_server_p1_lite, usage.anon.7,"../src/main.xc:133: error: call to `ethernet_server_p1_lite' in `main' makes alias of global 'MAC_P1_NODE_2'"
	.globpassesref ethernet_server_p1_lite, smi_p1,"../src/main.xc:133: error: call to `ethernet_server_p1_lite' in `main' makes alias of global 'smi_p1'"
	.globpassesref ethernet_server_p1_lite, mii_p1,"../src/main.xc:133: error: call to `ethernet_server_p1_lite' in `main' makes alias of global 'mii_p1'"
	.globpassesref eth_phy_config, smi_p2,"../src/main.xc:127: error: call to `eth_phy_config' in `main' makes alias of global 'smi_p2'"
	.globpassesref eth_phy_config, smi_p1,"../src/main.xc:126: error: call to `eth_phy_config' in `main' makes alias of global 'smi_p1'"
	.globpassesref smi_init, smi_p2,"../src/main.xc:123: error: call to `smi_init' in `main' makes alias of global 'smi_p2'"
	.globpassesref smi_init, smi_p1,"../src/main.xc:122: error: call to `smi_init' in `main' makes alias of global 'smi_p1'"
	.globpassesref eth_phy_reset, eth_rst_p2,"../src/main.xc:119: error: call to `eth_phy_reset' in `main' makes alias of global 'eth_rst_p2'"
	.globpassesref eth_phy_reset, eth_rst_p1,"../src/main.xc:118: error: call to `eth_phy_reset' in `main' makes alias of global 'eth_rst_p1'"
	.globpassesref showMAC, usage.anon.9,"../src/main.xc:114: error: call to `showMAC' in `main' makes alias of global 'MAC_P2_NODE_2'"
	.globpassesref showMAC, usage.anon.7,"../src/main.xc:113: error: call to `showMAC' in `main' makes alias of global 'MAC_P1_NODE_2'"
	.overlay_subgraph_conflict __main__main_tile_0_task_ethernet_server_p1_lite_1, __main__main_tile_0_task_ethernet_server_p2_lite_2
	.overlay_subgraph_conflict __main__main_tile_1_task_ethernetHUB_4, __main__main_tile_1_task_led_server_5


	.file	1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/../src/main.xc"
	.file	2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/CORE_C22-rev-a.inc"
	.file	3 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/ethernet_config.h"
	.file	4 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/<synthesized>"
	.file	5 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite/timer.h"
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
	.loc	4 0 0
	entsp 2
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset 15, 0
	.loc	4 0 0 prologue_end
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
	.loc	4 0 0
	entsp 3
.Ltmp16:
	.cfi_def_cfa_offset 12
.Ltmp17:
	.cfi_offset 15, 0
	.loc	4 0 0 prologue_end
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
	.cc_top led_server.function
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI2_0.data
	.align	4
.LCPI2_0:
	.long	20000000
	.cc_bottom .LCPI2_0.data
	.cc_top .LCPI2_1.data
	.align	4
.LCPI2_1:
	.long	100000000
	.cc_bottom .LCPI2_1.data
	.cc_top .LCPI2_2.data
	.align	4
.LCPI2_2:
	.long	68608
	.cc_bottom .LCPI2_2.data
	.text
	.globl	led_server
	.align	4
	.type	led_server,@function
led_server:
.Ltmp34:
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 37 0
.Lxtalabel0:
	entsp 9
.Ltmp35:
	.cfi_def_cfa_offset 36
.Ltmp36:
	.cfi_offset 15, 0
	.loc	1 36 0 prologue_end
.Ltmp37:
	stw r4, sp[8]
.Ltmp38:
	.cfi_offset 4, -4
	stw r5, sp[7]
.Ltmp39:
	.cfi_offset 5, -8
	stw r6, sp[6]
.Ltmp40:
	.cfi_offset 6, -12
	stw r7, sp[5]
.Ltmp41:
	.cfi_offset 7, -16
	stw r8, sp[4]
.Ltmp42:
	.cfi_offset 8, -20
	stw r9, sp[3]
.Ltmp43:
	.cfi_offset 9, -24
	stw r10, sp[2]
.Ltmp44:
	.cfi_offset 10, -28
	stw r0, sp[1]
.Ltmp45:
	ldc r6, 254
	ldc r8, 2
	ldc r5, 0
	.loc	1 67 0
.Ltmp46:
	ldaw r7, dp[p_core_leds]
	mkmsk r9, 1
	bu .LBB2_1
.LBB2_23:
	.loc	1 81 0
	ldw r0, r7[r0]
	.loc	1 81 0
.Lxta.endpoint_labels0:
	out res[r0], r5
.LBB2_1:
.Lxtalabel1:
	.loc	1 42 0
	clre
	ldw r0, sp[1]
	ldw r0, r0[0]
	ldap r11, .Ltmp47
	setv res[r0], r11
	eeu res[r0]
	.loc	1 92 0
	setsr 1
	clrsr 1
	bu .Ltmp48
.Ltmp47:
.LBB2_2:
.Lxtalabel2:
	in r1, res[r0]
	add r2, r1, r6
	zext r2, 8
	sub r1, r1, r2
	setd res[r0], r1
	outct res[r0], 1
	int r3, res[r0]
	int r2, res[r0]
	.loc	1 45 0
	lsu r1, r8, r2
	bf r1, .LBB2_6
	mov r1, r5
	bu .LBB2_5
.LBB2_4:
.Lxtalabel3:
	.loc	1 47 0
	stw r3, dp[cmd.static]
	.loc	1 48 0
	stw r2, dp[num.static]
.Ltmp49:
	ldw r0, sp[1]
	ldw r0, r0[0]
	mkmsk r1, 8
.LBB2_5:
.Lxtalabel4:
	out res[r0], r5
	out res[r0], r1
	outct res[r0], 1
	bu .LBB2_1
.LBB2_6:
	.loc	1 45 0
	and r1, r3, r6
	ldc r11, 170
	lsu r11, r1, r11
	ldc r1, 0
	bt r11, .LBB2_5
	ldc r11, 205
	lsu r11, r3, r11
	bt r11, .LBB2_4
	bu .LBB2_5
.Ltmp48:
.LBB2_8:
.Lxtalabel5:
	.loc	1 57 0
	ldw r1, dp[old_num.static]
	ldw r0, dp[num.static]
	eq r2, r0, r1
	bf r2, .LBB2_13
.LBB2_9:
	.loc	1 64 0
	ldw r1, dp[cmd.static]
	ldc r2, 170
	eq r2, r1, r2
	bt r2, .LBB2_15
	ldc r2, 187
	eq r2, r1, r2
	bt r2, .LBB2_19
	ldc r2, 204
	eq r1, r1, r2
	bt r1, .LBB2_22
.Lxtalabel6:
.Ltmp50:
	ldw r4, cp[.LCPI2_2]
	.loc	1 85 0
.Lxta.endpoint_labels1:
	out res[r4], r5
	ldw r10, cp[.LCPI2_1]
	.loc	5 47 0
.Ltmp51:
	mov r0, r10
	mov r1, r5
.Lxta.call_labels0:
	bl delay_ticks_longlong
.Ltmp52:
	.loc	1 87 0
.Lxta.endpoint_labels2:
	out res[r4], r9
.Ltmp53:
	.loc	5 47 0
	mov r0, r10
	mov r1, r5
.Lxta.call_labels1:
	bl delay_ticks_longlong
.Ltmp54:
	.loc	1 89 0
	stw r5, dp[old_num.static]
	bu .LBB2_1
.LBB2_13:
.Lxtalabel7:
	mkmsk r2, 2
	.loc	1 60 0
	lsu r2, r1, r2
	bf r2, .LBB2_24
	ldw r1, r7[r1]
	.loc	1 60 0
.Lxta.endpoint_labels3:
	out res[r1], r9
	.loc	1 61 0
	stw r0, dp[old_num.static]
	bu .LBB2_9
.LBB2_15:
.Lxtalabel8:
	mkmsk r1, 2
	.loc	1 67 0
	lsu r1, r0, r1
	bf r1, .LBB2_24
.Lxtalabel9:
	ldw r0, r7[r0]
.Ltmp55:
	.loc	1 67 0
.Lxta.endpoint_labels4:
	out res[r0], r5
	ldw r0, cp[.LCPI2_1]
	.loc	5 47 0
.Ltmp56:
	mov r1, r5
.Lxta.call_labels2:
	bl delay_ticks_longlong
.Ltmp57:
	.loc	1 69 0
	ldw r0, dp[num.static]
	lsu r1, r8, r0
	bt r1, .LBB2_24
.Lxtalabel10:
	ldw r0, r7[r0]
	.loc	1 69 0
.Lxta.endpoint_labels5:
	out res[r0], r9
.Ltmp58:
	ldw r0, cp[.LCPI2_1]
.LBB2_18:
.Lxtalabel11:
	.loc	5 47 0
.Ltmp59:
	mov r1, r5
.Lxta.call_labels3:
	bl delay_ticks_longlong
	bu .LBB2_1
.Ltmp60:
.LBB2_19:
.Lxtalabel12:
	mkmsk r1, 2
	.loc	1 74 0
	lsu r1, r0, r1
	bf r1, .LBB2_24
.Lxtalabel13:
	ldw r0, r7[r0]
.Ltmp61:
	.loc	1 74 0
.Lxta.endpoint_labels6:
	out res[r0], r5
	ldw r0, cp[.LCPI2_0]
	.loc	5 55 0
.Ltmp62:
	mov r1, r5
.Lxta.call_labels4:
	bl delay_ticks_longlong
.Ltmp63:
	.loc	1 76 0
	ldw r0, dp[num.static]
	lsu r1, r8, r0
	bt r1, .LBB2_24
.Lxtalabel14:
	ldw r0, r7[r0]
	.loc	1 76 0
.Lxta.endpoint_labels7:
	out res[r0], r9
.Ltmp64:
	ldw r0, cp[.LCPI2_0]
	bu .LBB2_18
.LBB2_22:
.Lxtalabel15:
.Ltmp65:
	mkmsk r1, 2
	.loc	1 81 0
	lsu r1, r0, r1
	bt r1, .LBB2_23
.Ltmp66:
.LBB2_24:
	ecallf r5
.Ltmp67:
	.size	led_server, .Ltmp67-led_server
.Lfunc_end2:
.Ltmp68:
	.cfi_endproc
.Leh_func_end2:

	.align	4
	.cc_bottom led_server.function
	.set	led_server.nstackwords,(delay_ticks_longlong.nstackwords + 9)
	.globl	led_server.nstackwords
	.set	led_server.maxcores,delay_ticks_longlong.maxcores $M 1
	.globl	led_server.maxcores
	.set	led_server.maxtimers,delay_ticks_longlong.maxtimers $M 0
	.globl	led_server.maxtimers
	.set	led_server.maxchanends,delay_ticks_longlong.maxchanends $M 0
	.globl	led_server.maxchanends
	.cc_top __main__main_tile_0.function
	.globl	__main__main_tile_0
	.align	4
	.type	__main__main_tile_0,@function
__main__main_tile_0:
.Ltmp73:
	.cfi_startproc
.Lfunc_begin3:
	.loc	4 0 0
	entsp 12
.Ltmp74:
	.cfi_def_cfa_offset 48
.Ltmp75:
	.cfi_offset 15, 0
	.loc	4 0 0 prologue_end
.Ltmp76:
	stw r4, sp[11]
.Ltmp77:
	.cfi_offset 4, -4
	stw r5, sp[10]
.Ltmp78:
	.cfi_offset 5, -8
	stw r6, sp[9]
.Ltmp79:
	.cfi_offset 6, -12
.Ltmp80:
	stw r0, sp[7]
	stw r1, sp[5]
	stw r2, sp[3]
	stw r3, sp[1]
	.loc	4 113 0
.Ltmp81:
	ldaw r0, dp[.str]
.Ltmp82:
	ldc r4, 12
	mov r1, r4
.Ltmp83:
.Lxta.call_labels5:
	bl printstr
.Ltmp84:
	.loc	4 113 0
	ldaw r0, dp[MAC_P1_NODE_2]
	bl showMAC
	.loc	4 114 0
	ldaw r0, dp[.str1]
	mov r1, r4
.Lxta.call_labels6:
	bl printstr
	.loc	4 114 0
	ldaw r0, dp[MAC_P2_NODE_2]
	bl showMAC
	.loc	4 118 0
	ldw r0, dp[eth_rst_p1]
	.loc	4 118 0
.Lxta.call_labels7:
	bl eth_phy_reset
	.loc	4 119 0
	ldw r0, dp[eth_rst_p2]
	.loc	4 119 0
.Lxta.call_labels8:
	bl eth_phy_reset
	.loc	4 122 0
	ldaw r5, dp[smi_p1]
	mov r0, r5
.Lxta.call_labels9:
	bl smi_init
	.loc	4 123 0
	ldaw r4, dp[smi_p2]
	mov r0, r4
.Lxta.call_labels10:
	bl smi_init
	mkmsk r6, 1
	.loc	4 126 0
	mov r0, r6
	mov r1, r5
.Lxta.call_labels11:
	bl eth_phy_config
	.loc	4 127 0
	mov r0, r6
	mov r1, r4
.Lxta.call_labels12:
	bl eth_phy_config
	ldaw r0, sp[1]
	ldaw r1, dp[par.desc.1]
	bl __start_other_cores
	ldw r6, sp[9]
	ldw r5, sp[10]
	ldw r4, sp[11]
	retsp 12
.Ltmp85:
.Ltmp86:
	.size	__main__main_tile_0, .Ltmp86-__main__main_tile_0
.Lfunc_end3:
.Ltmp87:
	.cfi_endproc
.Leh_func_end3:

	.align	4
	.cc_bottom __main__main_tile_0.function
	.set	__main__main_tile_0.nstackwords,((printstr.nstackwords $M showMAC.nstackwords $M eth_phy_reset.nstackwords $M smi_init.nstackwords $M eth_phy_config.nstackwords $M (par.extra_stackwords + 1 + __main__main_tile_0_task_ethernet_server_p1_lite_1.nstackwords + 1 + __main__main_tile_0_task_ethernet_server_p2_lite_2.nstackwords)) + 12)
	.globl	__main__main_tile_0.nstackwords
	.set	__main__main_tile_0.maxcores,(0 + __main__main_tile_0_task_ethernet_server_p1_lite_1.maxcores + __main__main_tile_0_task_ethernet_server_p2_lite_2.maxcores) $M eth_phy_config.maxcores $M eth_phy_reset.maxcores $M printstr.maxcores $M showMAC.maxcores $M smi_init.maxcores $M 1
	.globl	__main__main_tile_0.maxcores
	.set	__main__main_tile_0.maxtimers,(1 + __main__main_tile_0_task_ethernet_server_p1_lite_1.maxtimers + __main__main_tile_0_task_ethernet_server_p2_lite_2.maxtimers) $M eth_phy_config.maxtimers $M eth_phy_reset.maxtimers $M printstr.maxtimers $M showMAC.maxtimers $M smi_init.maxtimers $M 0
	.globl	__main__main_tile_0.maxtimers
	.set	__main__main_tile_0.maxchanends,(0 + __main__main_tile_0_task_ethernet_server_p1_lite_1.maxchanends + __main__main_tile_0_task_ethernet_server_p2_lite_2.maxchanends) $M eth_phy_config.maxchanends $M eth_phy_reset.maxchanends $M printstr.maxchanends $M showMAC.maxchanends $M smi_init.maxchanends $M 0
	.globl	__main__main_tile_0.maxchanends
	.cc_top __main__main_tile_0_task_ethernet_server_p1_lite_1.function
	.align	4
	.type	__main__main_tile_0_task_ethernet_server_p1_lite_1,@function
__main__main_tile_0_task_ethernet_server_p1_lite_1:
.Ltmp89:
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 133 0
	entsp 3
.Ltmp90:
	.cfi_def_cfa_offset 12
.Ltmp91:
	.cfi_offset 15, 0
	.loc	1 133 0 prologue_end
.Ltmp92:
	ldw r3, r0[6]
	ldw r0, r0[4]
.Ltmp93:
	ldc r1, 6
	.loc	1 133 0
	stw r1, sp[2]
	stw r0, sp[1]
	ldaw r0, dp[mii_p1]
	ldaw r1, dp[smi_p1]
	ldaw r2, dp[MAC_P1_NODE_2]
.Lxta.call_labels13:
	bl ethernet_server_p1_lite
	retsp 3
.Ltmp94:
.Ltmp95:
	.size	__main__main_tile_0_task_ethernet_server_p1_lite_1, .Ltmp95-__main__main_tile_0_task_ethernet_server_p1_lite_1
.Lfunc_end4:
.Ltmp96:
	.cfi_endproc
.Leh_func_end4:

	.align	4
	.cc_bottom __main__main_tile_0_task_ethernet_server_p1_lite_1.function
	.set	__main__main_tile_0_task_ethernet_server_p1_lite_1.nstackwords,(ethernet_server_p1_lite.nstackwords + 3)
	.set	__main__main_tile_0_task_ethernet_server_p1_lite_1.maxcores,ethernet_server_p1_lite.maxcores $M 1
	.set	__main__main_tile_0_task_ethernet_server_p1_lite_1.maxtimers,ethernet_server_p1_lite.maxtimers $M 0
	.set	__main__main_tile_0_task_ethernet_server_p1_lite_1.maxchanends,ethernet_server_p1_lite.maxchanends $M 0
	.cc_top __main__main_tile_0_task_ethernet_server_p2_lite_2.function
	.align	4
	.type	__main__main_tile_0_task_ethernet_server_p2_lite_2,@function
__main__main_tile_0_task_ethernet_server_p2_lite_2:
.Ltmp98:
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 135 0
	entsp 3
.Ltmp99:
	.cfi_def_cfa_offset 12
.Ltmp100:
	.cfi_offset 15, 0
	.loc	1 135 0 prologue_end
.Ltmp101:
	ldw r3, r0[2]
	ldw r0, r0[0]
.Ltmp102:
	ldc r1, 6
	.loc	1 135 0
	stw r1, sp[2]
	stw r0, sp[1]
	ldaw r0, dp[mii_p2]
	ldaw r1, dp[smi_p2]
	ldaw r2, dp[MAC_P2_NODE_2]
.Lxta.call_labels14:
	bl ethernet_server_p2_lite
	retsp 3
.Ltmp103:
.Ltmp104:
	.size	__main__main_tile_0_task_ethernet_server_p2_lite_2, .Ltmp104-__main__main_tile_0_task_ethernet_server_p2_lite_2
.Lfunc_end5:
.Ltmp105:
	.cfi_endproc
.Leh_func_end5:

	.align	4
	.cc_bottom __main__main_tile_0_task_ethernet_server_p2_lite_2.function
	.set	__main__main_tile_0_task_ethernet_server_p2_lite_2.nstackwords,(ethernet_server_p2_lite.nstackwords + 3)
	.set	__main__main_tile_0_task_ethernet_server_p2_lite_2.maxcores,ethernet_server_p2_lite.maxcores $M 1
	.set	__main__main_tile_0_task_ethernet_server_p2_lite_2.maxtimers,ethernet_server_p2_lite.maxtimers $M 0
	.set	__main__main_tile_0_task_ethernet_server_p2_lite_2.maxchanends,ethernet_server_p2_lite.maxchanends $M 0
	.cc_top __main__main_tile_1.function
	.globl	__main__main_tile_1
	.align	4
	.type	__main__main_tile_1,@function
__main__main_tile_1:
.Ltmp107:
	.cfi_startproc
	entsp 22
.Ltmp108:
	.cfi_def_cfa_offset 88
.Ltmp109:
	.cfi_offset 15, 0
	stw r0, sp[21]
	stw r1, sp[19]
	stw r2, sp[17]
	stw r3, sp[15]
	ldw r0, sp[23]
	stw r0, sp[12]
	ldw r0, sp[24]
	stw r0, sp[10]
	ldw r0, sp[25]
	stw r0, sp[8]
	ldw r0, sp[26]
	stw r0, sp[6]
	ldw r0, sp[27]
	stw r0, sp[3]
	ldaw r0, sp[3]
	stw r0, sp[1]
	ldaw r0, sp[1]
	ldaw r1, dp[par.desc.2]
	bl __start_other_cores
.Ltmp110:
	.size	__main__main_tile_1, .Ltmp110-__main__main_tile_1
.Ltmp111:
	.cfi_endproc
.Leh_func_end6:

	.align	4
	.cc_bottom __main__main_tile_1.function
	.set	__main__main_tile_1.nstackwords,((par.extra_stackwords + 1 + __main__main_tile_1_task_ethernetHUB_4.nstackwords + 1 + __main__main_tile_1_task_led_server_5.nstackwords) + 22)
	.globl	__main__main_tile_1.nstackwords
	.set	__main__main_tile_1.maxcores,(0 + __main__main_tile_1_task_ethernetHUB_4.maxcores + __main__main_tile_1_task_led_server_5.maxcores) $M 1
	.globl	__main__main_tile_1.maxcores
	.set	__main__main_tile_1.maxtimers,(1 + __main__main_tile_1_task_ethernetHUB_4.maxtimers + __main__main_tile_1_task_led_server_5.maxtimers) $M 0
	.globl	__main__main_tile_1.maxtimers
	.set	__main__main_tile_1.maxchanends,(0 + __main__main_tile_1_task_ethernetHUB_4.maxchanends + __main__main_tile_1_task_led_server_5.maxchanends) $M 0
	.globl	__main__main_tile_1.maxchanends
	.cc_top __main__main_tile_1_task_ethernetHUB_4.function
	.align	4
	.type	__main__main_tile_1_task_ethernetHUB_4,@function
__main__main_tile_1_task_ethernetHUB_4:
.Ltmp116:
	.cfi_startproc
.Lfunc_begin7:
	.loc	1 150 0
	entsp 8
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset 15, 0
	.loc	1 0 0 prologue_end
.Ltmp119:
	stw r4, sp[7]
.Ltmp120:
	.cfi_offset 4, -4
	stw r5, sp[6]
.Ltmp121:
	.cfi_offset 5, -8
	stw r6, sp[5]
.Ltmp122:
	.cfi_offset 6, -12
	ldc r1, 72
	.loc	1 150 0
.Ltmp123:
	add r1, r0, r1
	ldw r11, r1[0]
	ldc r1, 80
	add r1, r0, r1
	ldw r4, r1[0]
	ldc r1, 56
	add r1, r0, r1
	ldw r5, r1[0]
	ldc r1, 64
	add r1, r0, r1
	ldw r6, r1[0]
	ldw r3, r0[5]
	ldw r2, r0[7]
	ldw r1, r0[9]
	ldw r0, r0[11]
.Ltmp124:
	.loc	1 150 0
	stw r6, sp[4]
	stw r5, sp[3]
	stw r4, sp[2]
	stw r11, sp[1]
.Lxta.call_labels15:
	bl ethernetHUB
	ldw r6, sp[5]
	ldw r5, sp[6]
	ldw r4, sp[7]
	retsp 8
.Ltmp125:
.Ltmp126:
	.size	__main__main_tile_1_task_ethernetHUB_4, .Ltmp126-__main__main_tile_1_task_ethernetHUB_4
.Lfunc_end7:
.Ltmp127:
	.cfi_endproc
.Leh_func_end7:

	.align	4
	.cc_bottom __main__main_tile_1_task_ethernetHUB_4.function
	.set	__main__main_tile_1_task_ethernetHUB_4.nstackwords,(ethernetHUB.nstackwords + 8)
	.set	__main__main_tile_1_task_ethernetHUB_4.maxcores,ethernetHUB.maxcores $M 1
	.set	__main__main_tile_1_task_ethernetHUB_4.maxtimers,ethernetHUB.maxtimers $M 0
	.set	__main__main_tile_1_task_ethernetHUB_4.maxchanends,ethernetHUB.maxchanends $M 0
	.cc_top __main__main_tile_1_task_led_server_5.function
	.align	4
	.type	__main__main_tile_1_task_led_server_5,@function
__main__main_tile_1_task_led_server_5:
.Ltmp129:
	.cfi_startproc
.Lfunc_begin8:
	.loc	1 152 0
	entsp 1
.Ltmp130:
	.cfi_def_cfa_offset 4
.Ltmp131:
	.cfi_offset 15, 0
	.loc	1 152 0 prologue_end
.Ltmp132:
	ldw r0, r0[0]
.Ltmp133:
	.loc	1 152 0
.Lxta.call_labels16:
	bl led_server
.Ltmp134:
.Ltmp135:
	.size	__main__main_tile_1_task_led_server_5, .Ltmp135-__main__main_tile_1_task_led_server_5
.Lfunc_end8:
.Ltmp136:
	.cfi_endproc
.Leh_func_end8:

	.align	4
	.cc_bottom __main__main_tile_1_task_led_server_5.function
	.set	__main__main_tile_1_task_led_server_5.nstackwords,(led_server.nstackwords + 1)
	.set	__main__main_tile_1_task_led_server_5.maxcores,led_server.maxcores $M 1
	.set	__main__main_tile_1_task_led_server_5.maxtimers,led_server.maxtimers $M 0
	.set	__main__main_tile_1_task_led_server_5.maxchanends,led_server.maxchanends $M 0
	.cc_top __main__main_tile_2.function
	.globl	__main__main_tile_2
	.align	4
	.type	__main__main_tile_2,@function
__main__main_tile_2:
.Ltmp138:
	.cfi_startproc
.Lfunc_begin9:
	.loc	4 0 0
	entsp 9
.Ltmp139:
	.cfi_def_cfa_offset 36
.Ltmp140:
	.cfi_offset 15, 0
	#APP
	getd r2, res[r2]
	#NO_APP
.Ltmp141:
	stw r2, sp[5]
	ldc r2, 0
	stw r2, sp[6]
	ldaw r11, sp[5]
	stw r11, sp[7]
	ldaw r11, dp[.vtable]
	stw r11, sp[8]
	#APP
	getd r3, res[r3]
	#NO_APP
.Ltmp142:
	stw r3, sp[1]
	stw r2, sp[2]
	ldaw r2, sp[1]
	stw r2, sp[3]
	ldaw r2, dp[.vtable2]
	stw r2, sp[4]
	ldaw r2, sp[7]
	ldaw r3, sp[3]
	.loc	4 161 0 prologue_end
.Ltmp143:
.Lxta.call_labels17:
	bl protocol
.Ltmp144:
	retsp 9
.Ltmp145:
.Ltmp146:
	.size	__main__main_tile_2, .Ltmp146-__main__main_tile_2
.Lfunc_end9:
.Ltmp147:
	.cfi_endproc
.Leh_func_end9:

	.align	4
	.cc_bottom __main__main_tile_2.function
	.set	__main__main_tile_2.nstackwords,(protocol.nstackwords + 9)
	.globl	__main__main_tile_2.nstackwords
	.set	__main__main_tile_2.maxcores,protocol.maxcores $M 1
	.globl	__main__main_tile_2.maxcores
	.set	__main__main_tile_2.maxtimers,protocol.maxtimers $M 0
	.globl	__main__main_tile_2.maxtimers
	.set	__main__main_tile_2.maxchanends,protocol.maxchanends $M 0
	.globl	__main__main_tile_2.maxchanends
	.cc_top __main__main_tile_3.function
	.globl	__main__main_tile_3
	.align	4
	.type	__main__main_tile_3,@function
__main__main_tile_3:
.Ltmp149:
	.cfi_startproc
.Lfunc_begin10:
	.loc	4 0 0
	entsp 2
.Ltmp150:
	.cfi_def_cfa_offset 8
.Ltmp151:
	.cfi_offset 15, 0
	stw r2, sp[1]
	ldaw r2, sp[1]
.Ltmp152:
	.loc	4 162 0 prologue_end
.Lxta.call_labels18:
	bl send
.Ltmp153:
	retsp 2
.Ltmp154:
.Ltmp155:
	.size	__main__main_tile_3, .Ltmp155-__main__main_tile_3
.Lfunc_end10:
.Ltmp156:
	.cfi_endproc
.Leh_func_end10:

	.align	4
	.cc_bottom __main__main_tile_3.function
	.set	__main__main_tile_3.nstackwords,(send.nstackwords + 2)
	.globl	__main__main_tile_3.nstackwords
	.set	__main__main_tile_3.maxcores,send.maxcores $M 1
	.globl	__main__main_tile_3.maxcores
	.set	__main__main_tile_3.maxtimers,send.maxtimers $M 0
	.globl	__main__main_tile_3.maxtimers
	.set	__main__main_tile_3.maxchanends,send.maxchanends $M 0
	.globl	__main__main_tile_3.maxchanends
	.section	.dp.rodata,"awd",@progbits
	.cc_top p_spi_flash.data
	.globl	p_spi_flash
	.align	4
	.type	p_spi_flash,@object
	.size p_spi_flash,20
p_spi_flash:
	.long	66048
	.long	65536
	.long	65792
	.long	66304
	.long	518
	.cc_bottom p_spi_flash.data
	.cc_top p_core_leds.data
	.globl	p_core_leds.globound
	.set	p_core_leds.globound,3
	.globl	p_core_leds
	.align	4
	.type	p_core_leds,@object
	.size p_core_leds,12
p_core_leds:
	.long	68608
	.long	68352
	.long	67840
	.cc_bottom p_core_leds.data
	.cc_top MAC_P1_NODE_2.data
	.align	4
	.type	MAC_P1_NODE_2,@object
	.size MAC_P1_NODE_2,6
MAC_P1_NODE_2:
	.ascii	 "\360\312\360\312\360\202"
	.cc_bottom MAC_P1_NODE_2.data
	.cc_top MAC_P2_NODE_2.data
	.align	4
	.type	MAC_P2_NODE_2,@object
	.size MAC_P2_NODE_2,6
MAC_P2_NODE_2:
	.ascii	 "\312\376\312\376\312\203"
	.cc_bottom MAC_P2_NODE_2.data
	.section	.dp.data,"awd",@progbits
	.cc_top smi_p1.data
	.globl	smi_p1
	.align	4
	.type	smi_p1,@object
	.size smi_p1,8
smi_p1:
	.long	0
	.long	262912
	.cc_bottom smi_p1.data
	.cc_top smi_p2.data
	.globl	smi_p2
	.align	4
	.type	smi_p2,@object
	.size smi_p2,8
smi_p2:
	.long	0
	.long	262656
	.cc_bottom smi_p2.data
	.section	.dp.rodata,"awd",@progbits
	.cc_top mii_p1.data
	.globl	mii_p1
	.align	4
	.type	mii_p1,@object
	.size mii_p1,40
mii_p1:
	.long	262
	.long	774
	.long	66816
	.long	68608
	.long	263168
	.long	69120
	.long	68096
	.long	68864
	.long	263424
	.long	524800
	.cc_bottom mii_p1.data
	.cc_top mii_p2.data
	.globl	mii_p2
	.align	4
	.type	mii_p2,@object
	.size mii_p2,40
mii_p2:
	.long	1030
	.long	1286
	.long	67584
	.long	67072
	.long	262400
	.long	68352
	.long	67328
	.long	67840
	.long	262144
	.long	525056
	.cc_bottom mii_p2.data
	.section	.dp.bss,"awd",@nobits
	.cc_top cmd.static.data
	.align	4
	.type	cmd.static,@object
	.size cmd.static,4
cmd.static:
	.long	0
	.cc_bottom cmd.static.data
	.cc_top num.static.data
	.align	4
	.type	num.static,@object
	.size num.static,4
num.static:
	.long	0
	.cc_bottom num.static.data
	.cc_top old_num.static.data
	.align	4
	.type	old_num.static,@object
	.size old_num.static,4
old_num.static:
	.long	0
	.cc_bottom old_num.static.data
	.section	.dp.data,"awd",@progbits
	.cc_top par.desc.1.data
	.align	4
	.type	par.desc.1,@object
	.size par.desc.1,16
par.desc.1:
	.long	__main__main_tile_0_task_ethernet_server_p1_lite_1
	.long	__main__main_tile_0_task_ethernet_server_p2_lite_2.nstackwords
	.long	0
	.long	__main__main_tile_0_task_ethernet_server_p2_lite_2
	.cc_bottom par.desc.1.data
	.section	.dp.rodata,"awd",@progbits
	.cc_top .str.data
	.align	4
	.type	.str,@object
	.size .str,12
.str:
.asciiz "MAC on P1: "
	.cc_bottom .str.data
	.cc_top .str1.data
	.align	4
	.type	.str1,@object
	.size .str1,12
.str1:
.asciiz "MAC on P2: "
	.cc_bottom .str1.data
	.section	.dp.data,"awd",@progbits
	.cc_top par.desc.2.data
	.align	4
	.type	par.desc.2,@object
	.size par.desc.2,16
par.desc.2:
	.long	__main__main_tile_1_task_ethernetHUB_4
	.long	__main__main_tile_1_task_led_server_5.nstackwords
	.long	0
	.long	__main__main_tile_1_task_led_server_5
	.cc_bottom par.desc.2.data
	.section	.dp.rodata,"awd",@progbits
	.cc_top .vtable.data
	.align	4
	.type	.vtable,@object
	.size .vtable,16
.vtable:
	.long	_i.if_led._chan.msg
	.long	__interface_client_push_yield
	.long	__interface_client_pop_yield
	.long	__noop
	.cc_bottom .vtable.data
	.cc_top .vtable2.data
	.align	4
	.type	.vtable2,@object
	.size .vtable2,16
.vtable2:
	.long	_i.if_addr._chan.msg
	.long	__interface_client_push_yield
	.long	__interface_client_pop_yield
	.long	__noop
	.cc_bottom .vtable2.data
	.section	.dp.data,"awd",@progbits
	.cc_top __xcc1_internal_1.data
	.align	4
	.type	__xcc1_internal_1,@object
	.size __xcc1_internal_1,4
__xcc1_internal_1:
	.long	66048
	.cc_bottom __xcc1_internal_1.data
	.cc_top __xcc1_internal_2.data
	.align	4
	.type	__xcc1_internal_2,@object
	.size __xcc1_internal_2,4
__xcc1_internal_2:
	.long	65536
	.cc_bottom __xcc1_internal_2.data
	.cc_top __xcc1_internal_3.data
	.align	4
	.type	__xcc1_internal_3,@object
	.size __xcc1_internal_3,4
__xcc1_internal_3:
	.long	65792
	.cc_bottom __xcc1_internal_3.data
	.cc_top __xcc1_internal_4.data
	.align	4
	.type	__xcc1_internal_4,@object
	.size __xcc1_internal_4,4
__xcc1_internal_4:
	.long	66304
	.cc_bottom __xcc1_internal_4.data
	.cc_top __xcc1_internal_5.data
	.align	4
	.type	__xcc1_internal_5,@object
	.size __xcc1_internal_5,4
__xcc1_internal_5:
	.long	518
	.cc_bottom __xcc1_internal_5.data
	.cc_top __xcc1_internal_6.data
	.align	4
	.type	__xcc1_internal_6,@object
	.size __xcc1_internal_6,4
__xcc1_internal_6:
	.long	68608
	.cc_bottom __xcc1_internal_6.data
	.cc_top __xcc1_internal_7.data
	.align	4
	.type	__xcc1_internal_7,@object
	.size __xcc1_internal_7,4
__xcc1_internal_7:
	.long	68352
	.cc_bottom __xcc1_internal_7.data
	.cc_top __xcc1_internal_8.data
	.align	4
	.type	__xcc1_internal_8,@object
	.size __xcc1_internal_8,4
__xcc1_internal_8:
	.long	67840
	.cc_bottom __xcc1_internal_8.data
	.cc_top __xcc1_internal_9.data
	.align	4
	.type	__xcc1_internal_9,@object
	.size __xcc1_internal_9,4
__xcc1_internal_9:
	.long	262912
	.cc_bottom __xcc1_internal_9.data
	.cc_top __xcc1_internal_10.data
	.align	4
	.type	__xcc1_internal_10,@object
	.size __xcc1_internal_10,4
__xcc1_internal_10:
	.long	262656
	.cc_bottom __xcc1_internal_10.data
	.cc_top __xcc1_internal_11.data
	.align	4
	.type	__xcc1_internal_11,@object
	.size __xcc1_internal_11,4
__xcc1_internal_11:
	.long	262
	.cc_bottom __xcc1_internal_11.data
	.cc_top __xcc1_internal_12.data
	.align	4
	.type	__xcc1_internal_12,@object
	.size __xcc1_internal_12,4
__xcc1_internal_12:
	.long	774
	.cc_bottom __xcc1_internal_12.data
	.cc_top __xcc1_internal_13.data
	.align	4
	.type	__xcc1_internal_13,@object
	.size __xcc1_internal_13,4
__xcc1_internal_13:
	.long	66816
	.cc_bottom __xcc1_internal_13.data
	.cc_top __xcc1_internal_14.data
	.align	4
	.type	__xcc1_internal_14,@object
	.size __xcc1_internal_14,4
__xcc1_internal_14:
	.long	68608
	.cc_bottom __xcc1_internal_14.data
	.cc_top __xcc1_internal_15.data
	.align	4
	.type	__xcc1_internal_15,@object
	.size __xcc1_internal_15,4
__xcc1_internal_15:
	.long	263168
	.cc_bottom __xcc1_internal_15.data
	.cc_top __xcc1_internal_16.data
	.align	4
	.type	__xcc1_internal_16,@object
	.size __xcc1_internal_16,4
__xcc1_internal_16:
	.long	69120
	.cc_bottom __xcc1_internal_16.data
	.cc_top __xcc1_internal_17.data
	.align	4
	.type	__xcc1_internal_17,@object
	.size __xcc1_internal_17,4
__xcc1_internal_17:
	.long	68096
	.cc_bottom __xcc1_internal_17.data
	.cc_top __xcc1_internal_18.data
	.align	4
	.type	__xcc1_internal_18,@object
	.size __xcc1_internal_18,4
__xcc1_internal_18:
	.long	68864
	.cc_bottom __xcc1_internal_18.data
	.cc_top __xcc1_internal_19.data
	.align	4
	.type	__xcc1_internal_19,@object
	.size __xcc1_internal_19,4
__xcc1_internal_19:
	.long	263424
	.cc_bottom __xcc1_internal_19.data
	.cc_top __xcc1_internal_20.data
	.align	4
	.type	__xcc1_internal_20,@object
	.size __xcc1_internal_20,4
__xcc1_internal_20:
	.long	524800
	.cc_bottom __xcc1_internal_20.data
	.cc_top __xcc1_internal_21.data
	.align	4
	.type	__xcc1_internal_21,@object
	.size __xcc1_internal_21,4
__xcc1_internal_21:
	.long	1030
	.cc_bottom __xcc1_internal_21.data
	.cc_top __xcc1_internal_22.data
	.align	4
	.type	__xcc1_internal_22,@object
	.size __xcc1_internal_22,4
__xcc1_internal_22:
	.long	1286
	.cc_bottom __xcc1_internal_22.data
	.cc_top __xcc1_internal_23.data
	.align	4
	.type	__xcc1_internal_23,@object
	.size __xcc1_internal_23,4
__xcc1_internal_23:
	.long	67584
	.cc_bottom __xcc1_internal_23.data
	.cc_top __xcc1_internal_24.data
	.align	4
	.type	__xcc1_internal_24,@object
	.size __xcc1_internal_24,4
__xcc1_internal_24:
	.long	67072
	.cc_bottom __xcc1_internal_24.data
	.cc_top __xcc1_internal_25.data
	.align	4
	.type	__xcc1_internal_25,@object
	.size __xcc1_internal_25,4
__xcc1_internal_25:
	.long	262400
	.cc_bottom __xcc1_internal_25.data
	.cc_top __xcc1_internal_26.data
	.align	4
	.type	__xcc1_internal_26,@object
	.size __xcc1_internal_26,4
__xcc1_internal_26:
	.long	68352
	.cc_bottom __xcc1_internal_26.data
	.cc_top __xcc1_internal_27.data
	.align	4
	.type	__xcc1_internal_27,@object
	.size __xcc1_internal_27,4
__xcc1_internal_27:
	.long	67328
	.cc_bottom __xcc1_internal_27.data
	.cc_top __xcc1_internal_28.data
	.align	4
	.type	__xcc1_internal_28,@object
	.size __xcc1_internal_28,4
__xcc1_internal_28:
	.long	67840
	.cc_bottom __xcc1_internal_28.data
	.cc_top __xcc1_internal_29.data
	.align	4
	.type	__xcc1_internal_29,@object
	.size __xcc1_internal_29,4
__xcc1_internal_29:
	.long	262144
	.cc_bottom __xcc1_internal_29.data
	.cc_top __xcc1_internal_30.data
	.align	4
	.type	__xcc1_internal_30,@object
	.size __xcc1_internal_30,4
__xcc1_internal_30:
	.long	525056
	.cc_bottom __xcc1_internal_30.data
	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.section	.dp.data,"awd",@progbits
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	3132
	.short	2
	.long	.Labbrev_begin
	.byte	4
	.byte	1
	.ascii	 "XMOS 32-bit XC Compiler Community_13.2.3 (build 17312, Jul-27-2015)"
	.byte	0
	.short	49152
	.ascii	 "../src/main.xc"
	.byte	0
	.long	0
	.long	.Lsection_line
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
	.byte	1
	.byte	2
	.ascii	 "port"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "clock"
	.byte	0
	.byte	7
	.byte	4
	.byte	3
	.ascii	 "__TYPE_8"
	.byte	0
	.byte	20
	.byte	4
	.ascii	 "spiMISO"
	.byte	0
	.long	191
	.byte	2
	.byte	20
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "spiSS"
	.byte	0
	.long	191
	.byte	2
	.byte	20
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	4
	.ascii	 "spiCLK"
	.byte	0
	.long	191
	.byte	2
	.byte	20
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	4
	.ascii	 "spiMOSI"
	.byte	0
	.long	191
	.byte	2
	.byte	20
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	4
	.ascii	 "spiClkblk"
	.byte	0
	.long	199
	.byte	2
	.byte	20
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	0
	.byte	5
	.ascii	 "p_spi_flash"
	.byte	0
	.ascii	 "p_spi_flash"
	.byte	0
	.long	208
	.byte	1
	.byte	2
	.byte	20
	.byte	5
	.byte	3
	.long	p_spi_flash
	.byte	6
	.byte	4
	.byte	5
	.byte	7
	.long	191
	.byte	8
	.long	352
	.byte	2
	.byte	0
	.byte	5
	.ascii	 "p_core_leds"
	.byte	0
	.ascii	 "p_core_leds"
	.byte	0
	.long	355
	.byte	1
	.byte	2
	.byte	26
	.byte	5
	.byte	3
	.long	p_core_leds
	.byte	2
	.ascii	 "unsigned char"
	.byte	0
	.byte	8
	.byte	1
	.byte	9
	.long	405
	.byte	7
	.long	422
	.byte	8
	.long	352
	.byte	5
	.byte	0
	.byte	10
	.ascii	 "MAC_P1_NODE_2"
	.byte	0
	.ascii	 "MAC_P1_NODE_2"
	.byte	0
	.long	427
	.byte	3
	.byte	38
	.byte	5
	.byte	3
	.long	MAC_P1_NODE_2
	.byte	10
	.ascii	 "MAC_P2_NODE_2"
	.byte	0
	.ascii	 "MAC_P2_NODE_2"
	.byte	0
	.long	427
	.byte	3
	.byte	39
	.byte	5
	.byte	3
	.long	MAC_P2_NODE_2
	.byte	2
	.ascii	 "int"
	.byte	0
	.byte	5
	.byte	4
	.byte	3
	.ascii	 "smi_interface_t"
	.byte	0
	.byte	8
	.byte	4
	.ascii	 "phy_address"
	.byte	0
	.long	521
	.byte	1
	.byte	22
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "p_smi_mdc"
	.byte	0
	.long	191
	.byte	1
	.byte	22
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	5
	.ascii	 "smi_p1"
	.byte	0
	.ascii	 "smi_p1"
	.byte	0
	.long	528
	.byte	1
	.byte	1
	.byte	22
	.byte	5
	.byte	3
	.long	smi_p1
	.byte	5
	.ascii	 "smi_p2"
	.byte	0
	.ascii	 "smi_p2"
	.byte	0
	.long	528
	.byte	1
	.byte	1
	.byte	23
	.byte	5
	.byte	3
	.long	smi_p2
	.byte	3
	.ascii	 "mii_interface_lite_t"
	.byte	0
	.byte	40
	.byte	4
	.ascii	 "clk_mii_rx"
	.byte	0
	.long	199
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "clk_mii_tx"
	.byte	0
	.long	199
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	4
	.ascii	 "p_mii_rxclk"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	4
	.ascii	 "p_mii_rxer"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	12
	.byte	1
	.byte	4
	.ascii	 "p_mii_rxd"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	4
	.ascii	 "p_mii_rxdv"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	4
	.ascii	 "p_mii_txclk"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	4
	.ascii	 "p_mii_txen"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	4
	.ascii	 "p_mii_txd"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	32
	.byte	1
	.byte	4
	.ascii	 "p_mii_timing"
	.byte	0
	.long	191
	.byte	1
	.byte	25
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	0
	.byte	5
	.ascii	 "mii_p1"
	.byte	0
	.ascii	 "mii_p1"
	.byte	0
	.long	647
	.byte	1
	.byte	1
	.byte	25
	.byte	5
	.byte	3
	.long	mii_p1
	.byte	5
	.ascii	 "mii_p2"
	.byte	0
	.ascii	 "mii_p2"
	.byte	0
	.long	647
	.byte	1
	.byte	1
	.byte	26
	.byte	5
	.byte	3
	.long	mii_p2
	.byte	5
	.ascii	 "eth_rst_p1"
	.byte	0
	.ascii	 "eth_rst_p1"
	.byte	0
	.long	191
	.byte	1
	.byte	1
	.byte	28
	.byte	5
	.byte	3
	.long	eth_rst_p1
	.byte	5
	.ascii	 "eth_rst_p2"
	.byte	0
	.ascii	 "eth_rst_p2"
	.byte	0
	.long	191
	.byte	1
	.byte	1
	.byte	29
	.byte	5
	.byte	3
	.long	eth_rst_p2
	.byte	11
	.ascii	 "cmd"
	.byte	0
	.ascii	 "cmd"
	.byte	0
	.long	521
	.byte	1
	.byte	38
	.byte	1
	.byte	12
	.long	1021
	.byte	5
	.byte	3
	.long	cmd.static
	.byte	11
	.ascii	 "num"
	.byte	0
	.ascii	 "num"
	.byte	0
	.long	521
	.byte	1
	.byte	38
	.byte	1
	.byte	12
	.long	1048
	.byte	5
	.byte	3
	.long	num.static
	.byte	11
	.ascii	 "old_num"
	.byte	0
	.ascii	 "old_num"
	.byte	0
	.long	521
	.byte	1
	.byte	38
	.byte	1
	.byte	12
	.long	1075
	.byte	5
	.byte	3
	.long	old_num.static
	.byte	13
	.ascii	 "_i.if_led._chan.msg"
	.byte	0
	.ascii	 "_i.if_led._chan.msg"
	.byte	0
	.byte	4
	.long	4294967295
	.long	521
	.byte	1
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "param2"
	.byte	0
	.byte	4
	.long	16777215
	.long	405
	.long	.Ldebug_loc4+0
	.byte	0
	.byte	15
	.ascii	 "_i.if_addr._chan.msg"
	.byte	0
	.ascii	 "_i.if_addr._chan.msg"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "param2"
	.byte	0
	.byte	4
	.long	16777215
	.long	521
	.long	.Ldebug_loc10+0
	.byte	0
	.byte	16
	.ascii	 "delay_seconds"
	.byte	0
	.ascii	 "delay_seconds"
	.byte	0
	.byte	5
	.byte	46
	.byte	1
	.byte	17
	.ascii	 "delay"
	.byte	0
	.byte	5
	.byte	46
	.long	2680
	.byte	0
	.byte	16
	.ascii	 "delay_milliseconds"
	.byte	0
	.ascii	 "delay_milliseconds"
	.byte	0
	.byte	5
	.byte	54
	.byte	1
	.byte	17
	.ascii	 "delay"
	.byte	0
	.byte	5
	.byte	54
	.long	2680
	.byte	0
	.byte	16
	.ascii	 "delay_microseconds"
	.byte	0
	.ascii	 "delay_microseconds"
	.byte	0
	.byte	5
	.byte	62
	.byte	1
	.byte	17
	.ascii	 "delay"
	.byte	0
	.byte	5
	.byte	62
	.long	2680
	.byte	0
	.byte	18
	.ascii	 "led_server"
	.byte	0
	.ascii	 "led_server"
	.byte	0
	.byte	1
	.byte	37
	.byte	1
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.byte	1
	.byte	94
	.byte	1
	.byte	19
	.ascii	 "led"
	.byte	0
	.byte	1
	.byte	36
	.long	2696
	.long	.Ldebug_loc12+0
	.byte	20
	.long	.Ltmp46
	.long	.Ltmp66
	.byte	20
	.long	.Ltmp46
	.long	.Ltmp66
	.byte	21
	.ascii	 "reply"
	.byte	0
	.byte	1
	.byte	44
	.long	521
	.byte	4
	.long	255
	.byte	22
	.ascii	 "led_cmd"
	.byte	0
	.byte	1
	.byte	44
	.long	405
	.byte	22
	.ascii	 "led_num"
	.byte	0
	.byte	1
	.byte	44
	.long	405
	.byte	0
	.byte	0
	.byte	0
	.byte	23
	.ascii	 "__main__main_tile_0_task_ethernet_server_p1_lite_1"
	.byte	0
	.ascii	 "__main__main_tile_0_task_ethernet_server_p1_lite_1"
	.byte	0
	.byte	1
	.byte	133
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2807
	.long	.Ldebug_loc24+0
	.byte	0
	.byte	23
	.ascii	 "__main__main_tile_0_task_ethernet_server_p2_lite_2"
	.byte	0
	.ascii	 "__main__main_tile_0_task_ethernet_server_p2_lite_2"
	.byte	0
	.byte	1
	.byte	135
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	2807
	.long	.Ldebug_loc26+0
	.byte	0
	.byte	24
	.ascii	 "__main__main_tile_0__main_tile_0"
	.byte	0
	.ascii	 "__main__main_tile_0__main_tile_0"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	25
	.ascii	 "frame"
	.byte	0
	.byte	4
	.long	16777215
	.long	2807
	.byte	0
	.byte	15
	.ascii	 "__main__main_tile_0"
	.byte	0
	.ascii	 "__main__main_tile_0"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "formal.txP24"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.long	.Ldebug_loc22+0
	.byte	0
	.byte	23
	.ascii	 "__main__main_tile_1_task_ethernetHUB_4"
	.byte	0
	.ascii	 "__main__main_tile_1_task_ethernetHUB_4"
	.byte	0
	.byte	1
	.byte	150
	.long	.Lfunc_begin7
	.long	.Lfunc_end7
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3129
	.long	.Ldebug_loc28+0
	.byte	0
	.byte	23
	.ascii	 "__main__main_tile_1_task_led_server_5"
	.byte	0
	.ascii	 "__main__main_tile_1_task_led_server_5"
	.byte	0
	.byte	1
	.byte	152
	.long	.Lfunc_begin8
	.long	.Lfunc_end8
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "frame"
	.byte	0
	.byte	1
	.long	16777215
	.long	3129
	.long	.Ldebug_loc30+0
	.byte	0
	.byte	26
	.ascii	 "__main__main_tile_1"
	.byte	0
	.ascii	 "__main__main_tile_1"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	1
	.byte	25
	.ascii	 "formal.rxP15"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.txP16"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.rxP27"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.txP28"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.dataFromP19"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.dataToP110"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.dataFromP211"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.dataToP212"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	25
	.ascii	 "formal.led13"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.byte	0
	.byte	15
	.ascii	 "__main__main_tile_2"
	.byte	0
	.ascii	 "__main__main_tile_2"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin9
	.long	.Lfunc_end9
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "formal.addr17"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.long	.Ldebug_loc38+0
	.byte	0
	.byte	15
	.ascii	 "__main__main_tile_3"
	.byte	0
	.ascii	 "__main__main_tile_3"
	.byte	0
	.byte	4
	.long	4294967295
	.byte	1
	.long	.Lfunc_begin10
	.long	.Lfunc_end10
	.byte	1
	.byte	94
	.byte	1
	.byte	14
	.ascii	 "formal.addr20"
	.byte	0
	.byte	4
	.long	16777215
	.long	2709
	.long	.Ldebug_loc44+0
	.byte	0
	.byte	2
	.ascii	 "unsigned int"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "interface"
	.byte	0
	.byte	7
	.byte	4
	.byte	2
	.ascii	 "chanend"
	.byte	0
	.byte	7
	.byte	4
	.byte	7
	.long	2709
	.byte	8
	.long	352
	.byte	1
	.byte	0
	.byte	3
	.ascii	 "frame.1"
	.byte	0
	.byte	32
	.byte	4
	.ascii	 "txP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	133
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "rxP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	133
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	4
	.ascii	 "txP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	133
	.byte	2
	.byte	35
	.byte	16
	.byte	1
	.byte	4
	.ascii	 "rxP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	133
	.byte	2
	.byte	35
	.byte	24
	.byte	1
	.byte	0
	.byte	27
	.long	2732
	.byte	4
	.byte	7
	.long	2696
	.byte	8
	.long	352
	.byte	1
	.byte	0
	.byte	7
	.long	2680
	.byte	8
	.long	352
	.byte	0
	.byte	0
	.byte	7
	.long	2680
	.byte	8
	.long	352
	.byte	1
	.byte	0
	.byte	3
	.ascii	 "__TYPE_12"
	.byte	0
	.byte	12
	.byte	4
	.ascii	 "server_state"
	.byte	0
	.long	2825
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "client_state"
	.byte	0
	.long	2837
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	4
	.byte	1
	.byte	0
	.byte	3
	.ascii	 "__TYPE_11"
	.byte	0
	.byte	20
	.byte	4
	.byte	120
	.byte	0
	.long	2813
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "state.0"
	.byte	0
	.long	2849
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	8
	.byte	1
	.byte	0
	.byte	3
	.ascii	 "frame.0"
	.byte	0
	.byte	84
	.byte	4
	.ascii	 "led"
	.byte	0
	.long	2910
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	4
	.ascii	 "dataToP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	20
	.byte	1
	.byte	4
	.ascii	 "dataFromP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	28
	.byte	1
	.byte	4
	.ascii	 "dataToP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	36
	.byte	1
	.byte	4
	.ascii	 "dataFromP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	44
	.byte	1
	.byte	4
	.ascii	 "txP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	52
	.byte	1
	.byte	4
	.ascii	 "rxP2"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	60
	.byte	1
	.byte	4
	.ascii	 "txP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	68
	.byte	1
	.byte	4
	.ascii	 "rxP1"
	.byte	0
	.long	2720
	.byte	1
	.byte	150
	.byte	2
	.byte	35
	.byte	76
	.byte	1
	.byte	0
	.byte	27
	.long	2955
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
	.byte	19
	.byte	1
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
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
	.byte	5
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
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	10
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
	.byte	11
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
	.byte	12
	.byte	52
	.byte	0
	.byte	71
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	13
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
	.byte	14
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
	.byte	15
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
	.byte	63
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
	.byte	11
	.byte	73
	.byte	19
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
	.byte	19
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
	.byte	20
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
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
	.byte	28
	.byte	10
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
	.byte	11
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
	.byte	24
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
	.byte	0
	.byte	0
	.byte	25
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
	.byte	6
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	27
	.byte	15
	.byte	0
	.byte	73
	.byte	19
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
	.long	921
.asciiz "mii_p2"
	.long	1829
.asciiz "__main__main_tile_0__main_tile_0"
	.long	367
.asciiz "p_core_leds"
	.long	1918
.asciiz "__main__main_tile_0"
	.long	2228
.asciiz "__main__main_tile_1"
	.long	1555
.asciiz "__main__main_tile_0_task_ethernet_server_p1_lite_1"
	.long	2004
.asciiz "__main__main_tile_1_task_ethernetHUB_4"
	.long	1692
.asciiz "__main__main_tile_0_task_ethernet_server_p2_lite_2"
	.long	314
.asciiz "p_spi_flash"
	.long	591
.asciiz "smi_p1"
	.long	619
.asciiz "smi_p2"
	.long	1434
.asciiz "led_server"
	.long	2506
.asciiz "__main__main_tile_2"
	.long	2593
.asciiz "__main__main_tile_3"
	.long	2117
.asciiz "__main__main_tile_1_task_led_server_5"
	.long	1322
.asciiz "delay_milliseconds"
	.long	1110
.asciiz "_i.if_led._chan.msg"
	.long	1378
.asciiz "delay_microseconds"
	.long	949
.asciiz "eth_rst_p1"
	.long	985
.asciiz "eth_rst_p2"
	.long	1194
.asciiz "_i.if_addr._chan.msg"
	.long	1276
.asciiz "delay_seconds"
	.long	893
.asciiz "mii_p1"
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
	.long	2910
.asciiz "__TYPE_11"
	.long	2849
.asciiz "__TYPE_12"
	.long	208
.asciiz "__TYPE_8"
	.long	2955
.asciiz "frame.0"
	.long	2732
.asciiz "frame.1"
	.long	528
.asciiz "smi_interface_t"
	.long	647
.asciiz "mii_interface_lite_t"
	.long	0
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp9
.Lset4 = .Ltmp158-.Ltmp157
	.short	.Lset4
.Ltmp157:
	.byte	80
.Ltmp158:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin0
	.long	.Ltmp8
.Lset5 = .Ltmp160-.Ltmp159
	.short	.Lset5
.Ltmp159:
	.byte	81
.Ltmp160:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin0
	.long	.Ltmp7
.Lset6 = .Ltmp162-.Ltmp161
	.short	.Lset6
.Ltmp161:
	.byte	82
.Ltmp162:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin1
	.long	.Ltmp22
.Lset7 = .Ltmp164-.Ltmp163
	.short	.Lset7
.Ltmp163:
	.byte	80
.Ltmp164:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin1
	.long	.Ltmp21
.Lset8 = .Ltmp166-.Ltmp165
	.short	.Lset8
.Ltmp165:
	.byte	81
.Ltmp166:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin1
	.long	.Ltmp20
.Lset9 = .Ltmp168-.Ltmp167
	.short	.Lset9
.Ltmp167:
	.byte	82
.Ltmp168:
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Lfunc_begin2
	.long	.Ltmp45
.Lset10 = .Ltmp170-.Ltmp169
	.short	.Lset10
.Ltmp169:
	.byte	80
.Ltmp170:
	.long	.Ltmp45
	.long	.Lfunc_end2
.Lset11 = .Ltmp172-.Ltmp171
	.short	.Lset11
.Ltmp171:
	.byte	126
	.byte	4
.Ltmp172:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin3
	.long	.Ltmp85
.Lset12 = .Ltmp174-.Ltmp173
	.short	.Lset12
.Ltmp173:
	.byte	80
.Ltmp174:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin3
	.long	.Ltmp83
.Lset13 = .Ltmp176-.Ltmp175
	.short	.Lset13
.Ltmp175:
	.byte	81
.Ltmp176:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin3
	.long	.Ltmp84
.Lset14 = .Ltmp178-.Ltmp177
	.short	.Lset14
.Ltmp177:
	.byte	82
.Ltmp178:
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Lfunc_begin3
	.long	.Ltmp84
.Lset15 = .Ltmp180-.Ltmp179
	.short	.Lset15
.Ltmp179:
	.byte	83
.Ltmp180:
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Lfunc_begin4
	.long	.Ltmp93
.Lset16 = .Ltmp182-.Ltmp181
	.short	.Lset16
.Ltmp181:
	.byte	80
.Ltmp182:
	.long	0
	.long	0
.Ldebug_loc26:
	.long	.Lfunc_begin5
	.long	.Ltmp102
.Lset17 = .Ltmp184-.Ltmp183
	.short	.Lset17
.Ltmp183:
	.byte	80
.Ltmp184:
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Lfunc_begin7
	.long	.Ltmp124
.Lset18 = .Ltmp186-.Ltmp185
	.short	.Lset18
.Ltmp185:
	.byte	80
.Ltmp186:
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Lfunc_begin8
	.long	.Ltmp133
.Lset19 = .Ltmp188-.Ltmp187
	.short	.Lset19
.Ltmp187:
	.byte	80
.Ltmp188:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Lfunc_begin9
	.long	.Ltmp144
.Lset20 = .Ltmp190-.Ltmp189
	.short	.Lset20
.Ltmp189:
	.byte	80
.Ltmp190:
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Lfunc_begin9
	.long	.Ltmp144
.Lset21 = .Ltmp192-.Ltmp191
	.short	.Lset21
.Ltmp191:
	.byte	81
.Ltmp192:
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Lfunc_begin9
	.long	.Ltmp141
.Lset22 = .Ltmp194-.Ltmp193
	.short	.Lset22
.Ltmp193:
	.byte	82
.Ltmp194:
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Lfunc_begin9
	.long	.Ltmp142
.Lset23 = .Ltmp196-.Ltmp195
	.short	.Lset23
.Ltmp195:
	.byte	83
.Ltmp196:
	.long	0
	.long	0
.Ldebug_loc40:
	.long	.Lfunc_begin10
	.long	.Ltmp153
.Lset24 = .Ltmp198-.Ltmp197
	.short	.Lset24
.Ltmp197:
	.byte	80
.Ltmp198:
	.long	0
	.long	0
.Ldebug_loc42:
	.long	.Lfunc_begin10
	.long	.Ltmp153
.Lset25 = .Ltmp200-.Ltmp199
	.short	.Lset25
.Ltmp199:
	.byte	81
.Ltmp200:
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Lfunc_begin10
	.long	.Ltmp152
.Lset26 = .Ltmp202-.Ltmp201
	.short	.Lset26
.Ltmp201:
	.byte	82
.Ltmp202:
	.long	0
	.long	0
.Ldebug_loc46:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits

	.typestring _i.if_led._chan.msg, "f{si}(&(s(yarg){m(dest){chd},m(y){ui}}),uc,uc)"
	.overlay_reference _i.if_led._chan.msg,_i.if_led._client_call.fns
	.typestring _i.if_addr._chan.msg, "f{0}(&(s(yarg){m(dest){chd},m(y){ui}}),&(a(:uc)),si)"
	.overlay_reference _i.if_addr._chan.msg,_i.if_addr._client_call.fns
	.typestring delay_ticks_longlong, "f{0}(ull)"
	.typestring smi_init, "f{0}(&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}))"
	.typestring eth_phy_config, "f{0}(si,&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}))"
	.typestring ethernet_server_p1_lite, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),n:&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}),&(a(:c:uc)),chd,chd)"
	.typestring ethernet_server_p2_lite, "f{0}(&(s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}),n:&(s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}),&(a(:c:uc)),chd,chd)"
	.typestring eth_phy_reset, "f{0}(o:p)"
	.typestring ethernetHUB, "f{0}(chd,chd,chd,chd,chd,chd,chd,chd)"
	.typestring showMAC, "f{0}(&(a(6:c:uc)))"
	.typestring printstr, "f{si}(a:&(a(:c:uc)))"
	.typestring protocol, "f{0}(chd,chd,ic(if_led){m(msg){f{si}(uc,uc)}},ic(if_addr){m(msg){f{0}(&(a(:uc)),si)}})"
	.typestring send, "f{0}(chd,chd,is(if_addr){m(msg){f{0}(&(a(:uc)),si)}})"
	.typestring led_server, "f{0}(is(if_led){m(msg){f{si}(uc,uc)}})"
	.typestring __main__main_tile_0, "f{0}(chd,chd,chd,chd)"
	.typestring __main__main_tile_1, "f{0}(chd,chd,chd,chd,chd,chd,chd,chd,chd)"
	.typestring __main__main_tile_2, "f{0}(chd,chd,chd,chd)"
	.typestring __main__main_tile_3, "f{0}(chd,chd,chd)"
	.typestring p_spi_flash, "s(){m(spiMISO){bi:p:8},m(spiSS){o:p},m(spiCLK){o:p},m(spiMOSI){bo:p:8},m(spiClkblk){ck}}"
	.typestring p_core_leds, "a(3:o:p)"
	.typestring smi_p1, "s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}"
	.typestring smi_p2, "s(smi_interface_t){m(phy_address){si},m(p_smi_mdc){p}}"
	.typestring mii_p1, "s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}"
	.typestring mii_p2, "s(mii_interface_lite_t){m(clk_mii_rx){ck},m(clk_mii_tx){ck},m(p_mii_rxclk){i:p},m(p_mii_rxer){i:p},m(p_mii_rxd){bi:p:32},m(p_mii_rxdv){i:p},m(p_mii_txclk){i:p},m(p_mii_txen){o:p},m(p_mii_txd){bo:p:32},m(p_mii_timing){i:p}}"
	.typestring eth_rst_p1, "o:p"
	.typestring eth_rst_p2, "o:p"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_0,.Lxta.call_labels5
	.ascii	 "../src/main.xc"
	.byte	0
	.long	113
	.long	.Lxta.call_labels5
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels6
	.ascii	 "../src/main.xc"
	.byte	0
	.long	114
	.long	.Lxta.call_labels6
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels7
	.ascii	 "../src/main.xc"
	.byte	0
	.long	118
	.long	.Lxta.call_labels7
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels8
	.ascii	 "../src/main.xc"
	.byte	0
	.long	119
	.long	.Lxta.call_labels8
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels9
	.ascii	 "../src/main.xc"
	.byte	0
	.long	122
	.long	.Lxta.call_labels9
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels10
	.ascii	 "../src/main.xc"
	.byte	0
	.long	123
	.long	.Lxta.call_labels10
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels11
	.ascii	 "../src/main.xc"
	.byte	0
	.long	126
	.long	.Lxta.call_labels11
.cc_bottom cc_6
.cc_top cc_7,.Lxta.call_labels12
	.ascii	 "../src/main.xc"
	.byte	0
	.long	127
	.long	.Lxta.call_labels12
.cc_bottom cc_7
.cc_top cc_8,.Lxta.call_labels13
	.ascii	 "../src/main.xc"
	.byte	0
	.long	133
	.long	.Lxta.call_labels13
.cc_bottom cc_8
.cc_top cc_9,.Lxta.call_labels14
	.ascii	 "../src/main.xc"
	.byte	0
	.long	135
	.long	.Lxta.call_labels14
.cc_bottom cc_9
.cc_top cc_10,.Lxta.call_labels15
	.ascii	 "../src/main.xc"
	.byte	0
	.long	147
	.long	.Lxta.call_labels15
.cc_bottom cc_10
.cc_top cc_11,.Lxta.call_labels16
	.ascii	 "../src/main.xc"
	.byte	0
	.long	152
	.long	.Lxta.call_labels16
.cc_bottom cc_11
.cc_top cc_12,.Lxta.call_labels17
	.ascii	 "../src/main.xc"
	.byte	0
	.long	161
	.long	.Lxta.call_labels17
.cc_bottom cc_12
.cc_top cc_13,.Lxta.call_labels18
	.ascii	 "../src/main.xc"
	.byte	0
	.long	162
	.long	.Lxta.call_labels18
.cc_bottom cc_13
.cc_top cc_14,.Lxta.call_labels3
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	.Lxta.call_labels3
.cc_bottom cc_14
.cc_top cc_15,.Lxta.call_labels2
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	.Lxta.call_labels2
.cc_bottom cc_15
.cc_top cc_16,.Lxta.call_labels1
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	.Lxta.call_labels1
.cc_bottom cc_16
.cc_top cc_17,.Lxta.call_labels0
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	.Lxta.call_labels0
.cc_bottom cc_17
.cc_top cc_18,.Lxta.call_labels4
	.ascii	 "timer.h"
	.byte	0
	.long	55
	.long	.Lxta.call_labels4
.cc_bottom cc_18
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_19,.Lxta.endpoint_labels3
	.ascii	 "../src/main.xc"
	.byte	0
	.long	60
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_19
.cc_top cc_20,.Lxta.endpoint_labels4
	.ascii	 "../src/main.xc"
	.byte	0
	.long	67
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_20
.cc_top cc_21,.Lxta.endpoint_labels5
	.ascii	 "../src/main.xc"
	.byte	0
	.long	69
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_21
.cc_top cc_22,.Lxta.endpoint_labels6
	.ascii	 "../src/main.xc"
	.byte	0
	.long	74
	.long	.Lxta.endpoint_labels6
.cc_bottom cc_22
.cc_top cc_23,.Lxta.endpoint_labels7
	.ascii	 "../src/main.xc"
	.byte	0
	.long	76
	.long	.Lxta.endpoint_labels7
.cc_bottom cc_23
.cc_top cc_24,.Lxta.endpoint_labels0
	.ascii	 "../src/main.xc"
	.byte	0
	.long	81
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_24
.cc_top cc_25,.Lxta.endpoint_labels1
	.ascii	 "../src/main.xc"
	.byte	0
	.long	85
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_25
.cc_top cc_26,.Lxta.endpoint_labels2
	.ascii	 "../src/main.xc"
	.byte	0
	.long	87
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_26
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/app_ethernet_led/.build_lite"
	.byte	0
.cc_top cc_27,.Lxtalabel0
	.ascii	 "../src/main.xc"
	.byte	0
	.long	37
	.long	40
	.long	.Lxtalabel0
.cc_bottom cc_27
.cc_top cc_28,.Lxtalabel1
	.ascii	 "../src/main.xc"
	.byte	0
	.long	41
	.long	44
	.long	.Lxtalabel1
.cc_bottom cc_28
.cc_top cc_29,.Lxtalabel2
	.ascii	 "../src/main.xc"
	.byte	0
	.long	45
	.long	45
	.long	.Lxtalabel2
.cc_bottom cc_29
.cc_top cc_30,.Lxtalabel3
	.ascii	 "../src/main.xc"
	.byte	0
	.long	46
	.long	50
	.long	.Lxtalabel3
.cc_bottom cc_30
.cc_top cc_31,.Lxtalabel4
	.ascii	 "../src/main.xc"
	.byte	0
	.long	53
	.long	57
	.long	.Lxtalabel4
.cc_bottom cc_31
.cc_top cc_32,.Lxtalabel7
	.ascii	 "../src/main.xc"
	.byte	0
	.long	58
	.long	62
	.long	.Lxtalabel7
.cc_bottom cc_32
.cc_top cc_33,.Lxtalabel5
	.ascii	 "../src/main.xc"
	.byte	0
	.long	63
	.long	66
	.long	.Lxtalabel5
.cc_bottom cc_33
.cc_top cc_34,.Lxtalabel8
	.ascii	 "../src/main.xc"
	.byte	0
	.long	67
	.long	73
	.long	.Lxtalabel8
.cc_bottom cc_34
.cc_top cc_35,.Lxtalabel12
	.ascii	 "../src/main.xc"
	.byte	0
	.long	74
	.long	80
	.long	.Lxtalabel12
.cc_bottom cc_35
.cc_top cc_36,.Lxtalabel15
	.ascii	 "../src/main.xc"
	.byte	0
	.long	81
	.long	84
	.long	.Lxtalabel15
.cc_bottom cc_36
.cc_top cc_37,.Lxtalabel6
	.ascii	 "../src/main.xc"
	.byte	0
	.long	85
	.long	91
	.long	.Lxtalabel6
.cc_bottom cc_37
.cc_top cc_38,.Lxtalabel6
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel6
.cc_bottom cc_38
.cc_top cc_39,.Lxtalabel6
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel6
.cc_bottom cc_39
.cc_top cc_40,.Lxtalabel9
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel9
.cc_bottom cc_40
.cc_top cc_41,.Lxtalabel10
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel10
.cc_bottom cc_41
.cc_top cc_42,.Lxtalabel11
	.ascii	 "timer.h"
	.byte	0
	.long	47
	.long	48
	.long	.Lxtalabel11
.cc_bottom cc_42
.cc_top cc_43,.Lxtalabel13
	.ascii	 "timer.h"
	.byte	0
	.long	55
	.long	56
	.long	.Lxtalabel13
.cc_bottom cc_43
.cc_top cc_44,.Lxtalabel14
	.ascii	 "timer.h"
	.byte	0
	.long	55
	.long	56
	.long	.Lxtalabel14
.cc_bottom cc_44
.Lentries_end5:
