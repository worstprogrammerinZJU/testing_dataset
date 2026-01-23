Certainly! Below is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    push {fp}
    mov sp, fp
    push {lr}

    mov r0, #0      ; Initialize return address
    bl printf         ; Print "Hello World!\n"
    mov r0, #4       ; Number of arguments (1)
    ldr r1, =hello_str      ; Address of string to print
    bl scanf         ; Read integer from user
    cmp r0, #0       ; Check if read was successful
    b.le exit        ; If not, jump to exit

    sub sp, #40       ; Allocate stack space for variables
    str r0, [sp]     ; Store integer in stack
    lea r2, [sp, #-40]  ; Load pointer to integer

    mov r0, #4       ; Number of arguments (2)
    ldr r1, =print_int  ; Address of first format specifier
    bl printf         ; Print "%d "
    ldr r0, [r2]     ; Load integer from stack
    bl printf         ; Print "%d\n"

exit:
    pop {pc}        ; Return from main

.hello_str:
    .ascii "Hello World!\n"

.print_int:
    .ascii "%d "
```

### Explanation:
1. **Global Section**: The `_start` label marks the entry point of the program.
2. **Stack Frame Management**:
   - `push {fp}` and `mov sp, fp` save the current frame pointer and set it as the new base pointer.
   - `push {lr}` saves the link register.
3. **Initial Call to `printf`**:
   - `mov r0, #0` initializes the return address.
   - `bl printf` calls the standard library function `printf` with the string `"Hello World!\n"`.
4. **Read Integer**:
   - `mov r0, #4` sets the number of arguments.
   - `ldr r1, =hello_str` loads the address of the string `"Hello World!\n"` into `r1`.
   - `bl scanf` reads an integer from the user.
5. **Check Read Success**:
   - `cmp r0, #0` compares the result with zero.
   - `b.le exit` jumps to the `exit` label if the read failed.
6. **Allocate Stack Space**:
   - `sub sp, #40` allocates 40 bytes on the stack for additional variables.
   - `str r0, [sp]` stores the integer in the allocated stack space.
   - `lea r2, [sp, #-40]` loads a pointer to the stored integer.
7. **Print Integer**:
   - `mov r0, #4` sets the number of arguments.
   - `ldr r1, =print_int` loads the address of the format specifier `"%d "`.
   - `bl printf` prints the integer followed by a space.
   - `ldr r0, [r2]` loads the integer from the stack.
   - `bl printf` prints the integer.
8. **Exit Program**:
   - `pop {pc}` returns from the `main` function.
9. **String Literals**:
   - `.global hello_str` declares `hello_str` as global.
   - `.ascii "Hello World!\n"` defines the string `"Hello World!\n"` in ASCII format.

This ARM assembly code achieves the same functionality as the original x86 assembly code, reading an integer from the user and printing it along with "Hello World!" to the console.