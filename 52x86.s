To convert the given x86 assembly code to ARM assembly, we need to understand how ARM handles floating-point arithmetic and string operations compared to x86. Here's the equivalent ARM assembly code:

```arm
.section .text, ax
.global _start
_start:
    # Load the value of pi from memory
    ldr r0, [pc, #LCPI0_0]
    mov r1, #3.1415926535897931

    # Load the initial number from memory
    ldr r2, [pc, #LCPI0_1]
    mov r3, #100

    # Enter a loop to read properties and calculate their erosion years
loop:
    # Read two floating-point numbers from memory
    ldr d0, [pc, #L_.str.1]
    ldr d1, [pc, #L_.str.2]

    # Convert d0 and d1 to integer and store them in r4 and r5
    fmov s0, d0
    fmov s1, d1
    umul sd s0, s0
    umul sd s1, s1
    add sd s1, s0
    mul sd s0, s1
    fmul sd s0, r3

    # Round the result to an integer and store it in r6
    frinti sd s0, r6

    # Print the property name and its erosion year
    ldr d0, [pc, #L_.str.2]
    bl printf

    # Check if there are more properties to read
    cmp r4, r2
    bne loop

    # Print "END OF OUTPUT."
    ldr d0, [pc, #L_str]
    bl printf

    # Exit the program
    mov r0, #0
    bx lr
```

### Explanation:
1. **Load Pi and Initial Number**:
   - Load the value of `pi` (stored at address `LCPI0_0`) into register `r0`.
   - Load the initial number (stored at address `LCPI0_1`) into register `r3`.

2. **Loop Through Properties**:
   - Use a loop (`loop`) to read two floating-point numbers from memory.
   - Convert the first floating-point number (`d0`) to an integer using `fmul sd s0, s0` and then round it to an integer using `frinti sd s0, r6`.
   - Print the property name and its erosion year using `bl printf`.
   - Check if there are more properties to read using `cmp r4, r2` and branch to `loop` if there are more.

3. **Print "END OF OUTPUT."**:
   - Load the string "END OF OUTPUT." from memory into register `d0`.
   - Call `printf` to print the message.

4. **Exit Program**:
   - Move the exit status (0) into register `r0`.
   - Branch to the system call return point using `bx lr`.

### Notes:
- The use of floating-point instructions (`fmul sd`, `frinti sd`) is necessary for handling the calculations involving `pi` and `initial number`.
- The string printing uses the `printf` function, which is specific to ARM architecture.
- The `bcne` instruction is used to branch if the condition is not equal, which corresponds to the `jne` instruction in x86.