# NASM x86 Assembly Programs

This repository contains **x86 (32-bit) and x86_64 (64-bit) Assembly programs** written using **NASM (Netwide Assembler)** on Linux.
The goal of this repository is to understand **low-level programming**, **CPU registers**, and **Linux system calls**.

---

## 👤 Author

* **Name:** rootvector
* **GitHub:** [https://github.com/rootvector](https://github.com/rootvector)
* **YouTube:** rootvector
* **Degree:** BTech CSE (1st Year)

---

## 🧠 Topics Covered

* NASM syntax
* x86 & x86_64 registers
* Linux system calls (syscalls)
* Assembling and linking
* Running ELF binaries

---

## 🔧 Requirements

* Linux OS (Kali / Ubuntu / Debian)
* NASM
* ld / gcc

### Install NASM

```bash
sudo apt update
sudo apt install nasm
```

---

## 📁 Repository Structure

```text
nasm/
├── hello.asm        # 64-bit assembly program
├── hello32.asm      # 32-bit assembly program
├── README.md
```

---

## ⚙️ Compilation & Execution

### ▶️ 64-bit x86_64 Assembly

#### Assemble

```bash
nasm -f elf64 hello.asm -o hello.o
```

#### Link

```bash
ld hello.o -o hello
```

#### Run

```bash
./hello
```

---

### ▶️ 32-bit x86 Assembly

#### Assemble

```bash
nasm -f elf32 hello32.asm -o hello32.o
```

#### Link

```bash
ld -m elf_i386 hello32.o -o hello32
```

#### Run

```bash
./hello32
```

⚠️ 32-bit programs may require 32-bit libraries on a 64-bit OS.

---

## 🧾 CPU Registers

### 🔹 64-bit Registers (x86_64)

| Register | Purpose                       |
| -------- | ----------------------------- |
| rax      | Syscall number / return value |
| rdi      | 1st argument                  |
| rsi      | 2nd argument                  |
| rdx      | 3rd argument                  |
| rcx      | Counter                       |
| rbx      | General purpose               |
| rsp      | Stack pointer                 |
| rbp      | Base pointer                  |
| rip      | Instruction pointer           |

---

### 🔹 32-bit Registers (x86)

| Register | Purpose                       |
| -------- | ----------------------------- |
| eax      | Syscall number / return value |
| ebx      | 1st argument                  |
| ecx      | 2nd argument                  |
| edx      | 3rd argument                  |
| esp      | Stack pointer                 |
| ebp      | Base pointer                  |
| eip      | Instruction pointer           |

---

## 🧠 Linux System Calls

### 🔸 x86_64 Syscalls

| Syscall | rax | Arguments                |
| ------- | --- | ------------------------ |
| write   | 1   | rdi=fd, rsi=buf, rdx=len |
| exit    | 60  | rdi=status               |

#### Example

```asm
mov rax, 1      ; sys_write
mov rdi, 1      ; stdout
mov rsi, msg
mov rdx, len
syscall
```

---

### 🔸 x86 (32-bit) Syscalls

| Syscall | eax | Arguments                |
| ------- | --- | ------------------------ |
| write   | 4   | ebx=fd, ecx=buf, edx=len |
| exit    | 1   | ebx=status               |

#### Example

```asm
mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, len
int 0x80
```

---

## 🧪 Debugging

Use **gdb** to debug assembly programs:

```bash
gdb ./hello
```

Useful commands:

```
break _start
run
stepi
info registers
```

---

## 🚀 Future Improvements

* More syscall examples
* Stack and function calls
* C + Assembly integration
* Exploit development basics

---

## 📜 License

This repository is intended for **educational purposes only**.

