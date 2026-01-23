Here is the ARM assembly equivalent of your x86 assembly code:

```arm
    .section __TEXT,__text,regular,pure_instructions
    .build_version macos, 15, 0 sdk_version 15, 5
    .section __TEXT,__literal16,16byte_literals
    .p2align 4, 0x0                          ## -- Begin function main
LCPI0_0:
    .long 1                               ## 0x1
    .long 2                               ## 0x2
    .long 4                               ## 0x4
    .long 6                               ## 0x6
    .section __TEXT,__text,regular,pure_instructions
    .globl _main
    .p2align 4, 0x90
_main:                                  ## @main
    push {lr}                             ## Save link register
    mov sp, lr                            ## Set stack pointer to link register
    push {fp}                             ## Save frame pointer
    sub sp, #824                           ## Subtract stack size from stack pointer
    ldr rax, =___stack_chk_guard          ## Load address of stack check guard into rax
   ldr rax, [rax]                        ## Load value of stack check guard from memory
    mov rax, rax                         ## Duplicate rax
    str rax, [sp, #-32]                  ## Store value of stack check guard at offset -32 in stack
    lea rdi, [sp, #-832]                 ## Load address of array at offset -832 in stack into rdi
    mov rsi, #800                         ## Load value 800 into rsi
    call _bzero                          ## Call bzero function
    vld1.32 {d0-d3}, [sp, #-832]        ## Load values from array at offset -832 in stack into d0-d3 registers
    mov rax, #6                           ## Move value 6 into rax
    xor ecx, ecx                         ## Clear ecx register
    .p2align 4, 0x90
.LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
    add rax, #828                         ## Add value 828 to rax
    add rax, #832                         ## Add value 832 to rax
    cltq                                ## Convert rax to signed integer
    imul rdx, #137096213                ## Multiply rdx by 137096213
    mov rsi, rdx                         ## Move value of rdx into rsi
    shr rsi, #63                         ## Shift right rsi by 63 bits
    sar rdx, #38                         ## Shift right rdx by 38 bits
    add rdx, rsi                         ## Add value of rsi to rdx
    imul edx, #2005                       ## Multiply edx by 2005
    sub rax, edx                         ## Subtract value of edx from rax
    mov rax, rax                         ## Duplicate rax
    stl rax, [sp, #-(816 + ecx * 4)]   ## Store value of rax at offset -(816 + ecx * 4) in stack
    inc ecx                              ## Increment ecx
    cmp ecx, #196                         ## Compare ecx with 196
    jne .LBB0_1                           ## Jump if not equal
.LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
    lea rdi, [sp, #-(836)]              ## Load address of string "Enter number:" into rdi
    lea rsi, [sp, #-(836)]              ## Load address of string "Enter another number:" into rsi
    xor eax, eax                         ## Clear eax register
    bl scanf                            ## Call scanf function
    cmp eax, #-1                          ## Compare eax with -1
    je .LBB0_5                           ## Jump if equal
.LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
    lea rdi, [sp, #-(836)]              ## Load address of string "You entered:" into rdi
    lea rsi, [sp, #-(836)]              ## Load address of string "You entered:" into rsi
    xor eax, eax                         ## Clear eax register
    bl printf                            ## Call printf function
    mov r14, [sp, #-(836)]              ## Load address of string "Enter another number:" into r14
    mov r15, [sp, #-(836)]              ## Load address of string "Enter another number:" into r15
    bl scanf                            ## Call scanf function
    cmp eax, #-1                          ## Compare eax with -1
    jne .LBB0_4                           ## Jump if not equal
.LBB0_5:
    ldr rax, =___stack_chk_guard          ## Load address of stack check guard into rax
    ldr rax, [rax]                        ## Load value of stack check guard from memory
    cmp rax, [sp, #-(32)]                ## Compare rax with value at offset -32 in stack
    jne .LBB0_7                           ## Jump if not equal
.LBB0_6:
    xor eax, eax                         ## Clear eax register
    add rsp, #824                           ## Add stack size to stack pointer
    mov fp, lr                            ## Restore frame pointer
    pop lr                               ## Restore link register
    retq
.LBB0_7:
    bl ___stack_chk_fail                    ## Call stack check fail function
                                        ## -- End function
    .section __TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
    .asciz "%d"

L_.str.1:                               ## @.str.1
    .asciz "%d\n"
```

Please note that this is a simplified version and may need adjustments based on specific requirements or platform differences. Also, the `scanf` and `printf` functions are assumed to be available in the ARM environment.