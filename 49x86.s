.section .rodata
.align 4
.global _start
_start:
    mov r0, #0          @ argc
    mov r1, #0          @ argv

    bl scanf           @ Read input from stdin into r0 and r1

    cmp r0, #0          @ Check if input was successful
    lea r1, [._str]     @ If not, print error message
    bne .error_msg

    mov r0, r1          @ Print the first string
    bl printf           @ Call printf

    mov r0, r1          @ Print the second string
    bl printf           @ Call printf

    b .exit

.error_msg:
    mov r0, #0          @ Print error message
    bl printf           @ Call printf

.exit:
    mov r0, #0          @ Exit program
    bx lr            @ Return from main

.section .data
.align 4
.global ___stack_chk_guard
___stack_chk_guard:
    .word 0x90000000

.global _printf
_printf:
    @ Placeholder for actual printf implementation
    bx lr

.global _scanf
_scanf:
    @ Placeholder for actual scanf implementation
    bx lr
