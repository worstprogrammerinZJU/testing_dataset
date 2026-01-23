Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    ldr r0, =LCPI0_0     # Load the value of LCPI0_0 into r0
    vld1.f64 {v0}, [r0]    # Load the double value from memory into v0
    ldr r0, =LCPI0_1     # Load the value of LCPI0_1 into r0
    vld1.f64 {v1}, [r0]    # Load the double value from memory into v1
    ldr r0, =LCPI0_2     # Load the value of LCPI0_2 into r0
    vld1.f64 {v2}, [r0]    # Load the double value from memory into v2

    mov r0, #36         # Move 36 into r0
    bl scanf           # Call scanf with r0 as the argument
    cmp r0, #0          # Compare r0 with 0
    beq exit           # If r0 is 0, jump to exit

    ldr r0, =LCPI0_0     # Load the value of LCPI0_0 into r0
    vst1.f64 {v0}, [r0]    # Store the double value from v0 back to memory

    mov r0, #4          # Move 4 into r0
    bl scanf           # Call scanf with r0 as the argument
    cmp r0, #0          # Compare r0 with 0
    beq exit           # If r0 is 0, jump to exit

    ldr r0, =LCPI0_0     # Load the value of LCPI0_0 into r0
    vmul.f64 v0, v0, v1   # Multiply v0 and v1 together
    vsqrt.f64 v0, v0       # Square root v0
    bl log10            # Call log10 with v0 as the argument
    vst1.f64 {v0}, [r0]    # Store the result back to memory

    ldr r0, =LCPI0_0     # Load the value of LCPI0_0 into r0
    vmul.f64 v0, v0, v2   # Multiply v0 and v2 together
    vsqrt.f64 v0, v0       # Square root v0
    bl log10            # Call log10 with v0 as the argument
    vst1.f64 {v0}, [r0]    # Store the result back to memory

exit:
    mov r0, #0          # Move 0 into r0
    bx lr               # Return from the program

log10:
    // Implement the log10 function here using vfp instructions
    // This is just a placeholder for the actual implementation
    // The actual implementation would involve more complex calculations and possibly
    // additional instructions
    // For simplicity, this placeholder will return 0
    ret

LCPI0_0:
    .quad 0x3ff0000000000000      # Double 1
LCPI0_1:
    .quad 0x401921fb54442d18      # Double 6.2831853071795862
LCPI0_2:
    .quad 0x4005bf0a8b145769      # Double 2.7182818284590451

.pi:
    .quad 0x400921fb54442d18      # Double 3.1415926535897931

.str:
    .asciz "%d"
```

Note that this is a simplified version of the original x86 code and does not include the full implementation of the `log10` function. A full implementation would require more complex calculations and potentially additional instructions. Additionally, the use of VFP (Vector Floating Point) instructions in ARM assembly is necessary to perform floating-point operations.