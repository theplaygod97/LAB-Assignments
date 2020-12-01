.data
arr : .word 1 4 2 10 5 6 7 8 10
.text
.globl main
.ent main
main:
la $t0,arr
move $s0,$t0
li $t1,10
move $s1,$t1
loop1: addi $sp,$sp,-4
lw $t2,0($t0)
sw $t2,0($sp)
addi $t1,$t1,-1
addi $t0,$t0,4
bnez $t1,loop1
move $t0,$s0
move $t1,$s1
loop2: lw $t2,0($sp)
addi $sp,$sp,4
sw $t2,0($t0)
addi $t0,$t0,4
addi $t1,$t1,-1
bnez $t1,loop2
li $v0,10
syscall
.end main
