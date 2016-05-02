docsml lab4.doc
as -gstabs -o lab.o lab4.s
ld -dynamic-linker /lib/ld-linux.so.2 -o labasm lab.o -lc -lX11
#gcc -Wall -g -o labc lab4.c

