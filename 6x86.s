Here is the equivalent ARM assembly for the given x86 assembly code:

```arm
.global _start

_start:
    push {lr}
    mov sp, lr
    sub sp, #200
    ldr r0, [pc, #0] ! ___stack_chk_guard
    ldr r0, [r0]
    str r0, [sp, #-48]

    mov r0, #0
    xor r14, r14, #0
    ldr r15, [sp, #-239]
    ldr r12, [sp, #-240]

    b .LBB0_1

.LBB0_6:
    incl r14
    cmp r14, #4
    beq .LBB0_7
.LBB0_1:
    ldr rax, [sp, #-240]
    bl _gets
    movzbl rax, [sp, #-240]
    test rax, rax
    beq .LBB0_6

.LBB0_2:
    ldr r15, [sp, #-240]
    jmp .LBB0_3

.LBB0_5:
    movzbl [r15], rax
    inc r15
    test rax, rax
    beq .LBB0_6
.LBB0_3:
    addb rax, #-65
    cmp rax, #25
    ja .LBB0_5
.LBB0_4:
    movzbl rax, [r15]
    incl [sp, #-160, rax, 4]
    jmp .LBB0_5

.LBB0_7:
    mov rax, #1
    mov ebx, [sp, #-160]
    bl _puts
    ldr rax, [pc, #0] ! ___stack_chk_guard
    ldr rax, [rax]
    cmp rax, [-48, sp]
    je .LBB0_22

    mov eax, #65
    ldr r14, [pc, #0] ! .str
    bl _printf
    incl eax
    cmp eax, #90
    jne .LBB0_19
    ldr r14, [pc, #0] ! .str
    bl _puts
    mov rax, [pc, #0] ! ___stack_chk_guard
    ldr rax, [rax]
    cmp rax, [-48, sp]
    je .LBB0_22

.LBB0_18:
    mov rax, #65
    ldr r14, [pc, #0] ! .str
    bl _printf
    incl rax
    cmp rax, #90
    jne .LBB0_19
    ldr r14, [pc, #0] ! .str
    bl _puts
    mov rax, [pc, #0] ! ___stack_chk_guard
    ldr rax, [rax]
    cmp rax, [-48, sp]
    je .LBB0_22

.LBB0_21:
    xor rax, rax
    add rsp, #200
    pop {lr}
    bx lr

.LBB0_22:
    bl _stack_chk_fail

.end
```

Please note that this is an approximate translation and may need further adjustments based on the actual architecture of the target ARM processor. The assembly code assumes that the `_gets`, `_puts`, and `_printf` functions are defined elsewhere in your program or have been declared as such. Additionally, the stack check guard is assumed to be stored at the address `___stack_chk_guard`.