.data
fmt: .string “GCD output = %d\n”

.text _start
push $198
push $558
call Euclid

add $8, %esp
push %eax
push $fmt
call printf
add $8, %esp

add $8,%esp
mov $1,%eax
mov $0,%ebx
int $0x80	euclid:
push %ebp
mov %esp, %ebp
mov 12(%ebp),%eax
cmp $0,%eax
jle else

mov 12(%ebp),%ebx
mov 8(%ebp),%eax
mov $0,%esx
idiv %ebx
push %edx
push %ebx

call Euclid
add $8, %esp
jmp endif

else:
mov 8(%ebp),%eax
endif:
mov %ebp,%esp
pop %ebp
ret






