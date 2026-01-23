Here is the equivalent ARM assembly code:

```arm
.section .data
    pi0         .double 0.6180339887498949
    pi1         .double 1.6180339887498949

.section .text
.global _start
_start:
    mov r1, #3                 ; Number of arguments
    sub lr, lr, #4             ; Subtract the address of the first argument
    bl scanf                   ; Call scanf with the number of arguments and the address of the first argument

    cmp r0, #3                 ; Check if the number of arguments was correct
    bne exit                   ; If not, exit

    ldr r2, =pi0               ; Load the first argument into r2
    ldr r3, =pi1               ; Load the second argument into r3

    mov r4, #0                 ; Initialize the sum to zero
    mov r5, #0                 ; Initialize the count to zero

loop:
    ldr r6, [sp, #4]           ; Load the current value from the stack
    ldr r7, [sp, #8]           ; Load the next value from the stack

    cmp r7, #0                 ; Check if we've reached the end of the list
    beq done                  ; If so, exit

    mul r6, r6, r7            ; Multiply the two values
    add r4, r4, r6            ; Add the result to the sum

    add sp, #16                 ; Move to the next pair of values on the stack
    b loop                    ; Go back to the loop

done:
    ldr r6, [sp, #4]           ; Load the last value from the stack
    ldr r7, [sp, #8]           ; Load the next value from the stack

    mul r6, r6, r7            ; Multiply the last two values
    add r4, r4, r6            ; Add the result to the sum

    mov r6, r4                 ; Store the final sum in r6

    mov r7, #0                 ; Initialize the count to zero

count_loop:
    cmp r7, #3                 ; Check if we've reached the end of the list
    beq done_count          ; If so, exit

    cmp r6, r7                 ; Compare the current value with the count
    beq skip                ; If equal, skip the rest of the loop

    add r7, r7, #1             ; Increment the count

skip:
    add sp, #16                 ; Move to the next pair of values on the stack
    b count_loop          ; Go back to the count loop

done_count:
    str r6, [sp, #12]           ; Store the final sum in memory

    mov r7, #0                 ; Initialize the index to zero

index_loop:
    cmp r7, #3                 ; Check if we've reached the end of the list
    beq done_index          ; If so, exit

    ldr r8, [sp, #16]          ; Load the current value from the stack
    ldr r9, [sp, #20]          ; Load the next value from the stack

    cmp r8, r9                 ; Compare the current value with the next value
    beq skip_index          ; If equal, skip the rest of the loop

    add r7, r7, #1             ; Increment the index

skip_index:
    add sp, #16                 ; Move to the next pair of values on the stack
    b index_loop          ; Go back to the index loop

done_index:
    mov r7, #0                 ; Initialize the index to zero

print_loop:
    ldr r8, [sp, #24]          ; Load the current value from the stack
    ldr r9, [sp, #28]          ; Load the next value from the stack

    cmp r8, r9                 ; Compare the current value with the next value
    beq skip_print          ; If equal, skip the rest of the loop

    ldr r10, [sp, #32]         ; Load the format string from memory
    mov r11, #1                ; Set the number of arguments to 1
    mov r12, #0                ; Set the first argument to r8
    mov r13, #0                ; Set the second argument to r9
    bl printf                   ; Call printf with the format string and the arguments

skip_print:
    add sp, #32                 ; Move to the next pair of values on the stack
    b print_loop          ; Go back to the print loop

done_print:
    mov r7, #0                 ; Initialize the index to zero

while_loop:
    ldr r8, [sp, #40]          ; Load the current value from the stack
    ldr r9, [sp, #44]          ; Load the next value from the stack

    cmp r8, r9                 ; Compare the current value with the next value
    beq skip_while          ; If equal, skip the rest of the loop

    ldr r10, [sp, #50]         ; Load the condition expression from memory
    bl eval_condition          ; Call eval_condition with the condition expression

    cmp r11, #1                ; Check if the condition is true
    beq break_while          ; If true, break out of the loop

    add r7, r7, #1             ; Increment the index

skip_while:
    add sp, #32                 ; Move to the next pair of values on the stack
    b while_loop          ; Go back to the while loop

break_while:
    mov r7, #0                 ; Initialize the index to zero

end_loop:
    mov r7, #0                 ; Initialize the index to zero

exit:
    mov r0, #0                 ; Return 0 to indicate success
    swi 1                       ; Exit the program

eval_condition:
    ldr r8, [sp, #48]          ; Load the condition expression from memory
    bl evaluate_expression      ; Call evaluate_expression with the condition expression

    ret                        ; Return the result

evaluate_expression:
    ldr r9, [sp, #56]          ; Load the expression from memory
    bl parse_expression        ; Call parse_expression with the expression

    ret                        ; Return the result

parse_expression:
    ldr r10, [sp, #64]          ; Load the expression from memory
    bl tokenize_expression     ; Call tokenize_expression with the expression

    ret                        ; Return the result

tokenize_expression:
    ldr r11, [sp, #72]          ; Load the expression from memory
    bl split_expression       ; Call split_expression with the expression

    ret                        ; Return the result

split_expression:
    ldr r12, [sp, #80]          ; Load the expression from memory
    bl evaluate_token          ; Call evaluate_token with the token

    ret                        ; Return the result

evaluate_token:
    ldr r13, [sp, #88]          ; Load the token from memory
    ldr r14, [sp, #92]          ; Load the token type from memory

    cmp r14, #0                ; Check if the token type is an integer
    beq parse_integer         ; If true, parse the integer

    cmp r14, #1                ; Check if the token type is a float
    beq parse_float          ; If true, parse the float

    b error                   ; If neither, raise an error

parse_integer:
    ldr r15, [sp, #96]          ; Load the token from memory
    bl convert_to_int          ; Convert the token to an integer

    ret                        ; Return the result

convert_to_int:
    ldr r16, [sp, #104]          ; Load the token from memory
    bl parse_number           ; Parse the number

    ret                        ; Return the result

parse_float:
    ldr r17, [sp, #112]          ; Load the token from memory
    bl convert_to_float        ; Convert the token to a float

    ret                        ; Return the result

error:
    ldr r18, [sp, #120]          ; Load the error message from memory
    bl print_error          ; Print the error message

    ret                        ; Return the result

print_error:
    ldr r19, [sp, #128]          ; Load the format string from memory
    mov r20, #1                ; Set the number of arguments to 1
    mov r21, #0                ; Set the first argument to r18
    bl printf                   ; Call printf with the format string and the arguments

    ret                        ; Return the result
```

Please note that this is a very simplified version of the original code and does not include all the necessary functions for parsing expressions and evaluating them. It also does not handle all edge cases or optimizations that were present in the original x86 code. For a more complete implementation, you would need to expand the code to handle these additional aspects.