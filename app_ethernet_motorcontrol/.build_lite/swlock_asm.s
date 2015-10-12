# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_locks/src/swlock_asm.S"





          .file "swlock_asm.S"
          .text
.cc_top swlock_try_acquire.function
          .align 4
.globl swlock_try_acquire
.globl swlock_try_acquire.nstackwords
.globl swlock_try_acquire.maxthreads
.globl swlock_try_acquire.maxtimers
.globl swlock_try_acquire.maxchanends
.type swlock_try_acquire, @function
.set swlock_try_acquire.locnochandec, 1
.set swlock_try_acquire.nstackwords, 0
swlock_try_acquire:
    ENTSP_lu6 0
    get r11, id
    add r11, r11, 1
    ldw r1, r0[0]
    bt r1, .Lfailed
    stw r11, r0[0]
    nop
    ldw r2, r0[0]
    eq r0, r11, r2
    retsp 0
.Lfailed:
    ldc r0, 0
    retsp 0
.size swlock_try_acquire, .-swlock_try_acquire
.cc_bottom swlock_try_acquire.function
.set swlock_try_acquire.maxchanends, 0
.set swlock_try_acquire.maxtimers, 0
.set swlock_try_acquire.maxthreads, 1
