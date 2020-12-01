#Load a data from memory loaction and store it in any register 
#1541016245
.data
num1: .word 0x88889999
.text
.globl main
.ent main
main:
la $t0,num1
lw $t1,0($t0)
#terminate the program
li $v0,10
syscall
.end main 
