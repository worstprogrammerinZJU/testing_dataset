Here is the equivalent ARM assembly code for the provided x86 code:

```arm
.global _start
_start:
    mov sp, #0x10000000
    ldr r12, =__stack_chk_guard
    ldr r0, [r12]
    cmp r0, #0x200000001
    bne .Lerror
    mov r0, #676
    bl __bzero
    mov r0, #3
    mul r0, r0, #5
    str r0, [sp, #-728]
    mov r0, #5
    add r0, r0, #3
    str r0, [sp, #-728]
    mov r1, sp, #4
    bl scanf
    cmp r0, #0xFFFFFFFF
    beq .Lexit
    mov r0, #1
    bl printf
    mov r0, #0
    bl scanf
    cmp r0, #0xFFFFFFFF
    beq .Lexit
    mov r0, #3
    bl printf
    mov r0, #0
    bl exit
.Lerror:
    bl __stack_chk_fail
.Lexit:
    mov sp, #0x10000000
```

Please note that this code assumes that the functions `scanf`, `printf`, and `exit` have been defined elsewhere and are available in the system's C runtime library. Also, it does not handle the loop conditions as closely as the original x86 code does due to differences between ARM and x86 architectures.