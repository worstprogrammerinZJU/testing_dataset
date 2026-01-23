Converting x86 assembly code to ARM assembly is a complex task that requires a deep understanding of both architectures and their instruction sets. Below is a simplified version of the given x86 assembly code converted to ARM assembly:

```arm
.global _start

_start:
    mov r7, #1                    # System call number for printf
    ldr r0, =print_message       # Address of the format string
    ldr r1, =num1               # First argument (integer)
    mov r2, #0                    # Second argument (format specifier)
    svc 0                        # Make system call

    mov r7, #1                    # System call number for printf
    ldr r0, =print_message       # Address of the format string
    ldr r1, =num2               # Second argument (integer)
    mov r2, #0                    # Second argument (format specifier)
    svc 0                        # Make system call

    mov r7, #1                    # System call number for printf
    ldr r0, =newline             # Address of the newline character
    svc 0                        # Make system call

    mov r7, #1                    # System call number for printf
    ldr r0, =print_message       # Address of the format string
    ldr r1, =num1               # Second argument (integer)
    mov r2, #0                    # Second argument (format specifier)
    svc 0                        # Make system call

    mov r7, #1                    # System call number for printf
    ldr r0, =print_message       # Address of the format string
    ldr r1, =num2               # Second argument (integer)
    mov r2, #0                    # Second argument (format specifier)
    svc 0                        # Make system call

    mov r7, #1                    # System call number for exit
    ldr r0, =0                   # Exit status (0)
    svc 0                        # Make system call

print_message:
    .ascii "%d\n"

newline:
    .asciz "\n"
```

### Explanation:
1. **System Call Numbers**:
   - `#1` for `printf`
   - `#0` for `exit`

2. **Arguments**:
   - `r0`: Address of the format string
   - `r1`: Argument to be printed
   - `r2`: Format specifier (0 for integer)

3. **Service Call (`svc 0`)**:
   - The `svc` instruction allows a process to make a system call to the kernel.

4. **Newline Character**:
   - `.asciz "\n"` defines the newline character.

5. **Exit Status**:
   - `mov r0, #0` sets the exit status to 0, indicating success.

This ARM assembly code performs similar operations as the original x86 code but uses ARM-specific instructions and conventions.