# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lld_p1.S"
.cc_top _miiLLD.func, _miiLLD
# 2 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lld_p1.S"
# 1 "xs1.h" 1 3
# 19 "xs1.h" 3
# 1 "timer.h" 1 3
# 20 "xs1.h" 2 3
# 33 "xs1.h" 3
# 1 "xs1_g4000b-512.h" 1 3
# 34 "xs1.h" 2 3
# 39 "xs1.h" 3
# 1 "xs1_user.h" 1 3
# 20 "xs1_user.h" 3
# 1 "xs1b_user.h" 1 3
# 21 "xs1_user.h" 2 3
# 40 "xs1.h" 2 3
# 1 "xs1_kernel.h" 1 3
# 20 "xs1_kernel.h" 3
# 1 "xs1b_kernel.h" 1 3
# 21 "xs1_kernel.h" 2 3
# 41 "xs1.h" 2 3
# 1 "xs1_registers.h" 1 3
# 20 "xs1_registers.h" 3
# 1 "xs1b_registers.h" 1 3
# 29 "xs1b_registers.h" 3
# 1 "xs1_g_registers.h" 1 3
# 30 "xs1b_registers.h" 2 3
# 1 "xs1_l_registers.h" 1 3
# 31 "xs1b_registers.h" 2 3
# 21 "xs1_registers.h" 2 3
# 42 "xs1.h" 2 3
# 1 "xs1_clock.h" 1 3
# 43 "xs1.h" 2 3
# 3 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lld_p1.S" 2
# 32 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lld_p1.S"
     .section .cp.rodata, "ac", @progbits

    .align 4

    .globl _polynomial

initialCRC:
    .word 0x9226F562
_polynomial:
    .word 0xEDB88320
allFives:
    .word 0x55555555
DallFives:
    .word 0xD5555555

    .text
    .align 4
# 64 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p1/mii_lld_p1.S"
.globl _miiLLD.nstackwords
.globl _miiLLD.maxthreads
.globl _miiLLD.maxtimers
.globl _miiLLD.maxchanends
.globl _miiLLD.maxsync
.type _miiLLD, @function
.linkset _miiLLD.maxchanends, 0
.linkset _miiLLD.maxtimers, 0
.linkset _miiLLD.maxthreads, 0
.linkset _miiLLD.locnoside, 0
.linkset _miiLLD.locnochandec, 1
.linkset _miiLLD.nstackwords, 19

    .globl _miiLLD






_miiLLD:
    entsp 19
    stw r4, sp[1]
    stw r5, sp[2]
    stw r6, sp[3]
    stw r7, sp[4]
    stw r8, sp[5]
    stw r9, sp[6]
    stw r10, sp[7]
    stw r11, sp[8]

    ldc r11, 0xD
    setd res[r0], r11
    setc res[r0], 0x11
    ldap r11, mii_rxd_preamble
    setv res[r0], r11
    edu res[r0]
    setc res[r0], 0xa

    ldap r11, mii_rxdv0
    setv res[r1], r11
    ldc r11, 0x0
    setd res[r1], r11
    setc res[r1], 0x11
    edu res[r1]
    setc res[r1], 0xa



    in r4, res[r3]
    ldap r11, mii_rxd_packet
    setv res[r3], r11
    setc res[r3], 0xa
    eeu res[r3]




    ldw r6, cp[_polynomial]


    ldc r8, 99







    eeu res[r0]

    ldw r11, sp[(19+3)]
    setsr (((1 << 0x1) - 1) << 0x1)

    bu stateIdle






    .align 4

mii_rxd:
    in r11, res[r0]
    stw r11, r4[1]
    crc32 r10, r11, r6
    add r4, r4, 4
    kret

    .align 4

mii_rxdv0:
    in r11, res[r1]
    out res[r3], r4
    edu res[r1]
    kret

    .align 4
mii_rxLastBits:
    endin r11, res[r0]
    stw r11, r4[2]
    in r11, res[r0]
    stw r11, r4[1]
    edu res[r0]
    stw r10, r4[3]
    kret

    .align 4
