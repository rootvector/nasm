;	storing user input in .data section

section .bss
	name: resb 32

section .data
	msg db "Enter Your Name "
	msglen equ $ -msg
	msg2 db "Your Name is "
	msg2len equ $ -msg2

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, msglen
	syscall

	mov rax, 0
	mov rdi, 1
	mov rsi, name
	mov rdx, 32
	syscall

;	mov myname, [name]
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 32
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
