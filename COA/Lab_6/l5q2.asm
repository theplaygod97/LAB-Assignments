.data
data1: .word 0x71H
.text
.globl main
.ent main
main:
lw $t0,data1
li $t2,7         
li $t1,0         
li $t6,0

loop:
bgt $t1,$t2,exit     #loop 
andi $t7,$t0,1
beq $t0,$0,exit
sll $t3,$t0,1
li $t5,1
beq $t5,$t3,ad
addi $t1,$t1,1
ad:
addi $t6,$t6,1
j loop
exit:
.end main
li $v0,10
syscall
