section .data
msg db "section .data%3$cmsg db %2$c%s%2$c,0%3$cfileName db %2$cSully_%4$cd.s%2$c, 0%3$ccompile db %2$cnasm -f elf64 Sully_%4$c1$d.s -o Sully_%4$c1$d.o%2$c, 0%3$cgcc db %2$cgcc -Wall -Wextra -Werror -no-pie Sully_%4$c1$d.o -o Sully_%4$c1$d%2$c, 0%3$cexe db %2$c./Sully_%4$cd%2$c, 0%3$cx db %5$d%3$c%3$csection .bss%3$cformattedFileName resb 20%3$cformattedCompile resb 50%3$cformattedGcc resb 50%3$cformattedExe resb 50%3$c%3$csection .text%3$cglobal main%3$cextern sprintf, dprintf, system%3$c%3$c%4$cmacro create 2%3$c    push rbp%3$c    mov rbp, rsp%3$c    lea rdi, [%4$c1]%3$c    lea rsi, [%4$c2]%3$c    movzx rdx, byte [x]%3$c    call sprintf%3$c    mov rsp, rbp%3$c    pop rbp%3$c%3$c    push rbp%3$c    mov rbp, rsp%3$c    lea rdi, [%4$c1]%3$c    call system%3$c    mov rsp, rbp%3$c    pop rbp%3$c%4$cendmacro%3$c%3$cexecve:%3$c    create formattedCompile, compile%3$c    create formattedGcc, gcc%3$c    create formattedExe, exe%3$c    ret%3$c%3$cmain:%3$c    push rbp%3$c    mov rbp, rsp%3$c    dec byte [x]%3$c    lea rdi, [formattedFileName]%3$c    lea rsi, [fileName]%3$c    movzx rdx, byte [x]%3$c    call sprintf%3$c    mov rsp, rbp%3$c    pop rbp%3$c%3$c    mov rax, 2%3$c    mov rdi, formattedFileName%3$c    mov rsi, 0102o%3$c    mov rdx, 00600o%3$c    syscall%3$c%3$c    push rbp%3$c    mov rbp, rsp%3$c    mov rdi, rax%3$c    lea rsi, [msg]%3$c    lea rdx, [msg]%3$c    mov rcx, 34%3$c    mov r8, 10%3$c    mov r9, 37%3$c    sub rsp, 8%3$c    movzx rbx, byte [x]%3$c    push rbx%3$c    call dprintf%3$c    add rsp, 8%3$c    mov rsp, rbp%3$c    pop rbp%3$c%3$c    cmp byte [x], 0%3$c    jg execve%3$c    ret",0
fileName db "Sully_%d.s", 0
compile db "nasm -f elf64 Sully_%1$d.s -o Sully_%1$d.o", 0
gcc db "gcc -Wall -Wextra -Werror -no-pie Sully_%1$d.o -o Sully_%1$d", 0
exe db "./Sully_%d", 0
x db 5

section .bss
formattedFileName resb 20
formattedCompile resb 50
formattedGcc resb 50
formattedExe resb 50

section .text
global main
extern sprintf, dprintf, system

%macro create 2
    push rbp
    mov rbp, rsp
    lea rdi, [%1]
    lea rsi, [%2]
    movzx rdx, byte [x]
    call sprintf
    mov rsp, rbp
    pop rbp

    push rbp
    mov rbp, rsp
    lea rdi, [%1]
    call system
    mov rsp, rbp
    pop rbp
%endmacro

execve:
    create formattedCompile, compile
    create formattedGcc, gcc
    create formattedExe, exe
    ret

main:
    push rbp
    mov rbp, rsp
    dec byte [x]
    lea rdi, [formattedFileName]
    lea rsi, [fileName]
    movzx rdx, byte [x]
    call sprintf
    mov rsp, rbp
    pop rbp

    mov rax, 2
    mov rdi, formattedFileName
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
    sub rsp, 8
    movzx rbx, byte [x]
    push rbx
    call dprintf
    add rsp, 8
    mov rsp, rbp
    pop rbp

    cmp byte [x], 0
    jg execve
    ret