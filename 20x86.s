    .section __TEXT,.text,ax
    .global _dfs
    .globl _main
    .globl _p
    .section __DATA,.common,_p,10000,4
    .comm t,10000,4
    .comm m,4,2
    .comm n,4,2
    .section .text,.cstring,cstring_literals
    L_.str:                                 # @.str
        .asciz "%d%d"
    L_.str.1:                               # @.str.1
        .asciz "%s"
    L_.str.2:                               # @.str.2
        .asciz "%d\n"
    .subsections_via_symbols

    _dfs:                                    # @dfs
        stmfd sp!, {lr}
        mov r14, sp
        sub sp, 128
        ldr r0, [sp, #8]              # r0 = edi
        mov r1, r0
        mul r1, 100
        add r1, r0
        str r1, [sp, #-96]
        ldr r0, [sp, #12]             # r0 = rsi
        ldr r1, [sp, #16]             # r1 = rdx
        cmp r1, #0
        beq LBB0_25
    LBB0_1:                                 # =>This Inner Loop Header: Depth=1
        cmpb r0, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp r2, #0
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
        ldr r2, [sp, #48]             # r2 = r4
    LBB0_2:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp r2, #0
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_4:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_5:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_6:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_7:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_8:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_9:                                 #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_10:                                #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl _dfs
    LBB0_11:                                #   in Loop: Header=BB0_1 Depth=1
        cmpb r1, #1
        je LBB0_25
        ldr r2, [sp, #104]           # r2 = r13
        mov r3, [sp, #96]            # r3 = r15
        and r2, r2, r3
        cmp b, #87
        je LBB0_25
        ldr r2, [sp, #80]            # r2 = r8
        lea r1, [sp, #80]            # r1 = r8
        bl