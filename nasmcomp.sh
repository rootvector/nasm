echo "[*] Compiling the $1..."
nasm -f elf64 $1 -o executables/$2.o

echo "[*] Linking $2..."
ld executables/$2.o -o executables/$2

echo ""
echo "[*] Exetuting executables/$2...."
./executables/$2
