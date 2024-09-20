section .data
msg db 'Hello',13,10,'world!',13,10,'$', 0xa
len equ $ - msg

section .text
global _start

; comment
_start:
    ; comment in main
    mov rax, 1
    mov rdi, 1          ; file descriptor 1 is stdout
    mov rsi, msg        ; pointer to the message
    mov rdx, len        ; length of the message
    syscall

    ; exit the program
    mov rax, 60         ; syscall number for sys_exit
    xor rdi, rdi        ; exit code 0
    syscall