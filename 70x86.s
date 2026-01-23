Here is the equivalent ARM assembly code:

```arm
.global _start
_start:
    mov r12, #0
    mov r13, #0
    bl scanf
    cmp r0, #-1
    bne _loop
    mov r0, #0
    mov r1, #0
    bne _print
_loop:
    ldr r3, [sp, #-100048]
    ldr r4, [sp, #-200048]
    ldr r5, [sp, #-48]
    cmp r3, #0
    beq _end
    mov r0, r3
    bl puts
    ldr r3, [sp, #-100048, #r3]
    ldr r4, [sp, #-200048, #r3]
    ldr r5, [sp, #-48, #r3]
    cmp r4, #0
    beq _end
    mov r0, r4
    bl puts
    mov r3, #0
    mov r4, #0
    bne _print
_end:
    mov r0, #1
    bl exit
_print:
    ldr r3, [sp, #-100048]
    ldr r4, [sp, #-200048, #r3]
    ldr r5, [sp, #-48]
    cmp r3, #0
    beq _done
    mov r0, r3
    bl puts
    ldr r3, [sp, #-100048, #r3]
    ldr r4, [sp, #-200048, #r3]
    ldr r5, [sp, #-48, #r3]
    cmp r4, #0
    beq _done
    mov r0, r4
    bl puts
    add r3, #1
    str r3, [sp, #-48]
    b _print
_done:
    mov r0, #0
    bl exit
```

This is the ARM version of the given x86 assembly code. The `scanf` function reads strings from standard input, and it stores them in memory at addresses `-100048`, `-200048`, and `-48`. The `puts` function writes strings to standard output. The `exit` function terminates the program.

Please note that this code assumes that the strings are not too long to fit into the stack frame. If the strings are very long, you may need to use a different approach to handle them.