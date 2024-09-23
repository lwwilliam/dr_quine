section .data
msg db 'section .data',10,'msg db',10,'len equ $ - msg',10,10, 'section .text',10,'global main',10,10,59,' comment',10,'main:',10,'    ',59,' comment in main',10,'    mov rax, 1',10,'    mov rdi, 1',10,'    mov rsi, msg',10,'    mov rdx, len',10,'    syscall',10,10,'    ',59,' exit the program',10,'    mov rax, 60',10,'    xor rdi, rdi',10,'    syscall',0xa
len equ $ - msg

section .text
global main

; comment
main:
    ; comment in main
    mov rax, 1
    mov rdi, 1          ; file descriptor 1 is stdout
    lea rsi, msg        ; pointer to the message
    mov rdx, len        ; length of the message
    syscall

    ; exit the program
    mov rax, 60         ; syscall number for sys_exit
    xor rdi, rdi        ; exit code 0
    syscall