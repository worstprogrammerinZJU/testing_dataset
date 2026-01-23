Here is the equivalent ARM assembly code:

```arm
.section ".text", "ax"
.global _find
_find:
    push {r4-r11}
    push {lr}
    mov r0, #_s
    ldr r1, [r0]
    ldrb r2, [r1]
    ldrb r3, [r1, #1]
    mov r4, r2
    mov r5, r3
    orr r6, r4, r5
    mov r7, #1
    orr r6, r6, r7
    beq LBB0_4
.LBB0_1:
    ldrb r8, [r1, #2]
    ldrb r9, [r1, #3]
    mov r10, r8
    orr r11, r9, r10
    mov r12, #1
    orr r12, r12, r11
    beq LBB0_4
.LBB0_2:
    cmp b, r9
    seteq r9, r9
    cmp b, rbl
    seteq rbl, rbl
    cmp b, r11
    seteq r11, r11
    cmp b, r8
    seteq r8, r8
    ldrb r10, [r1, #6]
    cmp b, r8
    seteq r15, r15
    cmp b, r13
    seteq r12, r12
    mov r13, r15
    and r12, r13
    cmp b, r14
    seteq r14, r14
    and r14, r13
    and r11, rbl
    and r15, rbl
    or r13, rbl
    and r9, r14
    and r12, r14
    or cl, r10
    seteq al, al
    je LBB0_4
.LBB0_4:
    pop {r4-r11}
    pop {lr}
    bx lr
```

Please note that this code is not directly translated from your x86 assembly code due to differences in instruction set, data types, and calling conventions between these architectures. The translation is simplified for illustrative purposes only and may not cover all edge cases or optimizations present in your original x86 code. If you need more accurate translation, you should use an x86-to-ARM translator tool or manually rewrite the code according to the ARM instruction set specifications.