.data
arr: .word 1 2 3
     .word 4 10 6
     .word 7 8 9
rowsize: .word 3
.text
.globl main
.ent main
main:
la $t0,arr
lw $t1,rowsize
li $t2,0
li $t6,0
loop:beq $t2,$t1,Exit
mul $t3,$t2,$t1
add $t3,$t3,$t2
mul $t3,$t3,4
add $t4,$t0,$t3
lw $t5,0($t4)
add $t6,$t5,$t6
addi $t2,$t2,1
j loop
Exit:
li $v0,10
syscall
.end main
