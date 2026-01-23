    .section __text
    .global _pro
.pro:
    push {lr}
    mov sp, lr
    mov r0, #1
    cmp r0, r1
    b.eq LBB0_3
    .p2align 4, 0x90
LBB0_1:
    mov r0, r1
    sar r0
    tst r1, #1
    lea r1, [r1, r0, lsl #1]
    cmovel r0, r1
    incl r0
    cmp r0, r1
    b.ne LBB0_1
LBB0_3:
    pop {lr}
    ret

    .global _main
.main:
    push {lr}
    mov sp, lr
    push {r15, r14, r13, r12, rbx, rax}
    lea r0, [._str]
    lea r1, [-48(rsp)]
    lea r2, [-44(rsp)]
    xor r0, r0
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [._str1]
    lea r1, [-48(rsp)]
    lea r2, [-44(rsp)]
    bl printf
    lea r0, [._str2]
    lea r1, [-48(rsp)]
    lea r2, [-44(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    lea r1, [-44(rsp)]
    lea r2, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    lea r1, [-44(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
    lea r0, [-48(rsp)]
    bl scanf
    cmp r0, #-1
    b.eq LBB1_10
    lea r0, [-48(rsp)]
    bl printf
   