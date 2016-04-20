docsml lab3.doc
as -gstabs -o lab.o lab3.s
ld -dynamic-linker /lib/ld-linux.so.2 -o labasm lab.o -lc -lX11
gcc -Wall -o labc lab3.c

