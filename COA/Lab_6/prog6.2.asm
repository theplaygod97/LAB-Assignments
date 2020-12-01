.data
mes1: .asciiz"Enter the value of x : "
mes2: .asciiz"Enter the value of y : "
mes3: .asciiz"Enter the value of z : "
mes4: .asciiz"ERROR:Out 0f bounds "
mes5: .asciiz"Value of f : "
.text
.globl main
.ent main
main:
la $a0,mes1
li $v0,4
syscall
li $v0,5
syscall
move $t1,$v0

la $a0,mes2
li $v0,4
syscall
li $v0,5
syscall
move $t2,$v0

la $a0,mes3
li $v0,4
syscall
li $v0,5
syscall
move $t3,$v0

li $s1,1
li $s2,2
li $s3,3
li $s4,4
li $s5,5

blez $t3,loop1
bgt $t3,$s5,loop1
beq $t3,$s1,loop2
beq $t3,$s2,loop3
beq $t3,$s3,loop4
beq $t3,$s4,loop5

loop1:
      la $a0,mes4
      li,$v0,4
      syscall
j exit
 
loop2: jal addition
j exit
loop3: jal sub1
j exit
loop4: jal multiplication
j exit
loop5: jal division

exit:
li $v0,10
syscall
.end main

.globl addition
.ent addition
addition:
        add $t4,$t1,$t2
        la $a0,mes5
        li $v0,4
        syscall
        move $a0,$t4
        li $v0,1
        syscall
        jr $ra
.end addition

.globl sub1
.ent sub1
sub1:
        sub $t4,$t1,$t2
        la $a0,mes5
        li $v0,4
        syscall
        move $a0,$t4
        li $v0,1
        syscall
        jr $ra
.end sub1

.globl multiplication
.ent multiplication
multiplication:
        mul $t4,$t1,$t2
        la $a0,mes5
        li $v0,4
        syscall
        move $a0,$t4
        li $v0,1
        syscall
        jr $ra
.end multiplication

.globl division
.ent division
division:
        div $t4,$t1,$t2
        la $a0,mes5
        li $v0,4
        syscall
        move $a0,$t4
        li $v0,1
        syscall
        jr $ra
.end division


