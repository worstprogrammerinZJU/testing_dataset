Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    push {lr}                            # Save return address
    mov r10, sp                         # Set base pointer to stack pointer
    sub r10, r10, #16                    # Reserve space for local variables
    str r10, [sp]                        # Store base pointer on stack
    ldr r0, [sp], #4                     # Load first argument from stack
    bl scanf                              # Call scanf
    cmp r0, #0                             # Check if scanf failed
    je done                                # If scanf failed, jump to done label

    ldr r1, [sp], #8                     # Load second argument from stack
    bl printf                             # Call printf
    add r1, #4                             # Move to next argument
    bl printf                             # Call printf with second argument

done:
    pop {lr}                            # Restore return address
```

Note that this code assumes that `scanf` and `printf` are implemented as functions that take an integer and a string respectively as arguments. The code also assumes that the input values are stored in memory at addresses pointed to by `r0` and `r1`.