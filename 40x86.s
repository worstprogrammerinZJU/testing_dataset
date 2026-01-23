Certainly! Below is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    push {lr}
    mov sp, lr
    push {fp, lr}                       # Save frame pointer and link register
    mov fp, sp

    sub sp, #16                         # Allocate space for local variables
    str r0, [sp]                        # Store address of input variable in stack

    ldr r0, =printf                   # Load address of printf function
    ldr r1, [sp, #4]                     # Load address of input variable from stack
    blr r0                            # Call printf

    cmp r0, #0                          # Check if input was successful
    bne error_exit                     # Jump to error exit if not

    ldr r0, =scanf                   # Load address of scanf function
    ldr r1, [sp, #4]                     # Load address of input variable from stack
    blr r0                            # Call scanf

    cmp r0, #0                          # Check if input was successful
    bne error_exit                     # Jump to error exit if not

    ldr r0, =print_int                # Load address of print_int function
    ldr r1, [sp, #4]                     # Load address of input variable from stack
    blr r0                            # Call print_int

    mov r0, #0                          # Return value
    bx lr                             # Exit

error_exit:
    ldr r0, =printf                   # Load address of printf function
    ldr r1, =error_message              # Load error message from data section
    blr r0                            # Call printf

    mov r0, #1                          # Exit code
    bx lr                             # Exit

.data
error_message: .asciz "Error: Invalid input\n"
```

### Explanation:
1. **Stack Frame Management**:
   - `push {lr}` and `mov sp, lr` save the return address.
   - `push {fp, lr}` saves the frame pointer and the return address.

2. **Local Variables**:
   - `sub sp, #16` allocates space for local variables on the stack.
   - `str r0, [sp]` stores the address of the input variable in the stack.

3. **Calling Functions**:
   - `ldr r0, =printf` loads the address of the `printf` function.
   - `ldr r1, [sp, #4]` loads the address of the input variable from the stack.
   - `blr r0` calls `printf`.

4. **Input Validation**:
   - `cmp r0, #0` checks if the input was successful.
   - `bne error_exit` jumps to the error exit block if the input was not successful.

5. **Reading More Inputs**:
   - `ldr r0, =scanf` loads the address of the `scanf` function.
   - `ldr r1, [sp, #4]` loads the address of the input variable from the stack.
   - `blr r0` calls `scanf`.

6. **Output Validation**:
   - `cmp r0, #0` checks if the input was successful.
   - `bne error_exit` jumps to the error exit block if the input was not successful.

7. **Printing the Input**:
   - `ldr r0, =print_int` loads the address of the `print_int` function.
   - `ldr r1, [sp, #4]` loads the address of the input variable from the stack.
   - `blr r0` calls `print_int`.

8. **Return**:
   - `mov r0, #0` sets the return value.
   - `bx lr` exits the program.

### Data Section:
- The `.data` section contains the error message used in the `error_exit` block.

This ARM assembly code should produce the same output as the original x86 assembly code when executed on an ARM-based system.