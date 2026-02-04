;	getting user input in asm
;	.bss section

section .bss
	char: resb 1

section	.text
	global _start

_start:
	mov rax, 0	;read syscall
	mov rdi, 1
	mov rsi, char
	mov rdx, 1
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, char
	mov rdx, 1
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
