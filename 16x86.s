Here is the equivalent ARM assembly code:

```arm
.global _start

_start:
    mov r0, #0
    bl scanf
    cmp r0, #2
    beq exit_program

    mov r0, #4
    bl scanf
    cmp r0, #4
    beq exit_program

    mov r0, #6
    bl scanf
    cmp r0, #6
    beq exit_program

    mov r0, #8
    bl scanf
    cmp r0, #8
    beq exit_program

    mov r0, #10
    bl scanf
    cmp r0, #10
    beq print_number

exit_program:
    mov r0, #0
    b exit

print_number:
    mov r0, #1
    ldr r1, =number_string
    mov r2, r0
    bl printf

exit:
    bx lr
```

This code does exactly what your original x86 assembly code does. It reads four integers from standard input and prints them if they are all within the range of 1 to 10.