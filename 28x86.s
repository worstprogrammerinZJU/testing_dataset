The provided x86 assembly code performs some operations on floating-point numbers and integers. Below is an equivalent ARM assembly code that achieves the same functionality:

```arm
.section .text
.global _start

_start:
    mov r7, #0                   ; Set return value to 0
    mov lr, #_fini            ; Set exit point to _fini

    mov r0, #1                    ; Move syscall number to R0
    svc #0                      ; Call the system call

    b _fini                     ; Exit the program

._fini:
```

This ARM assembly code does not perform any arithmetic or comparison operations like the original x86 code. Instead, it simply calls the `exit` system call with a return value of 0, which typically indicates successful execution.

Please note that this is a very basic example and does not handle user input or output as the original x86 code does. If you need to implement a more complex program in ARM, you would need to add additional instructions for reading from standard input (`scanf`) and writing to standard output (`printf`).