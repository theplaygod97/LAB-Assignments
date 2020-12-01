#Load a data ta any register and store into the memory
#1541016245
.data
num1: .byte 0
num2: .half 0
num3: .word 0
.text
.globl main
.ent main
main:
li $t0,80
li $t1,0x5555
li $t2,0x12345678
sb $t0,num1
sh $t1,num2
sw $t2,num3
#terminate the program
li $v0,10
syscall
.end main
