Here is the equivalent ARM assembly code:

```arm
.global _start
_start:
    push {r4-r12}
    mov sp, #0x1000  // Set stack pointer
    ldr r0, [__stack_chk_guard]  // Load stack guard value from GOT
    mov r1, r0  // Move stack guard value to r1
    sub sp, #16  // Reserve space for return address and local variables
    mov r2, #0  // Initialize loop counter r2
loop1:
    ldrb r3, [r1]  // Load byte from input buffer
    sub r3, #97  // Convert ASCII character to integer
    add r4, #48  // Convert ASCII character to integer
    strb r4, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
    cmp r2, #26  // Check if all bytes have been processed
    bne loop1  // Continue looping if not all bytes have been processed
loop2:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'A'
    beq skip_loop2  // Skip processing if character is 'A'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop2:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'B'
    beq skip_loop3  // Skip processing if character is 'B'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop3:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'C'
    beq skip_loop4  // Skip processing if character is 'C'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop4:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'D'
    beq skip_loop5  // Skip processing if character is 'D'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop5:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'E'
    beq skip_loop6  // Skip processing if character is 'E'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop6:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'F'
    beq skip_loop7  // Skip processing if character is 'F'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop7:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'G'
    beq skip_loop8  // Skip processing if character is 'G'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop8:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'H'
    beq skip_loop9  // Skip processing if character is 'H'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop9:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'I'
    beq skip_loop10  // Skip processing if character is 'I'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop10:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'J'
    beq skip_loop11  // Skip processing if character is 'J'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop11:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'K'
    beq skip_loop12  // Skip processing if character is 'K'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop12:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'L'
    beq skip_loop13  // Skip processing if character is 'L'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r5, [r1]  // Store result back to input buffer
    add r1, #1  // Increment input buffer pointer
skip_loop13:
    ldrb r3, [r1]  // Load byte from input buffer
    cmp r3, #25  // Check if character is 'M'
    beq skip_loop14  // Skip processing if character is 'M'
    ldrb r4, [r1]  // Load next byte from input buffer
    sub r4, #97  // Convert ASCII character to integer
    add r5, #65  // Convert ASCII character to integer
    strb r