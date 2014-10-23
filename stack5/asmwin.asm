.section .data
    msg:
        .ascii "you win!"
.section .text
.globl _start
    _start:
        movl $4, %eax      # sys_write system call
        movl $1, %ebx      # Output file descriptor (stdout)
        movl $msg, %ecx    # String to print
        movl $8, %edx      # Length of the string
        int $0x80          # Make system call
        movl $1, %eax      # sys_exit system call
        movl $0, %ebx      # return value (0)
        int $0x80          # Make system call
