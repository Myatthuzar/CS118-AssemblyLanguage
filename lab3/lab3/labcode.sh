docsml lab.doc
as -gstabs -o lab.o lab.s
ld -dynamic-linker /lib/ld-linux.so.2 -o labasm lab.o -lc -lX11
gcc -o labc lab3.c
