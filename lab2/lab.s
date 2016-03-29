	.file	"lab.c"
	.globl	y
	.section	.rodata
	.align 4
	.type	y, @object
	.size	y, 4
y:
	.long	3
	.comm	t,4,4
	.globl	w
	.data
	.align 4
	.type	w, @object
	.size	w, 4
w:
	.long	6
	.section	.rodata
.LC0:
	.string	"r=%i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$16, %esp
	movl	$4, %ebx
	movl	$3, %eax
	addl	$2, %eax
	addl	%ebx, %eax
	movl	%eax, -12(%ebp)
	movl	s.1851, %eax
	addl	%eax, -12(%ebp)
	movl	w, %eax
	addl	%eax, -12(%ebp)
	subl	$8, %esp
	pushl	-12(%ebp)
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.data
	.align 4
	.type	s.1851, @object
	.size	s.1851, 4
s.1851:
	.long	5
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
