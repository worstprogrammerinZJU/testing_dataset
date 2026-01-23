To convert the given x86 assembly code to ARM assembly, we need to translate each instruction and data structure. Below is the equivalent ARM assembly code:

```arm
.global _cude
.text
.cfi_startproc
.cfi_endproc

.global _main
.text
.cfi_startproc
.cfi_endproc

.section .data
.LC0:
    .asciz "Cube = %d, Triple = (%d,%d,%d)\n"
.LC1:
    .asciz "%d"
```

The translation process involves:
1. **Function Prototypes**: The `globl` directives define global labels for functions.
2. **Text Section**: The `.text` section contains the actual assembly instructions.
3. **Prologues and Epilogues**: The `.cfi_startproc` and `.cfi_endproc` directives are used for control flow information.
4. **Data Section**: The `.data` section defines global variables.

For the specific instructions and data structures, you would need to translate each one into ARM syntax. For example, the `cmpl`, `jl`, and `jmp` instructions remain the same as they are used to perform conditional jumps and loops in ARM.

Here is a more detailed breakdown of the translation process for the given code:

### `_cude` Function

```arm
_cude:
    cmp    edi, #5
    jl     .LBB0_15
    push    {lr}
    mov    rbp, rsp
    push    {r15, r14, r13, r12, rbx}
    sub    sp, #40
    mov    ebx, edi
    mov    r13d, ebx
    imul    ebx, r13d
    imul    ebx, r13d
    lea    eax, [sp, #-3]
    mov    [ebp, #-68], eax
    mov    [ebp, #-44], #2
    mov    [ebp, #-48], #5
    jmp     .LBB0_2
.LBB0_13:
    incl    [ebp, #-48]
    mov    rax, [ebp, #-64]
    cmp    [ebp, #-68], eax
    je     .LBB0_14
.LBB0_2:
    mov    eax, [ebp, #-44]
    mov    ecx, eax
    mov    rdx, [ebp, #-64]
    lea    eax, [esp, #1]
    mov    [ebp, #-44], eax
    lea    eax, [ebp, #-48]
    cmp    ebx, eax
    jge     .LBB0_13
.LBB0_12:
    incl    [ebp, #-52]
    mov    eax, [ebp, #-76]
    cmp    ebx, eax
    je     .LBB0_13
.LBB0_4:
    mov    eax, [ebp, #-44]
    imul    eax, eax
    imul    eax, eax
    add    [ebp, #-72], eax
    mov    eax, [ebp, #-52]
    mov    ecx, eax
    lea    eax, [esp, #1]
    mov    [ebp, #-52], eax
    lea    eax, [ebp, #-76]
    cmp    ebx, eax
    jge     .LBB0_13
.LBB0_6:
    incl    [ebp, #-15]
    jmp     .LBB0_7
.LBB0_7:
    lea    r8d, [esp, #1]
    mov    eax, r8d
    imul    eax, eax
    imul    eax, eax
    add    [ebp, #-72], eax
    mov    eax, [ebp, #-52]
    mov    ebx, eax
    cmp    ebx, r15
    jge     .LBB0_13
.LBB0_8:
    lea    rdi, [.LC0]
    mov    esi, ebx
    mov    rdx, [ebp, #-64]
    call    printf
    jmp     .LBB0_9
.LBB0_9:
    cmp     ebx, r15
    je     .LBB0_12
.LBB0_10:
    incl    r15
    jmp     .LBB0_7
.LBB0_14:
    add    sp, #40
    pop    {rbx, r12, r13, r14, r15}
    bx     lr
```

### `_main` Function

```arm
_main:
    push    {lr}
    mov    rbp, rsp
    push    {r15, r14, r13, r12, rbx}
    sub    sp, #40
    lea    rdi, [.LC1]
    lea    rsi, [esp, #4]
    xor    eax, eax
    call    scanf
    cmp     eax, #6
    je     .LBB1_1
.LBB1_16:
    xor    eax, eax
    add    sp, #40
    pop    {rbx, r12, r13, r14, r15}
    ret
.LBB1_1:
    mov    eax, #6
    jmp     .LBB1_2
.LBB1_15:
    lea    rdi, [.LC1]
    lea    rsi, [esp, #4]
    xor    eax, eax
    call    scanf
    cmp     eax, #6
    je     .LBB1_16
.LBB1_2:
    mov    r14d, eax
    jmp     .LBB1_3
.LBB1_14:
    incl    r14d
    mov    rax, r14d
    imul    rax, r14d
    imul    rax, r14d
    lea    eax, [sp, #-3]
    mov    [ebp, #-68], eax
    mov    [ebp, #-44], #2
    mov    [ebp, #-48], #5
    jmp     .LBB1_3
.LBB1_13:
    incl    [ebp, #-48]
    mov    rax, [ebp, #-64]
    cmp    [ebp, #-68], eax
    je     .LBB1_14
.LBB1_3:
    mov    eax, [ebp, #-44]
    imul    eax, eax
    imul    eax, eax
    add    [ebp, #-72], eax
    mov    eax, [ebp, #-52]
    mov    ecx, eax
    lea    eax, [esp, #1]
    mov    [ebp, #-52], eax
    lea    eax, [ebp, #-76]
    cmp    ebx, eax
    jge     .LBB1_13
.LBB1_5:
    incl    [ebp, #-52]
    mov    eax, [ebp, #-76]
    cmp    ebx, eax
    je     .LBB1_14
.LBB1_8:
    lea    rdi, [.LC0]
    mov    esi, ebx
    mov    rdx, [ebp, #-64]
    call    printf
    jmp     .LBB1_9
.LBB1_9:
    cmp     ebx, r15
    je     .LBB1_12
.LBB1_10:
    incl    r15
    jmp     .LBB1_7
.LBB1_11:
    incl    r15
    jmp     .LBB1_8
.LBB1_12:
    incl    r15
    jmp     .LBB1_8
```

This translation assumes that the ARM architecture supports similar instructions and data types as the x86 architecture. Adjustments may be needed based on the specifics of the ARM instruction set and calling conventions.