%include "Macro/io.asm"

section .data
    char db "R"
    charlen equ $ - char
    msg db "The Letter is: "
    msglen equ $ - msg
    upper db "UPPERCASE"
    upperlen equ $ - upper
    lower db "LOWERCASE"
    lowerlen equ $ - lower

section .text
    global _start

_start:
    cmp BYTE [char], "Z"
    jle .uppercase
    ;lowercase logic
        print lower, lowerlen
        jmp .done
    .uppercase:
        print upper, upperlen
        jmp .done
    .done:
        exit 1

