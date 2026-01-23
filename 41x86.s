Here is the ARM assembly equivalent of your x86 assembly code:

```arm
.global _start
.text

_start:
    push {lr}
    mov sp, lr
    push {r15, r14, r12, rbx}

    sub sp, #224
    ldr r0, =__stack_chk_guard
    ldr r0, [r0]
    str r0, [sp, #-40]

    lea r0, =-256
    call gets

    movw r14, #0x52415453
    movw r13, #-256
    xorw r14, r13
    movw r12, -252
    xorw r12, #84
    orw r13, r12
    jne .LBB0_11

    lea r15, =-255
    lea r14, =-256
    jmp .LBB0_2

.LBB0_9:
    movw r14, #10
    bl putchar
.LBB0_2:
    lea r14, =-256
    movw r13, -256
    call gets

    cmpw r13, #0x444E45
    je .LBB0_10

.LBB0_3:
    movb r13, #0
    testb r13, #0
    je .LBB0_9

.LBB0_4:
    lea r15, =-255
    jmp .LBB0_5

.LBB0_7:
    movsb r13, r13, [r13]
    addb #0xFF, r13
    lea r14, [r13, #21]
    cmpb #0x5, r13
    cmove r13, r14
.LBB0_8:
    bl putchar
    movb r13, [r13]
    inc r13
    testb r13, #0
    je .LBB0_9

.LBB0_5:
    lea r13, =-70
    cmpb r13, #0
    ja .LBB0_7

.LBB0_6:
    addb #0xFF, r13
    movb r13, [r13]
    jmp .LBB0_8

.LBB0_10:
    lea r13, =-256
    movw r13, -256
    call gets

    movw r14, #0x52415453
    movw r13, -256
    xorw r14, r13
    movw r12, -252
    xorw r12, #84
    orw r13, r12
    je .LBB0_2

.LBB0_11:
    ldr r0, =__stack_chk_guard
    ldr r0, [r0]
    cmp r0, -40
    jne .LBB0_13

    movw r0, #0
    add r13, #224
    pop {rbx, r12, r14, r15}
    bx lr
.LBB0_13:
    bl __stack_chk_fail

    .section .rodata
.str: .ascii "START\0"
```

Please note that this is an approximation and may need adjustments based on specific requirements. Also, this is an example of how you can convert assembly code from one architecture to another. In real-world scenarios, you would typically use a tool like NASM or GAS for conversion.