Here is the equivalent ARM assembly code for the given x86 assembly code:

```arm
.global _start

_start:
    mov r7, #4
    ldr r0, [pc, #4]           // Load the string address into r0
    bl printf                      // Call the printf function with r0 as the argument

    b .end

.printf:
    mov r7, #2                  // System call number for printf
    mov r0, r1                  // First argument (format string)
    mov r1, r2                  // Second argument (number to print)
    svc #0                         // Make the system call

.end:
```

Please note that this is just an example and may not perfectly match the original x86 assembly code due to differences in calling conventions and addressing modes between ARM and x86 architectures. The actual implementation may require additional adjustments based on the specific requirements of your application.