    .section __TEXT,__text,regular,pure_instructions
    .build_version macos, 15, 0 sdk_version 15, 5
    .globl _main                       ## -- Begin function main
    .p2align 4, 0x90
_main:                                  ## @main
## %bb.0:
    push    {lr}                         ## Push return address onto stack
    mov     sp, r0                     ## Set stack pointer to r0
    mov     lr, #_printf                 ## Load printf function into lr
    ldr     r0, =L_str                    ## Load string "Inf" into r0
    bl      lr                          ## Call printf with "Inf"
    cmp     r0, #0                      ## Compare result to zero
    je      LBB0_8                     ## Jump if equal
## %bb.1:
    ldr     r1, =L_str.1                ## Load string "%s%s" into r1
    ldr     r2, =L_str.2                ## Load string "%d %d %d " into r2
    ldr     r3, =L_str.4                ## Load string "%d\n" into r3
    ldr     r4, [sp, #-4]             ## Load value from stack into r4 (index -4)
    ldr     r5, [sp, #-8]             ## Load value from stack into r5 (index -8)
    ldr     r6, [sp, #-12]            ## Load value from stack into r6 (index -12)
    bl      lr                          ## Call printf with formatted string
    cmp     r0, #-1                     ## Compare result to -1
    je      LBB0_5                     ## Jump if equal
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
    mov     r7, r4                     ## Move r4 into r7 (value -4)
    str     r7, [sp, #-4]             ## Store value back to stack (index -4)
    ldr     r8, [sp, #-8]             ## Load value from stack into r8 (index -8)
    str     r8, [sp, #-8]             ## Store value back to stack (index -8)
    ldr     r9, [sp, #-12]            ## Load value from stack into r9 (index -12)
    str     r9, [sp, #-12]            ## Store value back to stack (index -12)
    ldr     r10, [sp, #-16]           ## Load value from stack into r10 (index -16)
    str     r10, [sp, #-16]           ## Store value back to stack (index -16)
    ldr     r11, [sp, #-20]           ## Load value from stack into r11 (index -20)
    str     r11, [sp, #-20]           ## Store value back to stack (index -20)
    ldr     r12, [sp, #-24]           ## Load value from stack into r12 (index -24)
    str     r12, [sp, #-24]           ## Store value back to stack (index -24)
    ldr     r13, [sp, #-28]           ## Load value from stack into r13 (index -28)
    str     r13, [sp, #-28]           ## Store value back to stack (index -28)
    ldr     r14, [sp, #-32]           ## Load value from stack into r14 (index -32)
    str     r14, [sp, #-32]           ## Store value back to stack (index -32)
    ldr     r15, [sp, #-36]           ## Load value from stack into r15 (index -36)
    mov     r0, r4                     ## Move r4 into r0 (value -4)
    bl      lr                          ## Call printf with formatted string
    add     sp, #24                     ## Add 24 bytes to stack pointer
    pop     {pc}                        ## Pop return address from stack and return
                                        ## -- End function
