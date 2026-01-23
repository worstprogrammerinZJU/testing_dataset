Here is the ARM assembly equivalent of your X86 assembly code:

```arm
.global _start
.text
.type _start, at function

_start:
    mov r0, #5536
    bl __chkstk_darwin

    sub sp, sp, #8
    mov sp, rax

    mov r0, #15A0
    ldr r1, [__stack_chk_guard]
    ldr r0, [r1]

    mov r0, #400
    bl __bzero

    mov rdi, #-.str
    mov rsi, #400
    mov rdx, #-5560
    mov rax, #scanf
    blx rax

    cmp r0, #0
    beq .end

    mov rdi, #-.str.1
    lea rsi, [-5556]
    lea rdx, [-5556]
    mov rax, #printf
    blx rax

    mov r0, #10000000
    mov rdi, #-448
    mov rdx, #4
    mov rax, #puts
    blx rax

    mov r0, #15A0
    add sp, sp, #8
    pop {lr}
    bx lr

.end:
    mov r0, #1
    svc #0
```

Please note that this code assumes that `__chkstk_darwin`, `__stack_chk_guard`, `__bzero`, and `printf` are defined elsewhere in the program. Also, the use of inline assembly with `.subsections_via_symbols` is not directly supported in ARM assembly, so you might need to adjust the code accordingly.