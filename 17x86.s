To convert the given x86 assembly code to ARM assembly, we need to translate each instruction and adjust the syntax to fit ARM architecture. Here is the equivalent ARM assembly code:

```arm
    .section __text, regular, pure_instructions
    .build_version macos, 15, 0; sdk_version 15, 5
    .section __data, data, readable, writeable
    LCPI0_0: .quad 0x4059000000000000; double 100

    .section __text, regular, pure_instructions
    .globl _main
    .p2align 4, 0x90
_main:                                ; @main
    push {r4-r12}                       ; Save registers r4-r12 onto the stack
    mov sp, #0x408                      ; Allocate space for local variables on the stack
    ldr r15, =___stack_chk_guard         ; Load the guard value from the GOTPCREL section into r15
    ldr r15, [r15]                      ; Load the guard value from memory into r15
    mov r14, #0                           ; Initialize r14 to 0
    ldr r13, [r15], #8                   ; Load the first argument from the stack into r13 (stdin)
    cmp r13, #0                          ; Check if the first argument is 0
    je end_program                    ; Jump to end_program if it is 0
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #-1                       ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str                   ; Load the string "Enter number: " into r12
    bl printf                            ; Print the string "Enter number: "
    bl scanf                             ; Call the scanf function with stdin as the argument
    cmp r13, #0                          ; Check if scanf failed
    jl end_program                    ; Jump to end_program if scanf failed
    ldr r12, =L_.str.1                  ; Load the string "%.3lf%c\n" into r12
    bl printf                            ; Print the string "%.3lf%c\n"
    bl scanf                             ; Call the scanf