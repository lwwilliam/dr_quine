section .data
msg db "section .data%3$cmsg db %2$c%s%2$c,0%3$c%3$csection .text%3$cglobal main%3$cextern printf%3$c%3$c; comment%3$cmain:%3$c    ; comment in main%3$c    push rbp%3$c    mov rbp, rsp%3$c    lea rdi, [msg]%3$c    lea rsi, [msg]%3$c    mov rdx, 34%3$c    mov rcx, 10%3$c    call printf%3$c    call function%3$c%3$c    mov rsp, rbp%3$c    pop rbp%3$c    ret%3$c%3$cfunction:%3$c    ret",0

section .text
global main
extern printf

; comment
main:
    ; comment in main
    push rbp
    mov rbp, rsp
    lea rdi, [msg]
    lea rsi, [msg]
    mov rdx, 34
    mov rcx, 10
    call printf
    call function

    mov rsp, rbp
    pop rbp
    ret

function:
    ret