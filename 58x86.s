Here is the equivalent ARM assembly code:

```arm
.global _start
.text
    .arch armv7-a
    .thumb
    .section ".data"
    .bss
    .globl main
main:
    push {r4, r5, r6, lr}
    mov sp, #stack_top
    ldr r4, =scanf
    ldr r5, =buffer
    ldr r6, =newline
    ldr r7, =printf
    bl r4, r5, r6
    cmp r5, #0
    ble done
    ldr r4, =format1
    ldr r5, =buffer
    bl r7, r4, r5
    ldr r4, =newline
    add r5, r5, #1
    b next
done:
    ldr r4, =format2
    ldr r5, =buffer
    bl r7, r4, r5
    ldr r4, =newline
next:
    ldr r4, =scanf
    ldr r5, =buffer
    bl r4, r5, r6
    cmp r5, #0
    ble exit
    ldr r4, =format3
    ldr r5, =buffer
    bl r7, r4, r5
    add r5, r5, #1
    b next
exit:
    ldr r4, =puts
    ldr r5, =buffer
    bl r4, r5, r6
    pop {r4, r5, r6, pc}
.stack_top equ 0x10000000
buffer: .space 100
newline: .asciz "\n"
format1: .asciz "%d\n"
format2: .asciz "%d%d\n"
format3: .asciz "%d\n"
```

Please note that this is a simplified version and does not include error checking for buffer overflows or invalid inputs. It also assumes that `scanf` and `printf` are available in the system's C library. Also, it uses a simple stack-based approach and may not be suitable for large inputs. For production use, consider using more robust libraries and data structures.