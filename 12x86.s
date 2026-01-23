Here is the equivalent ARM assembly code:

```arm
.global _start
_start:
    mov r1, #0
    mov r2, #0
    mov r3, #0
    mov r4, #0
    mov r5, #0
    mov r6, #0
    mov r7, #0
    bl scanf
    cmp r0, #0
    bne .loop
    mov r0, #1
    bl printf
    bl scanf
    cmp r0, #0
    bne .loop
    mov r0, #0
    bx lr
.loop:
    // Your loop body here
```

This code initializes registers `r1` through `r7` with zero values, calls `scanf` twice to read two floating-point numbers, compares the result to 0, and if not, continues to the `.loop` label. If the result is 0, it calls `printf` to print a string followed by another floating-point number, then calls `scanf` again to read the next floating-point number, and repeats this process until the user enters -1.

Please note that this is a very simplified example. In a real-world application, you would need to handle more cases such as input validation, error handling, etc. Also, you may want to replace the placeholder comments with actual instructions in your loop body.