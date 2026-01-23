Here is the equivalent ARM assembly code:

```arm
.global _start

_start:
    push {lr}
    mov sp, lr
    push {r15, r14, r13, r12, rbx, rax}

    mov r0, #0x9C58
    bl __chkstk_darwin
    sub sp, rax
    mov rax, ___stack_chk_guard
    ldr rax, [rax]
    str rax, [sp, #-48]

    lea rdi, [__FILE__]
    lea rsi, [__LINE__]
    mov rdx, #4
    mov rax, #6
    syscall

    lea rdi, [__FILE__]
    lea rsi, [__LINE__]
    mov rdx, #5
    mov rax, #6
    syscall

    mov r0, #0x190
    bl scanf

    cmp r0, #0
    beq .end

    lea rdi, [__FILE__]
    lea rsi, [__LINE__]
    mov rdx, #4
    mov rax, #6
    syscall

.end:
    mov r0, #0x190
    bl printf

    ldr rax, [___stack_chk_guard]
    ldr rax, [rax]
    cmp rax, [sp, #-48]
    beq .end

    mov r0, #0
    b .fail

.fail:
    bl __stack_chk_fail

    pop {r15, r14, r13, r12, rbx, rax}
    bx lr

__chkstk_darwin:
    bl _chkstk_darwin_stub

_chkstk_darwin_stub:
    ldr r0, [pc, #0]
    bx r0

scanf:
    ldr r0, [pc, #0]
    bx r0

printf:
    ldr r0, [pc, #0]
    bx r0

__stack_chk_guard:
    .word 0x123456789abcdef0

__FILE__:
    .ascii "example.c\0"
```

Please note that this is a simplified version of your original code and it assumes certain system calls and memory locations. The actual implementation may vary depending on the specific environment and hardware platform. Also, the stack alignment and optimization might need adjustment based on your specific requirements.