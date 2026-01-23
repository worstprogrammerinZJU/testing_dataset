The given x86 assembly code performs various operations such as reading input from the user, sorting an array, and printing output. Below is the equivalent ARM assembly code:

```arm
.global _start                            # -- Begin function _start
    mov r0, #1                            # syscall number for write (stdout)
    ldr r1, =message                     # address of message
    ldr r2, =strlen(message)              # length of message
    bl syscall                          # call kernel to write string

    ldr r0, =prompt                       # prompt message
    bl syscall                          # call kernel to print prompt

    ldr r1, =array                        # address of array
    ldr r2, =count                        # size of array
    bl sort_array                         # call sort_array function

    ldr r0, =output                       # output message
    bl syscall                          # call kernel to print output

    b exit                                # end program

_sort_array:
    push {lr}                             # save return address
    mov r1, r0                            # r1 points to array
    mov r2, r1                            # r2 points to array
    mov r3, r2                            # r3 points to array
    mov r4, #0                            # loop counter
    mov r5, #0                            # swap counter

sort_loop:
    cmp r4, r3                            # compare indices
    bge done                              # if indices are equal, break

    ldr r6, [r1, r4]                     # load element at index r4
    ldr r7, [r1, r5]                     # load element at index r5
    cselt r6, r7, r7, r6                  # if r6 < r7, swap elements
    str r6, [r1, r4]                     # store swapped element at index r4
    str r7, [r1, r5]                     # store original element at index r5
    add r4, #1                            # increment index r4
    add r5, #1                            # increment index r5
    b sort_loop                           # continue sorting

done:
    pop {pc}                             # restore return address

_exit:
    mov r0, #0                            # syscall number for exit
    ldr r1, =status                       # address of status variable
    bl syscall                          # call kernel to exit with status

.message:                                 # message to be printed
    .asciz "Enter numbers: "

.prompt:                                    # prompt message
    .asciz "Enter numbers: \n"

.output:                                   # output message
    .asciz "%f\n"

.status:                                   # status variable
    .word 0
```

### Explanation:
1. **System Calls**: The `syscall` instruction is used to make system calls in ARM.
   - Writing to stdout (`write`) uses `sys_write`.
   - Reading from stdin (`read`) uses `sys_read`.

2. **Sorting Array**: The `_sort_array` function sorts an array using the bubble sort algorithm. It iterates through the array, compares adjacent elements, and swaps them if they are out of order.

3. **Output**: The `_exit` function exits the program with a specified status code.

### Note:
- The `__stack_chk_guard`, `__stack_chk_fail`, and `printf` functions are assumed to be defined elsewhere in the code.
- The `message`, `prompt`, `output`, and `status` variables are assumed to be defined elsewhere in the code.
- The `array` and `count` variables are assumed to be defined elsewhere in the code.