
# Lesson 2: Registers and Numbers (NASM x86-64)

## What You Will Learn
- What registers are
- Common x86-64 registers
- Moving numbers into registers
- Simple arithmetic
- Printing numbers (basic concept)

---

## 1. What is a Register?
A register is a **very small and very fast storage location inside the CPU**.

Think of it like:
- Variables in C
- But limited in number
- And extremely fast

Example:
```asm
mov rax, 5
```
This stores the number `5` inside register `rax`.

---

## 2. Important x86-64 Registers

| Register | Purpose |
|--------|--------|
| rax | Main register (math + syscalls) |
| rbx | General purpose |
| rcx | Counter |
| rdx | Data / remainder |
| rsi | Source pointer |
| rdi | Destination pointer |
| rsp | Stack pointer |
| rbp | Base pointer |

You don't need all of them yet.  
For now, focus on **rax, rbx, rcx, rdx**.

---

## 3. Moving Numbers

```asm
mov rax, 10
mov rbx, 20
```

Now:
- rax = 10
- rbx = 20

---

## 4. Simple Arithmetic

### Addition
```asm
add rax, rbx
```
Result:
- rax = rax + rbx

### Subtraction
```asm
sub rax, 5
```

### Multiplication
```asm
mov rax, 6
mov rbx, 7
mul rbx
```
Result stored in:
- rax (lower part)

---

## 5. Your First Math Program

### Goal
Add two numbers and exit.

```asm
section .text
global _start

_start:
    mov rax, 10
    mov rbx, 20
    add rax, rbx

    mov rax, 60
    mov rdi, 0
    syscall
```

Run it:
```bash
nasm -f elf64 lesson2.asm
ld lesson2.o -o lesson2
./lesson2
```

(No output yet — we’ll print numbers next lesson.)

---

## Practice Tasks
1. Change numbers and re-run
2. Try subtraction
3. Try multiplication

---

## What You Learned
- Registers are CPU variables
- Basic arithmetic
- Program flow

---

## Next Lesson
Lesson 3: Printing Numbers + User Input
