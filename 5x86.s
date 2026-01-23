Here is the equivalent ARM assembly code:

```arm
    .section        .text

.global _start

_start:
    mov r7, #0            ; sys_write syscall number
    ldr r0, =hello_msg     ; message to write
    ldr r1, =stdout        ; file descriptor (standard output)
    mov r2, #13           ; length of message
    svc #0               ; call system call

    mov r7, #1            ; sys_exit syscall number
    mov r0, #0            ; exit status
    svc #0               ; call system call

hello_msg:
    .ascii "Hello World\n"
```

This is a simple program that prints "Hello World" to the standard output using the `sys_write` and `sys_exit` system calls. It also includes some strings for messages used in the print statements. The `.text` section contains the actual instructions, and the `.data` section contains the string literals. The `svc #0` instruction is used to make system calls, where the first argument is the system call number and the second and third arguments are the arguments passed to the system call.