Here is the equivalent ARM assembly code:

```arm
.global _start
.text

_start:
    push {lr}
    mov sp, lr
    bl scanf
    cmp r0, #0
    bge end_scanf

    lea r0, [._str]
    bl printf

    lea r0, [._str1]
    bl printf

    lea r0, [._str2]
    bl printf

end_scanf:
    push {lr}
    mov sp, lr
    bl _exit

_str:
    .asciz "%d"
_str1:
    .asciz "%s"
_str2:
    .asciz "%d.%d.%d.%d\n"

```

Note that this assumes you have some libraries and functions like `scanf`, `printf`, `_exit` defined in your environment. Also, ARM assembly syntax is quite different from x86 assembly, so there are some differences in how things are done.