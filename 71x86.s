Here is the equivalent ARM assembly code for your x86 assembly:

```arm
.global _start

_start:
    mov r7, #0x10            @ set up registers for scanf and printf
    ldr r0, =scanf         @ load address of scanf into r0
    ldr r1, =input          @ load address of input into r1
    ldr r2, =%hi(input)     @ load high byte of input address into r2
    ldr r3, =%lo(input)     @ load low byte of input address into r3
    blx r0                  @ call scanf with arguments in registers

    cmp r0, #0                @ check if scanf returned error
    bne exit                 @ if error, jump to exit

    mov r7, #0x20            @ set up registers for printf
    ldr r0, =output         @ load address of output into r0
    ldr r1, =input          @ load address of input into r1
    ldr r2, =%hi(input)     @ load high byte of input address into r2
    ldr r3, =%lo(input)     @ load low byte of input address into r3
    blx r0                  @ call printf with arguments in registers

exit:
    mov r7, #0               @ set up registers for return
    blx r0                  @ call exit

.input:
    .word 1                   @ store value 1 in input

.output:
    .word 0                   @ store value 0 in output
```

Please note that this code assumes that `scanf` and `printf` are defined elsewhere in your program and that they have the same parameters as the x86 version. Additionally, the memory addresses for `input` and `output` need to be adjusted according to your specific application.