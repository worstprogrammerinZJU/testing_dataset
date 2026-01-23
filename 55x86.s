    .section __TEXT,__text,regular,pure_instructions
    .build_version macos, 15, 0; sdk_version 15, 5
    .section __TEXT,__literal8,8byte_literals
    .p2align 3, 0x0      ; -- Begin function main
LCPI0_0:
    .quad 0x3FF0000000000000  ; double 1
    .section __TEXT,__text,regular,pure_instructions
    .globl _main
    .p2align 4, 0x90
_main:                                  ; @main
    ; Save registers
    mov r14, sp
    push {r12, lr}

    ; Load arguments
    ldr r12, [sp, #8]

    ; Check for stack overflow
    cmp r12, #0
    beq _check_overflow

    ; Initialize variables
    mov r0, #800024             ; imm = 0xC3518
    bl ___chkstk_darwin

    ; Subtract stack pointer from base pointer
    sub sp, sp, r0

    ; Load stack guard value
    ldr r0, =___stack_chk_guard@GOTPCREL
    ldr r0, [r0]

    ; Move stack guard value to r0
    mov r0, [r0]

    ; Calculate sum of squares
    mov r1, #2
    mul r1, r1
    add r1, r0
    mov r2, r0
    mul r2, r2
    sub r1, r2
    add r0, r1
    store r0, [r12, #32]

    ; Output result
    mov r0, #800032
    mov r1, r0
    ldr r2, =L_str
    bl printf

    mov r0, #100000
    mov r1, r0
    ldr r2, =L_str.1
    bl printf

    mov r0, r12
    mov r1, r12
    ldr r2, =L_.str.2
    bl scanf

    mov r0, r12
    mov r1, r12
    ldr r2, =L_.str.1
    bl scanf

    mov r0, r12
    ldr r1, r12
    ldr r2, =L_.str.1
    bl scanf

    ; Check for stack underflow
    mov r0, -32
    cmp r0, [r12]
    beq _check_underflow

    ; Clean up
    pop {r12, lr}
    mov sp, r14
    ret

_check_overflow:
    bl ___stack_chk_fail

_check_underflow:
    bl ___stack_chk_fail
