nasm -f elf64 $1 -o $2.o

ld $2.o -o $2
