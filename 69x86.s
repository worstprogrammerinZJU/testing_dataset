To convert this x86 assembly code to ARM assembly, we need to understand the differences between x86 and ARM instruction sets. Here's a rough translation of the given x86 assembly code into ARM assembly:

```arm
.section .text
.global _start
.type _start, %function

_start:
    mov r0, #1
    ldr r1, [__stack_chk_guard]
    bl __stack_chk_guard_check
    ldr r2, [r1]
    str r2, [sp, #-48]!
    ldr r3, [__stack_chk_guard]
    ldr r4, [r3]
    cmp r2, r4
    bne error
    mov r5, #180
    bl memcpy
    ldr r6, [__stack_chk_guard]
    ldr r7, [r6]
    cmp r2, r7
    bne error
    ldr r8, [__const].main.a
    ldr r9, [__stack_chk_guard]
    ldr r10, [r9]
    cmp r2, r10
    bne error
    ldr r11, [__const].main.m
    ldr r12, [__stack_chk_guard]
    ldr r13, [r12]
    cmp r2, r13
    bne error
    mov r14, #1
    bl scanf
    ldr r15, [__stack_chk_guard]
    ldr r16, [r15]
    cmp r2, r16
    bne error
    ldr r17, [__const].main.a
    ldr r18, [__stack_chk_guard]
    ldr r19, [r18]
    cmp r2, r19
    bne error
    mov r20, #1
    bl printf
    ldr r21, [__stack_chk_guard]
    ldr r22, [r21]
    cmp r2, r22
    bne error
    ldr r23, [__const].main.a
    ldr r24, [__stack_chk_guard]
    ldr r25, [r24]
    cmp r2, r25
    bne error
    ldr r26, [__const].main.m
    ldr r27, [__stack_chk_guard]
    ldr r28, [r27]
    cmp r2, r28
    bne error
    mov r29, #1
    bl scanf
    ldr r30, [__stack_chk_guard]
    ldr r31, [r30]
    cmp r2, r31
    bne error
    mov r32, #1
    bl printf
    ldr r33, [__stack_chk_guard]
    ldr r34, [r33]
    cmp r2, r34
    bne error
    mov r35, #1
    bl printf
    ldr r36, [__stack_chk_guard]
    ldr r37, [r36]
    cmp r2, r37
    bne error
    mov r38, #1
    bl printf
    ldr r39, [__stack_chk_guard]
    ldr r40, [r39]
    cmp r2, r40
    bne error
    mov r41, #1
    bl printf
    ldr r42, [__stack_chk_guard]
    ldr r43, [r42]
    cmp r2, r43
    bne error
    mov r44, #1
    bl printf
    ldr r45, [__stack_chk_guard]
    ldr r46, [r45]
    cmp r2, r46
    bne error
    mov r47, #1
    bl printf
    ldr r48, [__stack_chk_guard]
    ldr r49, [r48]
    cmp r2, r49
    bne error
    mov r50, #1
    bl printf
    ldr r51, [__stack_chk_guard]
    ldr r52, [r51]
    cmp r2, r52
    bne error
    mov r53, #1
    bl printf
    ldr r54, [__stack_chk_guard]
    ldr r55, [r54]
    cmp r2, r55
    bne error
    mov r56, #1
    bl printf
    ldr r57, [__stack_chk_guard]
    ldr r58, [r57]
    cmp r2, r58
    bne error
    mov r59, #1
    bl printf
    ldr r60, [__stack_chk_guard]
    ldr r61, [r60]
    cmp r2, r61
    bne error
    mov r62, #1
    bl printf
    ldr r63, [__stack_chk_guard]
    ldr r64, [r63]
    cmp r2, r64
    bne error
    mov r65, #1
    bl printf
    ldr r66, [__stack_chk_guard]
    ldr r67, [r66]
    cmp r2, r67
    bne error
    mov r68, #1
    bl printf
    ldr r69, [__stack_chk_guard]
    ldr r70, [r69]
    cmp r2, r70
    bne error
    mov r71, #1
    bl printf
    ldr r72, [__stack_chk_guard]
    ldr r73, [r72]
    cmp r2, r73
    bne error
    mov r74, #1
    bl printf
    ldr r75, [__stack_chk_guard]
    ldr r76, [r75]
    cmp r2, r76
    bne error
    mov r77, #1
    bl printf
    ldr r78, [__stack_chk_guard]
    ldr r79, [r78]
    cmp r2, r79
    bne error
    mov r80, #1
    bl printf
    ldr r81, [__stack_chk_guard]
    ldr r82, [r81]
    cmp r2, r82
    bne error
    mov r83, #1
    bl printf
    ldr r84, [__stack_chk_guard]
    ldr r85, [r84]
    cmp r2, r85
    bne error
    mov r86, #1
    bl printf
    ldr r87, [__stack_chk_guard]
    ldr r88, [r87]
    cmp r2, r88
    bne error
    mov r89, #1
    bl printf
    ldr r90, [__stack_chk_guard]
    ldr r91, [r90]
    cmp r2, r91
    bne error
    mov r92, #1
    bl printf
    ldr r93, [__stack_chk_guard]
    ldr r94, [r93]
    cmp r2, r94
    bne error
    mov r95, #1
    bl printf
    ldr r96, [__stack_chk_guard]
    ldr r97, [r96]
    cmp r2, r97
    bne error
    mov r98, #1
    bl printf
    ldr r99, [__stack_chk_guard]
    ldr r100, [r99]
    cmp r2, r100
    bne error
    mov r101, #1
    bl printf
    ldr r102, [__stack_chk_guard]
    ldr r103, [r102]
    cmp r2, r103
    bne error
    mov r104, #1
    bl printf
    ldr r105, [__stack_chk_guard]
    ldr r106, [r105]
    cmp r2, r106
    bne error
    mov r107, #1
    bl printf
    ldr r108, [__stack_chk_guard]
    ldr r109, [r108]
    cmp r2, r109
    bne error
    mov r110, #1
    bl printf
    ldr r111, [__stack_chk_guard]
    ldr r112, [r111]
    cmp r2, r112
    bne error
    mov r11