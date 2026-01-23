The provided x86 assembly code is for a simple C program that calculates the sum of squares of numbers from 1 to 100 and prints the result. To convert it to ARM assembly, we need to understand the differences between the two architectures and translate the instructions accordingly.

Here's the equivalent ARM assembly code:

```arm
.global _start

.text
.align 4
_start:
    mov r0, #1       ; Initialize sum to 1
    mov r1, #100      ; Set upper limit to 100

sum_loop:
    mul r2, r0, r0        ; Multiply current number by itself (square)
    add r0, r0, r2        ; Add square to the sum
    sub r1, r1, #1          ; Decrement the upper limit
    cmp r1, #0            ; Check if upper limit is zero
    bne sum_loop           ; If not zero, continue loop

    bl printf            ; Call printf with the sum as argument

    mov r0, #0       ; Exit the program with status code 0

end:
    bl __aeabi_atexit
    mov r0, #0       ; Return 0
    bx lr
```

### Explanation:
1. **Initialization**: The program starts by initializing `r0` to 1 and `r1` to 100.
2. **Loop**: It enters a loop where it multiplies the current number (`r0`) by itself (`r2`) and adds the result to `r0`. Then, it decrements `r1` and checks if it's zero. If not zero, it continues the loop.
3. **Result Calculation**: Once the loop exits, it calls `printf` with `r0` as an argument, which is the sum of squares.
4. **Exit**: After printing the result, it calls `_aeabi_atexit` to clean up resources and returns 0.
5. **End of Program**: Finally, it returns 0 to indicate successful execution.

This translation maintains the same functionality as the original x86 code but uses ARM assembly instructions instead.