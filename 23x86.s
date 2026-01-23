Here is the equivalent ARM assembly code:

```arm
.global _start

_start:
    ldr r0, [sp, #16]   // Load the address of the input number from stack
    fmov d0, #100.0     // Load 100.0 into register d0
    fmul d1, d0, r0    // Multiply d0 and r0 (which holds the input number) and store result in d1
    fmadd d1, d0, #1.0   // Add 1.0 to d1 and store result in d1
    ldr r0, [sp, #24]   // Load the address of the memory location where we want to store the result
    vmov.f64 q0, d1      // Move d1 to the first element of vector q0
    bl scanf             // Call the scanf function to read an integer from stdin
    mov r0, [sp, #24]   // Load the address of the first element of vector q0
    vdiv.f64 q0, q0, d0  // Divide each element of vector q0 by d0
    bl printf            // Call the printf function to print the result
    mov r0, #0           // Exit the program
    bx lr               // Return from the program
```

Please note that this code assumes that you have a C compiler that supports AArch64 architecture, and that `scanf` and `printf` functions are available in your environment. Also, please make sure that the memory location pointed to by the address stored in `[sp, #24]` is large enough to hold the result of the division operation.