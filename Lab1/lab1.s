.equ ppg,3 
.equ mpy,15000
.equ mpg,45
.data
  fuel: .long 0
  total: .long 0
  cost: .long 0
msg: .string "Total cost: %i\n"
.text
  annual_fuel_consumed:
  mov $ppg,%eax 
  mov $mpy,%ebx 
  mul %ebx 
  # edx:eax = eax * ebx
  mov $mpg, %ecx
  div %ecx 
  # eax = edx:eax / ecx
  ret
  operating_cost:
  #now eax is 1000
  mov $10, %ebx
  mul %ebx 
  # eax is 10000
  ret
  total_cost:
  mov $25000, %ebx
  add %ebx,%eax 
  # eax is 35000
  ret
  #below code is to print out
  push %eax
  push $msg
  call printf
  add $8,%esp 
  #below code is for return function
 ret
 .globl main
main:
 call annual_fuel_consumed
 call operating_cost
 call total_cost
 ret
