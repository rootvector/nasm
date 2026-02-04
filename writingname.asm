section .data
	name db "rootvector"
	nlen equ $ -name

section .text
	global _start

_start:
	mov rax, 1	;write syscall
	mov rdi, 1
	mov rsi, name
	mov rdx, nlen
	syscall

	mov rax, 60 	;exit syscall
	mov rdi, 0
	syscall
