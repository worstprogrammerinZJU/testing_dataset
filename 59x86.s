Here is the equivalent ARM assembly for your given x86 assembly code:

```arm
.global _start

_start:
    mov r0, #0
    bl printf

    ldr r0, [sp, #(-48)]
    cmp r0, #0
    bne exit

    ldr r0, [sp, #(-544)]
    ldr r1, [sp, #(-548)]
    ldr r2, [sp, #(-44)]
    bl memset

    mov r0, #1
    bl scanf

    ldr r0, [sp, #(-548)]
    cmp r0, #0
    bne exit

    ldr r0, [sp, #(-552)]
    ldr r1, [sp, #(-556)]
    ldr r2, [sp, #(-554)]
    bl scanf

    ldr r0, [sp, #(-544)]
    ldr r1, [sp, #(-548)]
    ldr r2, [sp, #(-44)]
    bl printf

exit:
    mov r0, #0
    bl __stack_chk_fail

    bx lr
```

Please note that this is an approximation of the original x86 assembly code. The actual ARM assembly might need further adjustments depending on the specific requirements and constraints of the ARM architecture. Additionally, it's important to ensure that the memory accesses and operations are correctly translated into ARM instructions.