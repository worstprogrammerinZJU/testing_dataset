Here is the equivalent ARM assembly for your x86 assembly code:

```arm
    .section __text,.text,axr,noat
    .global _start

_start:
    mov r7, #0            @ Clear flags
    ldr r0, =_input        @ Load input address into r0
    bl scanf              @ Call scanf with arguments from stack

    mov r0, #0            @ Clear flags
    ldr r0, =_output       @ Load output address into r0
    bl printf             @ Call printf with arguments from stack

    mov r0, #0            @ Return from main

_input:                                @ Input label
    ldr r3, [r0]           @ Read integer from r0 and store in r3
    str r3, [r0, #4]         @ Store integer in r3 to address +4 of r0

_output:                               @ Output label
    ldr r3, [r0]           @ Read integer from r0 and store in r3
    mov r4, #10           @ Print integer as decimal
    mul r4, r3, r4          @ Multiply r4 (base) by r3 (number)
    add r4, r4, r3          @ Add r3 to r4 (result)
    str r4, [r0, #8]         @ Store result in address +8 of r0
    mov r3, #'\n'          @ Move newline character to r3
    str r3, [r0, #12]         @ Store newline character in address +12 of r0
    b _end                 @ Branch to end label

_end:
    mov r0, #0            @ Return from main
    bx lr               @ Exit program
```

Please note that this is an example implementation assuming that the `scanf` and `printf` functions are defined in a library that can be called from ARM assembly. Also, it's assumed that `stdin` and `stdout` are being used for input and output respectively. 

This code assumes that `scanf` takes two integers as input and prints their sum on stdout. It also assumes that `printf` takes two integers as input and prints them on stdout followed by a newline.

Make sure that you have the necessary libraries linked in your ARM environment before compiling this code.