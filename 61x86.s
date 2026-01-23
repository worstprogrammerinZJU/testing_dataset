Here is the equivalent ARM assembly code:

```arm
    .section ".text", "ax"
    .global cmp                            ## -- Begin function cmp
cmp:                                   ## @cmp
    push {lr}                             ## Save return address
    mov r1, sp                            ## Move stack pointer to r1
    ldr r0, [r1], #4                       ## Load first integer from memory into r0
    mov r1, [r1]                            ## Move second integer from memory into r1
    cmpl r0, r1                         ## Compare r0 and r1
    movltne r1, #0                         ## If r0 is not equal to r1, set r1 to 0
    movtne r1, #0                         ## If r0 is not equal to r1, set r1 to 0
    pop {pc}                             ## Restore return address
    .global main                           ## -- Begin function main
main:                                  ## @main
    push {lr}                             ## Save return address
    mov r1, sp                            ## Move stack pointer to r1
    lea r0, [main+16]                     ## Load string for scanf into r0
    lea r1, [main+20]                     ## Load string for printf into r1
    mov r2, #0                             ## Initialize r2 to 0
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+32]                     ## Load string for printf into r2
    bl printf                             ## Call printf
    inc r2                                ## Increment r2
    cmp r2, #0                             ## Check if r2 is less than or equal to 0
    bge LBB1_16                           ## If r2 is greater than or equal to 0, jump to LBB1_16
    lea r2, [main+44]                     ## Load variable speed into r2
    mov r3, #4000                          ## Set value of speed
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+56]                     ## Load array n into r2
    lea r3, [main+60]                     ## Load array speed into r3
    bl qsort                               ## Call qsort
    cmp r2, #0                             ## Check if qsort returned 0
    beq LBB1_16                           ## If qsort returned 0, jump to LBB1_16
    lea r2, [main+72]                     ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+84]                     ## Load array speed into r2
    bl qsort                               ## Call qsort
    cmp r2, #0                             ## Check if qsort returned 0
    beq LBB1_16                           ## If qsort returned 0, jump to LBB1_16
    lea r2, [main+96]                     ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+108]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+120]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+132]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+144]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+156]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+168]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+180]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+192]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+204]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+216]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+228]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+240]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+252]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+264]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+276]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+288]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16                           ## If scanf returned 0, jump to LBB1_16
    lea r2, [main+300]                    ## Load variable n into r2
    bl scanf                               ## Call scanf
    cmp r2, #0                             ## Check if scanf returned 0
    beq LBB1_16