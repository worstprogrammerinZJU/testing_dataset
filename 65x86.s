Here is the equivalent ARM assembly code:

```arm
.section .rodata
.global _start

_start:
    ldr r0, =4136          # Load the value 4136 into register r0
    bl __chkstk            # Call the stack check function
    sub sp, sp, r0         # Subtract the stack check result from the stack pointer
    ldr r0, =___stack_chk_guard        # Load the stack check guard value from memory into register r0
    ldr r0, [r0]           # Load the stack check guard value from memory into register r0
    cmp r0, sp              # Compare the stack check guard value with the stack pointer
    beq exit                # If they are equal, jump to exit
    mov r0, 1                 # Load the value 1 into register r0
    ldr r1, =L_str            # Load the address of the string "Hello" into register r1
    bl printf                  # Call the printf function
    b continue                   # Branch to continue

exit:
    mov r0, #0             # Load the value 0 into register r0
    bx lr                      # Return from the program

continue:
    mov r0, 1                 # Load the value 1 into register r0
    ldr r1, =L_str          # Load the address of the string "World" into register r1
    bl printf                  # Call the printf function
    b exit                   # Branch to exit

L_str:
    .asciz "%d"
```

Please note that this is a simplified version of the original code and may not cover all aspects of the original C program. Also, the ARM assembly code assumes that the stack is properly managed and that the printf function is correctly implemented.