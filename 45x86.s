To convert the given x86 assembly code to ARM assembly, we need to understand the differences between the two architectures and how their instruction sets work. Here's the equivalent ARM assembly code:

```arm
.global _start
.text
.bss
.align 2
.scnlen = . - _start
_start:
    mov r0, #1                  ; System call number (open)
    ldr r1, [._filename]        ; File name
    mov r2, #O_RDONLY            ; Open for reading
    swi 0                       ; Make system call

    cmp r0, #-1                 ; Check if file was opened successfully
    beq error                    ; Jump to error block if not

    mov r0, #2                  ; System call number (read)
    mov r1, r0                  ; File descriptor from open
    ldr r2, [._buffer]          ; Buffer to read into
    ldr r3, [._size]           ; Size of buffer
    swi 0                       ; Make system call

    cmp r0, #-1                 ; Check if read was successful
    beq error                    ; Jump to error block if not

    mov r0, #3                  ; System call number (close)
    mov r1, r0                  ; File descriptor from open
    swi 0                       ; Make system call

error:
    mov r7, #1                   ; System call number (exit)
    mov r0, #1                   ; Exit status
    swi 0                       ; Make system call
```

### Explanation:
1. **System Call Number**:
   - `mov r0, #1` - Opens the file.
   - `mov r0, #2` - Reads data from the file.
   - `mov r0, #3` - Closes the file.

2. **File Descriptor**:
   - The return value from an open syscall is used as the file descriptor in subsequent syscalls.

3. **Buffer and Size**:
   - `ldr r2, [._buffer]` - Loads the buffer address.
   - `ldr r3, [._size]` - Loads the size of the buffer.

4. **Error Handling**:
   - `cmp r0, #-1` - Checks if the system call returned an error.
   - `beq error` - If an error occurred, jumps to the error label.

5. **Exit**:
   - `mov r7, #1` - Sets the system call number to exit.
   - `mov r0, #1` - Sets the exit status to 1 (indicating an error).

This ARM code performs similar tasks as the original x86 code but uses different registers and system calls for each operation.