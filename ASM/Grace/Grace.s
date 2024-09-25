%define GLOBAL global main

%macro macro 0
section .data
msg db "%4$cdefine GLOBAL global main%3$c%3$c%4$cmacro macro 0%3$csection .data%3$cmsg db %2$c%s%2$c,0%3$cfileName db %2$cGrace_kid.s%2$c,0%3$c%3$csection .text%3$cGLOBAL%3$cextern dprintf%3$c%3$c; comment%3$cmain:%3$c    mov rax, 2%3$c    mov rdi, fileName%3$c    mov rsi, 0102o%3$c    mov rdx, 00600o%3$c    syscall%3$c%3$c    push rbp%3$c    mov rbp, rsp%3$c    mov rdi, rax%3$c    lea rsi, [msg]%3$c    lea rdx, [msg]%3$c    mov rcx, 34%3$c    mov r8, 10%3$c    mov r9, 37%3$c    call dprintf%3$c    mov rsp, rbp%3$c    pop rbp%3$c    ret%3$c%4$cendmacro%3$c%3$cmacro",0
fileName db "Grace_kid.s",0

section .text
GLOBAL
extern dprintf

; comment
main:
    mov rax, 2
    mov rdi, fileName
    mov rsi, 0102o
    mov rdx, 00600o
    syscall

    push rbp
    mov rbp, rsp
    mov rdi, rax
    lea rsi, [msg]
    lea rdx, [msg]
    mov rcx, 34
    mov r8, 10
    mov r9, 37
    call dprintf
    mov rsp, rbp
    pop rbp
    ret
%endmacro

macro