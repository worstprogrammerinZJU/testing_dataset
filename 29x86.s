    .section __TEXT,.text,regular,pure_instructions
    .build_version macos, 15, 0 sdk_version 15, 5
    .globl _main                           ## -- Begin function main
    .p2align 4, 0x90
_main:                                  ## @main
## %bb.0:
    mov r0, #500024                     ## imm = 0x7A138
    bl ___chkstk_darwin
    sub sp, sp, r0
    mov r0, ___stack_chk_guard             ## imm = 0x7A138
    ldr r0, [r0]
    cmp r0, -48
    bne _end_loop
## %bb.1:
    ldr r3, L_.str                      ## @.str
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    cmp r0, #0
    beq _end_loop
## %bb.2:
    ldr r3, L_.str                      ## @.str
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Spill
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.3:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.4:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.5:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.6:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.7:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.8:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.9:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.10:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.11:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.12:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.13:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.14:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
    ble _end_loop
## %bb.15:
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    ldr r2, [sp, #-500052]             ## 4-byte Reload
    mov r0, #5
    ldr r1, L_.str.1                    ## @.str.1
    svc 0                                   ## syscall 0 (scanf)
    and r1, r1, #0xFFFFFFF
   