Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.section .text
.global _start

_start:
    push {lr}
    mov sp, lr
    bl scanf
    cmp r0, #0
    bge .exit

    lea r12, [._str]
    mov r15, #-48
    b .loop

.loop:
    lea r12, [._str.2]
    mov r15d, #0
    b .end_loop

.end_loop:
    lea r12, [._str]
    bl printf
    cmp r0, #0
    beq .exit

    lea r12, [l___const.main.c]
    ldr r13, [r12]
    add r12, #1
    b .loop2

.loop2:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #8
    b .end_loop2

.end_loop2:
    mov r12, #0
    lea r13, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #27
    b .loop3

.loop3:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #64
    b .end_loop3

.end_loop3:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #125
    b .loop4

.loop4:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #216
    b .loop5

.loop5:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #343
    b .loop6

.loop6:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #512
    b .loop7

.loop7:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #729
    b .loop8

.loop8:
    lea r12, [l___const.main.c]
    ldr r13d, [r12]
    add r12, #1000
    b .exit

.exit:
    pop {lr}
    bx lr
```

Note that this is a simplified version of the original x86 code and may not compile correctly on all platforms due to differences between x86 and ARM instruction sets. It also assumes that the input numbers are stored in memory at addresses `-48` and `-44`, respectively. The output is printed to the console using `printf`.