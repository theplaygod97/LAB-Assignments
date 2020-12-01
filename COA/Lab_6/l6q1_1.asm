.data
arr:.word 1 2 3 4 5
stack:.word 0
p1: .asciiz "  "
.text
.globl main
.ent main
main:
li $t0,1 #loop variable
li $t1,5 # size of array
la $s0,arr
la $s1,stack

loop: bgt $t0,$t1,shift
      lw $t2,0($s0)
      sw $t2,0($s1)
      addi $s0,$s0,4
      addi $s1,$s1,4
      addi $t0,$t0,1
      j loop

shift:la $s0,arr
      addi $s1,$s1,-4
      li $t3,1
shift1:bgt $t3,$t1,disp
      lw $t4,0($s1)
      sw $t4,0($s0)
      addi $s0,$s0,4
      addi $s1,$s1,-4
      addi $t3,$t3,1
      j shift1
 
disp: li $s3,1
      la $s0,arr
disp1:bgt $s3,$t1,exit
      lw $a0,0($s0)
      li $v0,1
      syscall
      la $a0,p1
      li $v0,4
      syscall
      addi $s3,$s3,1
      addi $s0,$s0,4
      j disp1

exit:li $v0,10
      syscall
