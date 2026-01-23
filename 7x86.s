Here's the equivalent ARM assembly code for the given x86 assembly code:

```arm
.section .text
.global _balance
.type _balance, @function
_balance:
    push {r4-r11}
    mov r4, sp
    push {lr}
    push {r13, r14}
    push {r12, lr}
    push {r11}

    ldr r5, =balance
    ldr r6, [r5]
    ldr r7, =coin

    bl strcmp
    cmp r0, #0
    je LBB0_3

    add r5, #1
    ldr r6, [r5]
    ldr r7, =coin

    bl strcmp
    cmp r0, #0
    jne LBB0_2

LBB0_3:
    ldr r5, =balance
    ldr r6, [r5]
    ldr r7, =coin

    bl strcmp
    cmp r0, #0
    je LBB0_6

    add r5, #1
    ldr r6, [r5]
    ldr r7, =coin

    bl strcmp
    cmp r0, #0
    jne LBB0_5

LBB0_6:
    ldr r5, =balance
    ldr r6, [r5]
    ldr r7, =coin

    bl strcmp
    cmp r0, #0
    seteq r14, #1
    cmp r0, #0
    setlt r14, #1
    and r14, r14, r14
    mov r14, r14, lsl #1
    str r14, [sp, #-48]

LBB0_7:
    pop {r12, r13, r14}
    pop {lr}
    pop {r11}
    pop {r10}
    pop {r9}
    pop {r8}
    pop {r7}
    pop {r6}
    pop {r5}
    pop {pc}

.global _main
.type _main, @function
_main:
    push {lr}
    push {r13, r14, r12, lr}
    sub sp, #120
    ldr r7, =__stack_chk_guard
    ldr r6, [r7]
    ldr r5, =scanf
    bl r5
    cmp r4, #0
    jl LBB1_15

    ldr r6, =str
    ldr r7, =str_4
    bl printf
    cmp r4, #-1
    jl LBB1_14

    ldr r6, =str_3
    bl scanf
    cmp r4, #-1
    lea r6, [str_4]
    ldr r7, =puts
    bl r7

    mov r4, #0
    ldr r6, =str_4
    bl printf

LBB1_14:
    ldr r6, =str_5
    mov r7, r4
    bl printf
    mov r4, #3
    ldr r6, =str_8
    bl printf

LBB1_15:
    ldr r7, =__stack_chk_guard
    ldr r6, [r7]
    cmp r4, #0
    je LBB1_17

    ldr r6, =str_3
    bl scanf
    cmp r4, #-1
    ldr r6, =str_4
    ldr r7, =puts
    bl r7

    ldr r4, #12
    ldr r5, #3
    ldr r6, =str_4
    bl printf

LBB1_17:
    ldr r7, =__stack_chk_fail
    bl r7

.endm

.comm coin, 48, 4
.section .data
.Lstr:
    .asciz "even"
.Lstr_1:
    .asciz "up"
.Lstr_2:
    .asciz "down"
.Lstr_3:
    .asciz "%d"
.Lstr_4:
    .asciz "%s%s%s"
.Lstr_5:
    .asciz "%c is the counterfeit coin and it is "
.str_8:
    .asciz "light."
```

Please note that this ARM assembly code assumes that there are corresponding global variables `balance` and `coin` defined elsewhere in the program. The function signatures and variable names might need adjustments based on your specific use case.