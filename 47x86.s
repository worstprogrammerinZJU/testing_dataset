Converting x86 assembly code to ARM assembly is quite complex and requires a deep understanding of both architectures. Here's an attempt to translate your code:

```arm
.text
.global _start
.type _start, @function
_start:
    push {lr}
    mov r12, #0
    mov r13, #0
    mov r14, #0
    mov r15, #0

    /* Read input strings */
    ldr r0, =L_str
    bl scanf

    /* Parse the first string */
    ldr r0, =L_str
    bl sscanf

    /* Calculate length of the second string */
    ldr r0, =L_str.1
    bl strlen

    /* Allocate memory for output */
    add r1, r14, #4
    add r2, r14, #4
    bl malloc

    /* Copy characters from second string to allocated memory */
    ldr r0, =L_str
    bl strcpy

    /* Calculate length of the third string */
    ldr r0, =L_str.1
    bl strlen

    /* Allocate more memory for output */
    add r1, r14, #4
    add r2, r14, #4
    bl malloc

    /* Copy characters from third string to allocated memory */
    ldr r0, =L_str
    bl strcpy

    /* Print the results */
    ldr r0, =L_str
    bl printf

    ldr r0, =L_str.1
    bl printf

    ldr r0, =L_str.1
    bl printf

    /* Free allocated memory */
    ldr r0, =malloc
    bl free

    /* Exit program */
    mov r0, #0
    bx lr

/* String manipulation functions */
.global _strlen
_type _strlen, @function
_strlen:
    ldr r0, [r1]
    cmp r0, #0
    beq .end_strlen
    mov r0, #1
    add r1, #1
    b _strlen

.end_strlen:
    bx lr

.global _strcpy
_type _strcpy, @function
_strcpy:
    ldr r0, [r1]
    cmp r0, #0
    beq .end_strcpy
    str r0, [r2]
    add r1, #1
    add r2, #1
    b _strcpy

.end_strcpy:
    bx lr

.global _printf
_type _printf, @function
_printf:
    ldr r0, [r1]
    mov r1, r2
    mov r2, r3
    bl puts
    bx lr

.global _scanf
_type _scanf, @function
_scanf:
    ldr r0, [r1]
    mov r1, r2
    mov r2, r3
    bl gets
    bx lr

.global malloc
_type malloc, @function
_malloc:
    ldr r0, [r1]
    mov r1, r2
    mov r2, r3
    bl malloc
    bx lr

.global free
_type free, @function
_free:
    ldr r0, [r1]
    mov r1, r2
    mov r2, r3
    bl free
    bx lr

.section __DATA,.data
L_str: .asciz "Hello"
L_str.1: .asciz "World"
```

Please note that this translation is very simplified and does not include all details such as handling errors, dynamic memory management (e.g., `calloc` or `realloc`), and optimization. Also, this code assumes that the standard C library functions (`scanf`, `printf`, `strlen`, `strcpy`, `gets`, `malloc`, `free`) are available on the target ARM architecture.