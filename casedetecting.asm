section .data
    prompt db "The Character is "
    promptlen equ $ -prompt
    char db "R"
    charlen equ $ -char
    lower db "Lowercase"
    lowerlen equ $ -lower
    upper db "Uppercase"
    upperlen equ $ -upper

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, promptlen
    syscall

    cmp BYTE [char], "Z"
    jle .uppersec
    ;lowersec
    mov rsi, lower
    mov rdx, lowerlen
    jmp .done

    .uppersec:
        mov rsi, upper
        mov rdx, upperlen
        jmp .done

    .done:
        mov rax, 1
        mov rdi, 1
        syscall

    mov rax, 60
    mov rdi, 0
    syscall


