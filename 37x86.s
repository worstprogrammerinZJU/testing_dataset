Here is the equivalent ARM assembly code:

```arm
.global _start                            # -- Begin function main
_start:                                   # @main
    push {r4-r11, lr}                     # Save registers and link register
    mov r4, sp                          # Set r4 to the stack pointer
    sub r4, r4, #16                        # Subtract 16 bytes from the stack pointer
    ldr r3, =printf                      # Load the address of printf into r3
    ldr r2, [r4, #-8]                   # Load the value from the -8 byte offset in the stack into r2
    mov r1, r2                          # Move r2 to r1
    cmp r1, #0                             # Compare r1 with 0
    bne .loop                              # If not equal, jump to loop
    ldr r3, =exit                       # Load the address of exit into r3
    ldr r1, =0                           # Load 0 into r1
    blx r3                            # Call the exit function with 0 as argument
    pop {r4-r11, pc}                    # Restore registers and link register
.loop:                                     # This Inner Loop Header: Depth=1
    ldr r1, =format                     # Load the address of format into r1
    ldr r2, [r4, #-8]                   # Load the value from the -8 byte offset in the stack into r2
    add r1, r1, #2                        # Add 2 to r1
    ldr r3, [r4, #-4]                   # Load the value from the -4 byte offset in the stack into r3
    mov r0, r3                          # Move r3 to r0
    blx r1                            # Call the printf function with r3 as argument
    sub r4, r4, #16                        # Subtract 16 bytes from the stack pointer
    bne .loop                              # If not equal, jump to loop
```

Please note that this is an approximation and might not work directly on all architectures or environments. Also, some details like the specific assembly syntax for certain instructions and how to handle different data types may vary slightly between different ARM processors.