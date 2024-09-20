section .data
msg db 'Hello, world!', 0xa;
len equ $ - msg

section .text
global _start

_start:
    ; calculate the length of string
    mov rdi, msg
    mov rdx, len
    mov rax, 1

    syscall