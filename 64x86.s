To convert the given x86 assembly code to ARM assembly, we need to follow these steps:

1. Understand the x86 assembly code and its functionality.
2. Translate each instruction to its corresponding ARM instruction.
3. Adjust for any differences in register usage or addressing modes.

Here's the equivalent ARM assembly code:

```arm
.section .text
.global _start

_start:
    mov r0, #1  ; syscall number for printf
    ldr r1, =L_str  ; address of the string "%d"
    ldr r2, =1  ; argument for printf
    swi #0      ; call printf

    cmp r2, #0
    blt exit    ; if return value is 0, exit

    mov r0, #1  ; syscall number for scanf
    ldr r1, =L_str  ; address of the string "%d"
    ldr r2, =-48  ; argument for scanf
    swi #0      ; call scanf

    cmp r2, #0
    bgt exit    ; if return value is 0, exit

    bl reverse  ; call reverse function

    mov r0, #1  ; syscall number for printf
    ldr r1, =L_str.1  ; address of the string "Scenario #%d:\n%d\n\n"
    ldr r2, =1  ; argument for printf
    swi #0      ; call printf

    bl mergesort  ; call mergesort function

exit:
    mov r0, #0  ; syscall number for exit
    swi #0      ; call exit

.reverse:
    mov r0, #1  ; syscall number for scanf
    ldr r1, =L_str  ; address of the string "%d"
    ldr r2, =-44  ; argument for scanf
    swi #0      ; call scanf

    cmp r2, #0
    bgt exit    ; if return value is 0, exit

    bl reverse  ; call reverse function

    mov r0, #1  ; syscall number for printf
    ldr r1, =L_str.1  ; address of the string "Scenario #%d:\n%d\n\n"
    ldr r2, =1  ; argument for printf
    swi #0      ; call printf

    bl mergesort  ; call mergesort function

.mergesort:
    mov r0, #1  ; syscall number for scanf
    ldr r1, =L_str  ; address of the string "%d"
    ldr r2, =-44  ; argument for scanf
    swi #0      ; call scanf

    cmp r2, #0
    bgt exit    ; if return value is 0, exit

    bl merge  ; call merge function

    mov r0, #1  ; syscall number for printf
    ldr r1, =L_str.1  ; address of the string "Scenario #%d:\n%d\n\n"
    ldr r2, =1  ; argument for printf
    swi #0      ; call printf

    bl mergesort  ; call mergesort function

.merge:
    mov r0, #1  ; syscall number for scanf
    ldr r1, =L_str  ; address of the string "%d"
    ldr r2, =-44  ; argument for scanf
    swi #0      ; call scanf

    cmp r2, #0
    bgt exit    ; if return value is 0, exit

    bl reverse  ; call reverse function

    mov r0, #1  ; syscall number for printf
    ldr r1, =L_str.1  ; address of the string "Scenario #%d:\n%d\n\n"
    ldr r2, =1  ; argument for printf
    swi #0      ; call printf

    bl mergesort  ; call mergesort function

exit:
    mov r0, #0  ; syscall number for exit
    swi #0      ; call exit

.L_str:
    .asciz "%d"

.L_reverse:
    .comm _reverse,4,2

.L_str.1:
    .asciz "Scenario #%d:\n%d\n\n"

.L_z:
    .comm _z,4000,4
```

### Explanation:
- **`mov r0, #1; swi #0`**: This sets up the system call for `printf`.
- **`cmp r2, #0; bl exit`**: This checks if the return value from `scanf` is zero (indicating success) and exits if it is.
- **`bl reverse`, `bl mergesort`, `bl merge`**: These calls to functions are similar to their x86 counterparts, using `bl` (branch with link).
- **`.asciz "%d"`**: This defines the string format for `printf`.
- **`.comm _reverse,4,2`**: This declares a global variable `_reverse` as a common symbol with size 4 bytes and alignment 2 bytes.

This ARM assembly code should perform the same operations as the original x86 assembly code.