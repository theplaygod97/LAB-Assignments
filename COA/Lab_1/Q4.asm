#Load a data ta any register and store into the memory
#1541016245
.data
a1: .word 1
b1: .word 4
c1: .word 1
d1: .word 2
f1: .word 0
.text
.globl main
.ent main
main:
lw $t0,a1
lw $t1,b1
lw $t2,c1
lw $t3,d1
div $t4,$t1,$t2
add $t5,$t4,$t0
mul $t6,$t3,$t3
sub $t7,$t5,$t6
sw $t7,f1
#terminate the program
li $v0,10
syscall
.end main
