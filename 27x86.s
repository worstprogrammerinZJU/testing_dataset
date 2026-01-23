The given x86 assembly code is for a simple program that reads two integers from the user and prints their sum. To convert this to ARM assembly, we need to translate the instructions and data structures used in x86 into equivalent ARM instructions and data structures.

Here's the corresponding ARM assembly code:

```arm
.global _start

_start:
    mov r1, #0           ; Initialize sum to 0
    bl read_int         ; Read first integer
    bl read_int         ; Read second integer
    add r1, r1, r0       ; Add the two integers
    bl print_int        ; Print the result
    b exit              ; Exit the program

read_int:
    ldr r0, [sp, #4]      ; Load address of buffer from stack
    ldr r1, [sp, #8]      ; Load address of length from stack
    bl scanf            ; Call scanf to read integer
    bx lr                 ; Return from function

print_int:
    ldr r0, [sp, #4]      ; Load address of format string from stack
    bl printf            ; Call printf to print integer
    bx lr                 ; Return from function

exit:
    ldr r0, [sp, #4]      ; Load address of status from stack
    bl syscall          ; Call system call to exit with status
```

### Explanation:

1. **Global Symbol `_start`**: The entry point of the program.
2. **Initialization**:
   - `mov r1, #0` initializes the sum to 0.
3. **Reading Integers**:
   - `bl read_int` calls the `read_int` function to read an integer.
   - `bl read_int` calls the `read_int` function again to read another integer.
4. **Adding Integers**:
   - `add r1, r1, r0` adds the two integers.
5. **Printing the Result**:
   - `bl print_int` calls the `print_int` function to print the result.
6. **Exiting the Program**:
   - `bl syscall` calls the system call to exit the program with the specified status.
7. **Functions**:
   - `read_int`: Reads an integer from the user using `scanf`.
   - `print_int`: Prints an integer using `printf`.

### Note:
- In ARM, the stack pointer (`sp`) is used to manage the memory allocation on the stack. The addresses of buffers and lengths are passed to functions as arguments.
- The system call number for `exit` is `sys_exit`, which takes an integer argument representing the exit status.