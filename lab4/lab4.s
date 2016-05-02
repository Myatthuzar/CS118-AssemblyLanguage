.equ flase,0
.equ true,1

.data
r: .float 2.0
f: .float 0.0
fmt: .string "%f\n"

.text
sqr:
  flds 4(%esp)
  flds 4(%esp)
  fmul %ST(1),%ST(0)
  ret
odd:
  ret
power:
 flds r
 ret

.globl _start

_start:
	push $9
	push r
	call power
	add $8, %esp

	fstps f
#to try the square function
	push r 
	call sqr
	add $4, %esp
#to try printf - to push 64-bit vlaue instead of 32
		
	sub $8, %esp
	fstps (%esp)

	push $fmt
	call printf
	add $12, %esp #1 32-bit param, 1 64-bit param = 12 bytes
	mov $1,%eax
	mov $0,%ebx
	int $0x80
