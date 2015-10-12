# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_interrrupt_p2.S"
.cc_top mii_install_handler.func, mii_install_handler
# 7 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_interrrupt_p2.S"
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
# 8 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_dual/src/lite_p2/mii_client_interrrupt_p2.S" 2







.globl mii_install_handler.nstackwords
.globl mii_install_handler.maxthreads
.globl mii_install_handler.maxtimers
.globl mii_install_handler.maxchanends
.globl mii_install_handler.maxsync
.type mii_install_handler, @function
.linkset mii_install_handler.locnoside, 0
.linkset mii_install_handler.nstackwords, 0
.linkset mii_install_handler.maxchanends, 0
.linkset mii_install_handler.maxtimers, 0
.linkset mii_install_handler.maxthreads, 0
.linkset mii_install_handler.maxsync, 0

.globl mii_install_handler









    .align 4
mii_install_handler:
    setd res[r3], r3
    stw r3, r0[2]

    stw r2, r0[3]
    ldap r11, miiInterruptHandler
    setc res[r2], 0xa
    setv res[r2], r11
    eeu res[r2]
    or r11, r0, r0
    setev res[r2], r11

    ldc r3, 148
    ldaw r2, r0[r3]
    ldaw r11, sp[0]
    set sp, r2
    stw r11, sp[0]
    krestsp 0

    ldw r2, r0[3]
    out res[r2], r1
    stw r1, r0[1]

    setsr (((1 << 0x1) - 1) << 0x1)
    retsp 0



    .align 4
miiInterruptHandler:
    kentsp 12
    stw r3, sp[4]
    stw r2, sp[3]
    stw r11, sp[5]

    get r11, ed
    ldw r3, r11[3]
    in r2, res[r3]

    stw r1, sp[2]


    ldc r1, 0
    out res[r3], r1

    stw r0, sp[1]
    stw lr, sp[6]
    or r0, r11, r11
    nop
    nop
    nop
    nop
    nop

    ldw r1, r0[1]
    ldw r11, r0[0]

    add r11, r11, 1
    bt r11, buffersAvailable
    out res[r3], r1
    ldw r3, r0[4]
    add r3, r3, 1
    stw r3, r0[4]
    bu returnFromInterrupt
buffersAvailable:
    sub r11, r11, 1
    out res[r3], r11
    stw r11, r0[1]
    ldw r3, r0[2]




    bl miiClientUser

returnFromInterrupt:

    ldw r0, sp[1]
    ldw r1, sp[2]
    ldw r2, sp[3]
    ldw r3, sp[4]
    ldw r11, sp[5]
    ldw lr, sp[6]
    krestsp 12

    kret

.cc_bottom mii_install_handler.func
