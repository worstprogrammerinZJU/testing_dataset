The ARM assembly equivalent of the given x86 assembly code can be found below:

```arm
.global _start

_start:
    mov r0, #0
    svc #0                          ; sys_write(0, "Hello World", 12)

    ldr r1, =message
    ldr r2, =length
    svc #0                          ; sys_write(1, message, length)

    mov r7, #10                      ; sys_exit syscall number
    mov r0, #0                       ; exit status 0
    svc #0                          ; call sys_exit

    b .exit

message:
    .asciz "Hello World\n"
length:
    .word 12

.exit:
    b .exit

```

Please note that this is a simplified version and does not include error checking or handling for edge cases such as buffer overflows. Also, it assumes that the C standard library functions `printf` and `putchar` are available on the target platform.