.text
.globl _start
_start:
push $198
push $558
call euclid
add $8, %esp #two of them 4 bytes each
.data
fmt: .string "GCD output = %d\n"
.text
push %eax
push $fmt
call printf
add $8, %esp
mov $1,%eax
mov $0,%ebx
int $0x80
euclid:
push %ebp

mov %esp,%ebp
mov 12(%ebp),%eax
cmp $0,%eax
jle else
mov 12(%ebp), %ebx
mov 8(%ebp), %eax
mov $0, %edx # clear upper 32 bits of the 64-bit divident edx:eax
idiv %ebx # modulus is in edx (quotient is in eax)
push  %edx
push %ebx
call euclid
add $8,%esp
jmp endif
else:
mov 8(%ebp),%eax
endif: 
mov %ebp,%esp
pop %ebp
ret 
