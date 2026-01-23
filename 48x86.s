Here is the equivalent ARM assembly code for your provided x86 assembly code:

```arm
    .section        __TEXT,__text,regular,pure_instructions
    .build_version  macos, 15, 0   sdk_version 15, 5
    .section        __TEXT,__literal8,8byte_literals
    .p2align      3, 0x0                          # -- Begin function main
    LCPI0_0:
        .quad          0x4028000000000000              # double 12
    .section        __TEXT,__text,regular,pure_instructions
    .globl         _main
    .p2align      4, 0x90
_main:                                  # @main
# %bb.0:
    mov            r15, #12
    ldr           r2, [pc, #4]          # Load the address of the string "%lf"
    ldr           r3, [pc, #8]          # Load the address of the string "$%.2lf\n"
    push           {lr}                 # Save the return address
    mov            sp, lr               # Set up the stack frame
    sub            sp, #24               # Reserve space on the stack
    mov            v0, d0                # Move d0 to v0 (double)
    mov            fp, sp                # Set up the frame pointer
    bl             scanf                 # Call scanf
    fsub.s         d0, d0, v1              # Subtract v1 from d0
    ldr            r0, [pc, #4]          # Load the address of the string "%lf"
    ldr            r1, [pc, #8]          # Load the address of the string "$%.2lf\n"
    mov            v0, d0                # Move d0 to v0 (double)
    mov            fp, sp                # Set up the frame pointer
    bl             printf                 # Call printf
    add            sp, #24               # Restore the stack frame
    pop            {fp}                 # Restore the frame pointer
    pop            {lr}                 # Restore the return address
    bx             lr                   # Return
# %bb.2:
    .subsections_via_symbols
```

Please note that this is just an example and may not compile or run correctly on an ARM platform without further adjustments. Additionally, the conversion assumes that the `scanf` and `printf` functions are available in the ARM environment.