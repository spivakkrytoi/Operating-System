nasm -f elf32 ./boot/boot.asm -o boot.o
gcc -m32 -c ./kernel/header.c -o kernel.o

ld -m elf_i386 -T link.ld -o kernel boot.o krnl.o

