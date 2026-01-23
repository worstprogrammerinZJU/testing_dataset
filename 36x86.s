Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    push {r7, r6, r5, r4, lr}
    mov sp, #0x358
    ldr r0, [__stack_chk_guard]
    ldr r0, [r0]
    str r0, [sp, #-48]

    lea r0, [__FILE__]
    lea r1, [__LINE__]
    lea r2, [L_str]
    bl scanf

    mov r0, #2
    cmp r0, [sp, #-48]
    jl LBB0_1

LBB0_2:
    mov r0, #1
    lea r1, [L_str1]
    bl printf

LBB0_6:
    mov r0, #0
    lea r1, [L_str2]
    bl printf

LBB0_1:
    mov r0, #0
LBB0_7:
    imul r0, r0, #400
    lea r1, [sp, #-848]
    bl scanf

LBB0_8:
    mov r0, #1
    lea r1, [L_str1]
    bl printf

LBB0_10:
    lea r1, [sp, #-848]
    bl scanf

LBB0_12:
    mov r0, #0
    lea r1, [L_str2]
    bl printf

    pop {r7, r6, r5, r4, pc}

L_str:
    .asciz "%d\n%d"

L_str1:
    .asciz "%d"

L_str2:
    .asciz "%d\n"
```

Note that this ARM assembly code assumes that the `scanf` and `printf` functions are implemented as C functions with appropriate prototypes. It also uses the `__stack_chk_guard`, `__FILE__`, and `__LINE__` symbols provided by the compiler. The stack layout and other details may need to be adjusted based on your specific requirements.