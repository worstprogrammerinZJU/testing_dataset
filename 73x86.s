Here is the equivalent ARM assembly code for the provided x86 assembly code:

```arm
.global _start

_start:
    push {lr}
    mov sp, lr
    push {r7-r9, pc}

    bl scanf
    mov r0, [sp]        // Get the first integer from stdin

    bl printf          // Print the first integer
    sub sp, #4
    str r0, [sp]

    bl scanf          // Read the second integer from stdin
    mov r0, [sp]        // Get the second integer from stdin

    bl printf         // Print the second integer
    sub sp, #4
    str r0, [sp]

    bl scanf          // Read the third integer from stdin
    mov r0, [sp]        // Get the third integer from stdin

    bl printf         // Print the third integer
    sub sp, #4
    str r0, [sp]

    bl printf          // Print the fourth integer
    sub sp, #4
    str r0, [sp]

    bl printf          // Print the fifth integer
    sub sp, #4
    str r0, [sp]

    pop {pc}           // Return to the caller
```

Please note that this code assumes that the `scanf` and `printf` functions have been defined elsewhere in your program or library. The exact implementation of these functions may vary depending on the specific environment you are working in (e.g., embedded system, Android, etc.). Additionally, the use of global variables (`sp`, `r0`, etc.) and stack manipulation is not supported in ARM assembly.