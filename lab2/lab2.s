.equ x,2
.section .rodata
y: .long 3
.bss
.comm t,4
.data
w: .long 6
.text
.globl main
main:
 .section .rodata
 msg: .string "r=%i\n"
.data
s:.long 5
 .text
sub $4,%esp # make room on stack for local variable
movl $x,(%esp) #derefrence the point just like asteroid in CPP.
mov y,%eax
add %eax,(%esp)
mov (%esp),%ebx #ebx now has 5
mov $4,%ebx
add %ebx,(%esp)
mov (%esp),%edx #edx now has 9
mov s,%ebx
add %ebx,(%esp)
mov (%esp),%edx #edx now has 14

mov w,%ebx
add %ebx,(%esp)
mov (%esp),%edx #edx now has 20
 push (%esp)
 push $msg
 call printf
 add $8, %esp #clean up stack parameters
 add $4, %esp #clean up  local parameters
 ret

