.equ ppg,3
.equ mpy,15000
.equ mpg,45
.data
  fuel: .long 0
  total: .long 0
  cost: .long 0
msg: .string "fuel: %i\n"
.text
 annual_fuel_consumed:
  mov $ppg,%eax
  mov $mpy,%ebx
  mul %ebx # edx:eax = eax * ebx
  mov $mpg, %ecx
  div %ecx # eax = edx:eax / ecx

  push %eax
  push $msg
  call printf
  add $8,%esp
  
 ret
 .globl main
main:
 call annual_fuel_consumed
 ret


