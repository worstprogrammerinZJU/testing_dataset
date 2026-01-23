Here is the equivalent ARM assembly code:

```arm
.section .data
    .global _c
    .zero 50020002, 4

    .section .rodata
    .globl L_.str
    .asciz "%d"

    .globl L_.str.1
    .asciz "%s"

    .globl L_.str.2
    .asciz "%d\n"

    .section .text
    .global _start

_start:
    push {lr}
    mov sp, lr
    add sp, #4
    ldr r1, [sp], #4
    bl scanf

    ldr r2, [sp], #4
    bl scanf

    mov r3, [r1]
    cmp r3, #0
    beq _end

    mov r4, [r2]
    cmp r4, #0
    beq _end

    bl strlen

    mov r5, #0
    bl strcpy

    mov r6, #0
    bl strcmp

_end:
    mov r7, #4
    str r6, [sp], #4
    mov r7, #1
    str r5, [sp], #8
    bl printf

    mov r7, #0
    bl exit

strlen:
    mov r8, r0
    mov r9, #0
    mov r10, #0

.Lstrlen_loop:
    ldr r11, [r8]
    cmp r11, #0
    bne .Lstrlen_loop
    add r9, #1
    add r8, #4
    bx lr

strcpy:
    mov r8, r0
    mov r9, r1
    mov r10, #0

.Lstrcpy_loop:
    ldr r11, [r8]
    cmp r11, #0
    bne .Lstrcpy_loop
    strb r9, [r10]
    inc r10
    add r8, #1
    bx lr

strcmp:
    mov r8, r0
    mov r9, r1
    mov r10, #0

.Lstrcmp_loop:
    ldr r11, [r8]
    ldr r12, [r9]
    cmp r11, r12
    beq .Lstrcmp_equal
    cmp r11, #0
    bne .Lstrcmp_not_equal
    cmp r12, #0
    bne .Lstrcmp_not_equal
    inc r10
    add r8, #1
    add r9, #1
    bx lr

.Lstrcmp_equal:
    mov r7, #1
    bx lr

.Lstrcmp_not_equal:
    mov r7, #0
    bx lr

exit:
    mov r7, #0
    swi #0

```

Please note that this code does not handle error cases such as when `scanf` fails or the strings do not match exactly. Also, it assumes that the input numbers and strings are within the bounds of the memory available for these variables. In a real-world scenario, you would need to add additional checks and error handling to make the program robust.