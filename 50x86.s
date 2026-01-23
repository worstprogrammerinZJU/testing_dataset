    .section __TEXT, __text, regular, pure_instructions
    .build_version macos, 15, 0 sdk_version 15, 5
    .section __TEXT, __literal8, 8byte_literals
    .p2align 3, 0x0                        ## -- Begin function main
LCPI0_0:
    .quad 0x3ff0000000000000              ## double 1
    .section __TEXT, __text, regular, pure_instructions
    .globl _main
    .p2align 4, 0x90
_main:                                   ## @main
    # %bb.0:
    push    rbp
    mov     rsp, rbp
    push    r14
    push    rbx
    sub     rsp, 32
    lea     L_str(%rip), rdi
    movsd   LCPI0_0(%rip), xmm0            ## xmm0 = [1.0E+0,0.0E+0]
    mov     al, #1
    call    printf
    mov     ebx, #1
    lea     L_str.1(%rip), r14
    movsd   LCPI0_0(%rip), xmm2            ## xmm2 = [1.0E+0,0.0E+0]
    movapd  xmm2, xmm1
    movapd  xmm2, xmm0
    .p2align 4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
    movsd   xmm2, -24(rsp)                ## 8-byte Spill
    divsd   xmm2, xmm1
    movsd   xmm1, -40(rsp)                ## 8-byte Spill
    addsd   xmm1, xmm0
    movsd   xmm0, -32(rsp)                ## 8-byte Spill
    mov     r14, rdi
    mov     ebx, rsi
    mov     al, #1
    call    printf
    movsd   -24(rsp), xmm2                ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
    movsd   -32(rsp), xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
    movsd   -40(rsp), xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
    addsd   LCPI0_0(%rip), xmm2
    incl     ebx
    cmp     ebx, #10
    jne     LBB0_1
# %bb.2:
    xor     eax, eax
    add     rsp, 32
    pop     rbx
    pop     r14
    pop     rbp
    retq
                                        ## -- End function
    .section __TEXT, __cstring, cstring_literals
L_str:                                 ## @.str
    .asciz "n e\n- -----------\n0 %.9lf\n"
L_str.1:                               ## @.str.1
    .asciz "%d %.9lf\n"

.subsections_via_symbols
