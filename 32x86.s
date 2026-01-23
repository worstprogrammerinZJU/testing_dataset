Here is the ARM assembly equivalent of the given x86 assembly code:

```arm
.global _start

_start:
    mov r15, sp
    sub sp, #24
    str r15, [sp]
    ldr r0, =printf
    ldr r1, [sp, #8]
    blr r0

    cmp r1, #0
    blt .end_loop

.Lloop:
    mov r0, 10
    blr putchar

    ldr r1, [sp, #12]
    cmp r1, #0
    ble .end_loop

    mov r0, 1
    blr printf

    mov r1, [sp, #16]
    cmp r1, #0
    ble .end_loop

    mov r0, 1
    blr putchar

    mov r0, 0
    blr exit

.end_loop:
    add sp, #24
    bx lr
```

Note that this is a simplified version and might not be fully accurate due to differences between x86 and ARM architecture. Also, it assumes that `printf`, `putchar`, and `exit` functions are already defined and accessible from the current section. In an actual real-world scenario, you would need to define these functions or use appropriate alternatives.