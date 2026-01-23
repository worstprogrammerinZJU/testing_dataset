Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    push {lr}
    mov sp, lr
    bl scanf
    cmp r0, #0
    bne .loop

    ldr r0, =.str
    bl puts

    ldr r0, =.str.1
    ldr r1, =.str.2
    bl printf

    ldr r0, =.str.3
    bl printf

    mov r0, #0
    bx lr

.loop:
    ldr r0, [sp]
    sub r0, #8
    str r0, [sp]

    ldr r0, [sp]
    ldr r1, [sp]
    ldr r2, [sp]
    ldr r3, [sp]
    str r0, [sp]
    str r1, [sp]
    str r2, [sp]
    str r3, [sp]

    ldr r0, =.str.1
    ldr r1, =.str.2
    ldr r2, =.str.3
    ldr r3, =.str.4
    bl printf

    add r0, #8
    str r0, [sp]

    ldr r0, =.str.1
    ldr r1, =.str.2
    ldr r2, =.str.3
    ldr r3, =.str.4
    bl printf

    mov r0, #0
    bx lr
```

Note that this translation assumes that the `scanf` and `printf` functions have been implemented in a way that allows them to be called from ARM assembly. Also, the `.str` and `.str.1` labels are used to refer to C-style string literals, which do not need to be translated into ARM assembly directly.