Here is the equivalent ARM assembly for the given x86 assembly code:

```arm
    .section __TEXT,.text,regular,pure_instructions

    .build_version macos,15,0,sdk_version 15,5

    .globl _main

    .p2align 4, 0x90

_main:
    mov r15, #0
    mov r14, #0
    mov r13, #0
    push {lr}

    mov r0, #40024
    bl ___chkstk_darwin

    sub sp, sp, #4

    ldr r0, [__stack_chk_guard@GOTPCREL]
    ldr r0, [r0]

    mov r0, #40000
    bl ___bzero

    mov r0, #1
    b LBB0_1

.LBB0_3:
    mov r1, r3
    mul r1, #351843721
    mul r2, r1, #14F8B589
    shr r2, #63
    sar r2, #45
    add r1, r2, #esi
    mul r2, #100000
    sub r1, r2, #ecx
    mov ecx, r1
    strb r1, [sp, #-32(r1)]

    cmp r1, #10000
    beq LBB0_4

.LBB0_1:
    lea r2, [sp, #-40032(r1)]
    mov r1, r3
    mul r1, #1717986919
    mul r2, r1, #66666667
    shr r2, #63
    sar r2, #34
    add r1, r2, #esi
    add r1, r1, #esi
    lea r1, [sp, #r1*4]
    sub r1, #10000
    strb r1, [r2]

    cmp r1, #10000
    beq LBB0_6

.LBB0_2:
    mov r2, r3
    mul r2, #1717986919
    mul r3, r2, #66666667
    shr r3, #63
    sar r3, #34
    add r2, r3, #esi
    add r2, r2, #esi
    lea r2, [sp, #r2*4]
    sub r2, #10000
    strb r2, [r3]

    cmp r2, #10000
    beq LBB0_7

.LBB0_4:
    mov r0, #10000
    lea r1, [sp, #-40036(r1)]
    mov r2, r3
    mul r2, #1717986919
    mul r3, r2, #66666667
    shr r3, #63
    sar r3, #34
    add r2, r3, #esi
    add r2, r2, #esi
    lea r2, [sp, #r2*4]
    sub r2, #10000
    strb r2, [r1]

    lea r1, [__str]
    mov r0, r1
    bl _scanf
    cmp r0, #-1
    beq LBB0_7

    lea r1, [__str.1]
    lea r2, [sp, #-40036(r1)]
    lea r3, [sp, #-40032(r1,4)]
    mul r2, r3, #1717986919
    mul r3, r2, #66666667
    shr r3, #63
    sar r3, #34
    add r2, r3, #esi
    add r2, r2, #esi
    lea r2, [sp, #r2*4]
    sub r2, #10000
    strb r2, [r2]

    lea r1, [__str]
    mov r0, r1
    bl _scanf
    cmp r0, #-1
    jne LBB0_6

    ldr r0, [__stack_chk_guard@GOTPCREL]
    ldr r0, [r0]
    cmp r0, -32
    beq LBB0_9

    mov r0, #0
    add sp, sp, #4
    pop {pc}
.LBB0_9:
    bl ___stack_chk_fail

    .section __TEXT,__cstring,cstring_literals

__str:
    .asciz "%d"

__str.1:
    .asciz "%5d -> %d\n"
```

Please note that this is an approximate translation and may not cover all possible cases or optimizations from the original x86 assembly. Additionally, ARM architecture has different register sizes and calling conventions compared to x86.