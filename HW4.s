.data

  NL: .asciz "\n"
  
  comma: .asciz ", "
  
  enterNum: .asciz "Please enter a number as input: "

  inPrompt1: .asciz "Please enter the index of first bit to be swapped: "

  inPrompt2: .asciz "Please enter the index of second bit to be swapped: "
  
  output: .asciz "The two numbers produced are: "

#Macro for printing string

.macro print_str(%label)

  la a0, %label

  addi a7, zero, 4

  ecall
  
.end_macro

#Macro for prnting integers

.macro print_int(%intLoc)

  addi a7, zero, 1
  add a0, zero, %intLoc
  ecall

.end_macro

#Macro that takes in the integer

.macro input_int(%destination)

  addi a7, zero, 5
  
  ecall
  
  add %destination, zero, a0
  
.end_macro

#Macro that swaps a bit

.macro swap_bit(%input, %index1, %index2)

  add s3, zero, %input
  
  #?
 
.end_macro





.text

  print_str(NL)
  print_str(enterNum)
  input_int(s0) #starting int
  
  print_str(NL)
  print_str(inPrompt1)
  input_int(s1) #first index
  
  print_str(NL)
  print_str(inPrompt2)
  input_int(s2) #second index
  
  swap_bit(s0, s1, s2)
  print_str(NL)
  print_str(output)
  print_int(s0)
  print_str(comma)
  print_int(s3)
  
  print_str(NL)
  addi a7, zero, 10

  ecall

