Here is the equivalent ARM assembly for the given x86 assembly code:

```arm
    .section __TEXT,.text,regular,pure_instructions
    .build_version macos, 15, 0; sdk_version 15, 5
    .globl _main                  # -- Begin function main
    .p2align 4, 0x90
_main:                              # @main
    mov r7, sp                     # pushq %rbp
    str r7, [sp]                   # movq %rsp, %rbp
    sub sp, 24                    # subq $24, %rsp
    ldr r0, [pc, #L_str]           # leaq L_.str(%rip), %rdi
    ldr r1, [sp, #-44]             # leaq -44(%rbp), %rsi
    mov r0, #0                      # xorl %eax, %eax
    bl _scanf                      # callq _scanf
    mov r0, [sp, #-44]             # leaq -44(%rbp), %eax
    ldr r0, [sp, #-1]              # leal -1(%rax), %ecx
    mov r0, [sp, #-44]             # leaq -44(%rbp), %eax
    cmp r0, #0                      # testl %eax, %eax
    bne LBB0_5                     # jle LBB0_5
LBB0_1:                             # %bb.1
    ldr r0, [pc, #L_str_1]         # leaq L_.str.1(%rip), %rbx
    ldr r1, [sp, #-52]             # leaq -52(%rbp), %r14
    ldr r2, [sp, #-48]             # leaq -48(%rbp), %r15
    ldr r3, [pc, #L_str_3]         # leaq L_.str.3(%rip), %r13
    ldr r4, [pc, #L_str_2]         # leaq L_.str.2(%rip), %r12
    jmp LBB0_2                     # jmp LBB0_2
    .p2align 4, 0x90
LBB0_4:                             #   in Loop: Header=BB0_2 Depth=1
    mov r0, [sp, #L_str_2]         # movq %r12, %rdi
    mov r0, [sp, #L_str_4]         # xorl %eax, %eax
    bl _printf                      # callq _printf
    mov r0, [sp, #-44]             # leaq -44(%rbp), %eax
    ldr r0, [sp, #-1]              # leal -1(%rax), %ecx
    mov r0, [sp, #-44]             # leaq -44(%rbp), %eax
    cmp r0, #0                      # testl %eax, %eax
    bne LBB0_5                     # jle LBB0_5
LBB0_2:                             # =>This Inner Loop Header: Depth=1
    mov r0, [sp, #L_str_2]         # movq %rbx, %rdi
    mov r1, [sp, #L_str_4]         # movq %r14, %rsi
    mov r2, [sp, #L_str_5]         # movq %r15, %rdx
    mov r0, #0                      # xorl %eax, %eax
    bl _scanf                      # callq _scanf
    mov r0, [sp, #-52]             # leaq -52(%rbp), %eax
    movq r1, [sp, #L_str_6]         # movq %r13, %si
    cmpl r0, [sp, #L_str_7]         # cmpl -48(%rbp), %eax
    jl LBB0_4                     # jle LBB0_4
LBB0_5:
    mov r0, #0                      # xorl %eax, %eax
    add sp, 24                    # subq $24, %rsp
    mov r7, sp                     # popq %rbp
    ret                          # retq
                                        # -- End function
    .section __TEXT,.cstring,cstring_literals
L_str:                                 # @.str
    .asciz "%d"

L_str_1:                               # @.str.1
    .asciz "%d%d"

L_str_2:                               # @.str.2
    .asciz "BRAINS\n"

L_str_3:                               # @.str.3
    .asciz "NO"

L_str_4:                               # @.str.4
    .asciz "MMM"
```

Please note that ARM assembly syntax differs from x86 assembly in many ways, such as register names, addressing modes, and control flow structures. The above conversion assumes that the ARM compiler is used, which may require additional adjustments depending on the specific ARM architecture being targeted.