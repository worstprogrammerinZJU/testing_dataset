Certainly! Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.section .text
.global _start
.type _start, @function
_start:
    push {lr}
    mov sp, lr
    bl printf
    mov r0, #50000
    bl printf
    pop {lr}

.section .data
_max: .long 50000
_min: .long 50000

.section .bss
.dnone
```

### Explanation:

1. **Section `.text`**: This section contains the executable code.
2. **Global Function `_start`**: This is the entry point of the program.
3. **Local Variables**:
   - `sp`: Stack pointer.
   - `lr`: Link register used for returning from functions.
4. **Function Calls**:
   - `bl printf`: Call the C standard library function `printf`.
   - `mov r0, #50000`: Move the value `50000` into register `r0`, which is then passed as an argument to `printf`.
   - `bl printf`: Call `printf` again with the same value `50000`.
5. **Return**: The function returns without any arguments.

### Notes:
- In ARM assembly, memory addresses are typically loaded directly into registers rather than pushed onto the stack.
- The `.section .data` and `.bss` sections define static data and uninitialized data respectively.
- The `.comm` directive is used to create common symbols that can be accessed from multiple sections.