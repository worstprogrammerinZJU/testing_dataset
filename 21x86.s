Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start
_start:
    mov r12, #40024       ; imm = 0x9C58
    bl __chkstk_darwin
    sub sp, sp, #40024
    ldr r1, [__stack_chk_guard]
    ldr r1, [r1]
    str r1, [sp, #-48]

    lea r0, [__str]
    lea r1, [sp, #-40056]
    lea r2, [sp, #-40048]
    xor r0, r0, r0
    bl scanf
    ldr r0, [sp, #-40056]
    cmp r0, #2
    jl .loop1

    dec r0
    lea r0, [__str]
    lea r1, [sp, #-40052]
    xor r0, r0, r0
    bl scanf
    ldr r0, [sp, #-40052]
    xor r0, r0, r0
    cmp r0, #0
    setge r0
    mov r1, #1
    cmple r0, r1
    je .loop1

    add r0, r0, #1
    sub r0, r0, r1
    movslq r1, r0
    mov r0, [sp, #r1 * 4 + #-40048]

    inc r2
    movslq r1, r2
    sub r0, r0, r1
    movslq r1, r0
    movslq r0, [sp, #r1 * 4 + #-40048]

    cmp r0, r2
    jle .loop2

.loop1:
    cmp r0, #32
    jle .loop3

    movslq r1, r0
    lea r0, [__str.1]
    lea r1, [sp, #-40052]
    xor r0, r0, r0
    bl printf
    ldr r0, [__stack_chk_guard]
    ldr r0, [r0]
    cmp r0, [sp, #-48]
    je .loop4

.loop2:
    cmp r0, #4
    jle .loop5

    movslq r1, r0
    lea r0, [__str.2]
    lea r1, [sp, #-40048]
    xor r0, r0, r0
    bl printf
    ldr r0, [__stack_chk_guard]
    ldr r0, [r0]
    cmp r0, [sp, #-48]
    je .loop4

.loop3:
    call __stack_chk_fail

.loop4:
    ldr r0, [__stack_chk_guard]
    ldr r0, [r0]
    cmp r0, [sp, #-48]
    je .exit

.exit:
    mov sp, #sp
    bx lr

.lea __str, .str
.str:
    .ascii "%d%d"
.lea __str.1, .str.1
.str.1:
    .ascii "%d"
.lea __str.2, .str.2
.str.2:
    .ascii "%d\n"
```

Please note that this is an approximation of the original x86 assembly code. The actual ARM assembly code may vary depending on specific details and constraints of the target architecture and environment. Additionally, the assembly code assumes that all necessary functions and data are available in the global scope and accessible from the entry point `_start`.