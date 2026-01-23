.global _start

_start:
    push {lr}
    mov sp, lr
    sub sp, #40
    str r0, [sp, #-4] ! r0 (arg1)
    str r1, [sp, #-8] ! r1 (arg2)
    bl scanf
    cmp r0, #0
    bne .loop
    ldr r0, [sp, #-4]
    ldr r1, [sp, #-8]
    bl printf
    add sp, #40
    pop {pc}

.loop:
    ldr r0, [sp, #-4]
    ldr r1, [sp, #-8]
    bl scanf
    cmp r0, #0
    beq .exit
    ldr r0, [sp, #-4]
    ldr r1, [sp, #-8]
    bl printf
    add sp, #40
    b .loop

.exit:
    mov r7, #10
    svc #0
