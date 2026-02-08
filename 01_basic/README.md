# NASM x86-64 – Lesson 01  
## Your First Assembly Program (Linux)

Welcome 👋  
This repository is part of a **from-scratch journey into x86-64 Assembly using NASM on Linux**.

No magic.  
No `main()`.  
No `printf()`.

Just **you**, **the CPU**, and **the OS**.

---

## What We’re Learning (No Pressure)

We’ll be using:

- **NASM** (Netwide Assembler)
- **x86-64 architecture**
- **Linux**
- Programs that run in the **terminal**

Assembly talks **directly to the operating system**, so things work a little differently than in high-level languages.

---

## How a Program Really Runs

### In high-level languages (C, C++, etc.)
```
main() → code → exit
```

### In Assembly (Linux)
```
_start → syscalls → exit
```

There is **no `main()`**.

Linux starts your program at a label called **`_start`**.

---

## Lesson 01: Your FIRST Assembly Program

Goal: **Print text to the terminal**.  
That’s it. Simple and powerful.

---

## Step 1: Create the File

```bash
nvim hello.asm
```

---

## Step 2: Write the Code

```asm
section .data
    msg db "Hello, Assembly!", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1      ; sys_write
    mov rdi, 1      ; stdout
    mov rsi, msg    ; address of message
    mov rdx, len    ; length
    syscall

    mov rax, 60     ; sys_exit
    mov rdi, 0      ; exit code 0
    syscall
```

---

## Compile & Run

```bash
nasm -f elf64 hello.asm
ld hello.o -o hello
./hello
```

Expected output:

```
Hello, Assembly!
```

---

## Mini Practice

- Change the message text
- Add another newline
- Print your name

---

Welcome to the **bare metal mindset** 🧠⚙️
