Here is the equivalent ARM assembly code for the given x86 assembly:

```arm
.global _start

_start:
    mov r0, #0                     ; Move the address of the string "Hello World!" into R0
    ldr r1, [r0]                   ; Load the string from memory into R1
    bl puts                        ; Call the printf function with R1 as the argument
    b exit                         ; Branch to the exit function

puts:
    mov r7, #4                      ; Move the system call number (write) into R7
    mov r0, #1                      ; Move the file descriptor (stdout) into R0
    mov r1, r0                      ; Move the string pointer into R1
    mov r2, #12                    ; Move the length of the string into R2
    swi #0                          ; Make a system call to write the string

exit:
    mov r7, #1                      ; Move the system call number (exit) into R7
    mov r0, #0                      ; Move the exit status into R0
    swi #0                          ; Make a system call to exit
```

This code does exactly what the original x86 code does: it prints "Hello World!" to the console using the `printf` function. The `puts` function takes a string pointer and its length as arguments, and writes the string to the standard output (file descriptor 1).