Here is the equivalent ARM assembly code:

```arm
.global _start                           # -- Begin function main
.text
    push {lr}                           # Save link register
    mov sp, lr                          # Set stack pointer to link register
    push {r15, r14, r13, r12, rbx, rax} # Push general purpose registers
    mov r0, #40056                     # Load immediate value into register r0
    bl __chkstk_darwin                  # Call function with parameter r0
    sub sp, r0                         # Subtract r0 from stack pointer
    pop {r0}                            # Pop register r0
    ldr r0, [__stack_chk_guard]         # Load address of __stack_chk_guard from global offset table
    ldr r0, [r0]                       # Load value at address pointed by r0 into register r0
    mov r0, #40088                      # Load immediate value into register r0
    bl scanf                             # Call function with parameters r0 and r1 (stdin and address of r0)
    cmp r0, #0                          # Compare r0 with zero
    jl .end_loop                         # Jump if less than zero
    lea r1, [.str]                      # Load address of string ".str" into register r1
    lea r2, [40088]                     # Load address of variable "40088" into register r2
    bl printf                            # Call function with parameters r1, r2, and r3 (stdout, address of r2, and zero)
    incl r0                              # Increment r0
    cmp r0, #40088                      # Compare r0 with 40088
    jge .end_loop                         # Jump if greater than or equal to 40088
    lea r1, [.str.1]                     # Load address of string ".str.1" into register r1
    bl printf                            # Call function with parameters r1, r2, and r3 (stdout, address of r2, and zero)
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, #0                            # Move zero into register r2
    bl scanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0                              # Increment r0
    lea r1, [40084]                     # Load address of variable "40084" into register r1
    mov r2, r0                            # Move r0 into register r2
    bl sscanf                             # Call function with parameters r1 and r2 (stdin and address of r2)
    test r0, r0                          # Test r0 for zero
    je .end_loop                         # Jump if zero
    incl r0