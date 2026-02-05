;sys_write macro
;macro created for print statements
%macro print 2
    mov rax, 1
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

;sys_read macro
;macro created for scan statements
%macro scan 2
    mov rax, 0
    mov rdi, 1
    mov rsi, %1
    mov rdx, %2
    syscall
%endmacro

;sys_exit macro
;macro created for exit statements
%macro exit 1
    mov rax, 60
    mov rdi, %1
    syscall
%endmacro

