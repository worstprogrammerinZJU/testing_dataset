Certainly! Below is the equivalent ARM assembly code for the given x86 assembly code:

```arm
    .section .text, ax, progbits
    .global _start

_start:
    # Load arguments from registers
    ldr r0, [sp, #8]  # r0 = n
    ldr r1, [sp, #12] # r1 = k

    # Print "n = "
    mov r7, #4          # syscall number for write
    str r0, [sp, #16]  # address of string to print
    mov r0, #1         # file descriptor (stdout)
    swi #0               # syscall to write

    # Print "k = "
    ldr r0, [sp, #16]  # address of string to print
    mov r7, #4          # syscall number for write
    str r1, [sp, #20]  # address of string to print
    mov r0, #1         # file descriptor (stdout)
    swi #0               # syscall to write

    # Print newline
    mov r7, #4          # syscall number for write
    str r0, [sp, #24]  # address of string to print
    mov r0, #1         # file descriptor (stdout)
    swi #0               # syscall to write

    # Exit the program
    mov r7, #10         # syscall number for exit
    str r0, [sp, #28]  # status code (0)
    swi #0               # syscall to exit
```

### Explanation:
1. **Load Arguments**: The values of `n` and `k` are loaded into registers `r0` and `r1`, respectively.
2. **Print "n = "`**: The first value is printed as a string using `swi #4` (write system call).
3. **Print "k = "`**: The second value is printed as a string using `swi #4`.
4. **Print Newline**: A newline character is printed using `swi #4`.
5. **Exit Program**: The program exits with a status code of 0 using `swi #10`.

Note that this code assumes the use of the Linux C standard library functions and system calls. If you need to use specific ARM-specific syscalls or libraries, you may need to adjust the code accordingly.