mii_rxd_packet:
    in r11, res[r3]
    bf r11, mii_rxLastBits
    or r4, r11, r11
    eeu res[r0]
    setc res[r0], 0x11
    ldap r11, mii_rxd_preamble
    setv res[r0], r11
    ldw r11, sp[(19+3)]
    kret

    .align 4

mii_rxd_preamble:
    in r11, res[r11]
    stw r11, r4[0]
    in r11, res[r0]
    ldw r10, cp[initialCRC]
    ldap r11, mii_rxd
    setv res[r0], r11
    setc res[r1], 0x17

    eeu res[r1]
    kret




stateDone:
    clrsr (((1 << 0x1) - 1) << 0x1)
    chkct res[r9], 1
    outct res[r9], 1
drainIn:
    testct r5, res[r3]
    bt r5, doneDone
    int r5, res[r3]
    bu drainIn
doneDone:
    chkct res[r3], 1
    outct res[r3], 1
    ldw r4, sp[1]
    ldw r5, sp[2]
    ldw r6, sp[3]
    ldw r7, sp[4]
    ldw r8, sp[5]
    ldw r9, sp[6]
    ldw r10, sp[7]
    ldw r11, sp[8]
    retsp 19


stateIdle:
    ldw r5, sp[(19+2)]
    getts r7, res[r5]
    add r7, r7, r8
    setpt res[r5], r7
    in r7, res[r5]


outIdle:


    ldw r9, sp[(19+1)]
    outct res[r9], 1
    testct r5, res[r9]
    bt r5, stateDone
    in r7, res[r9]

    ldw r5, cp[allFives]



    ldw r8, sp[(19+3)]
    in r8, res[r8]



    out res[r2], r5
    ldw r5, cp[DallFives]
    out res[r2], r5
    out res[r9], r8
    ldw r9, cp[initialCRC]



    ldw r8, r7[3]
    ldw r5, r7[r8]
    add r8, r8, 1
    crc32 r9, r5, r6
    out res[r2], r5

    nop
outPacket:
    ldw r5, r7[r8]
    add r8, r8, 1
    crc32 r9, r5, r6
    out res[r2], r5
    bt r8, outPacket

    ldw r8, r7[r8]
    crc32 r9, r8, r6


    ldw r5, r7[2]
    ldw r7, r7[1]
    out res[r2], r8

    bau r5

    .align 4
Tail0:
    ldc r8, 0
    crc32 r9, r8, r6
    not r9, r9
    out res[r2], r9
    ldc r8, 98
    bu stateIdle

    .align 4
Tail1:
    crc8 r9, r8, r7, r6
    crc32 r9, r8, r6
    not r9, r9
    shl r5, r9, 8
    or r7, r7, r5
    out res[r2], r7
    shr r9, r9, 24
    outpw res[r2], r9, 8
    ldc r8, 73
    bu stateIdle

    .align 4
Tail2:
    crc8 r9, r8, r7, r6
    crc8 r9, r8, r8, r6
    crc32 r9, r8, r6
    not r9, r9

    shl r5, r9, 16
    or r7, r7, r5
    out res[r2], r7
    shr r9, r9, 16
    outpw res[r2], r9, 16

    ldc r8, 80
    bu stateIdle

    .align 4
Tail3:
    crc8 r9, r8, r7, r6
    crc8 r9, r8, r8, r6
    crc8 r9, r8, r8, r6
    outpw res[r2], r7, 24
    crc32 r9, r8, r6
    not r9, r9
    out res[r2], r9

    ldc r8, 90
    bu stateIdle


.globl _tailValues, "a(4:ui)"
.type _tailValues, @object
.section .dp.data, "adw", @progbits
    .align 4
_tailValues:
    .word Tail0
    .word Tail1
    .word Tail2
    .word Tail3
.globl _tailValues.globound
.set _tailValues.globound,4

    .text
.cc_bottom _miiLLD.func
