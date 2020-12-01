.data
regdno: .word 0x41016253
mes0: .asciiz "1541016253 SAGNIK\n"
rows : .asciiz "Enter the number of rows:   "
columns : .asciiz "Enter the columns:  "
enter : .asciiz "Enter the matrix: \n"
disp1 : .asciiz "Entered matrix:  \n"
enter_constant : .asciiz "Enter the constant to be multiplied: "
disp2 : .asciiz "\nThe resultant matrix is :\n"
newline : .asciiz "\n"
space : .asciiz "  "
arr : .word 0

.text

main:

la $a0,mes0
li $v0,4
syscall

la $a0, rows
li $v0, 4
syscall

li $v0, 5
syscall
move $s0, $v0

la $a0, columns
li $v0, 4
syscall

li $v0, 5
syscall
move $s1, $v0

la $a0, enter
li $v0, 4
syscall

la $s2, arr
move $t2, $s2

li $t0, 0
LOOP1:
beq $t0, $s0, ADD
li $t1, 0
LOOP2:
beq $t1, $s1, L1
li $v0, 5
syscall
sw $v0, 0($t2)

add $t2, $t2, 4
add $t1, $t1, 1
j LOOP2
L1:
add $t0, $t0, 1
j LOOP1


ADD :

la $a0, disp1
li $v0, 4
syscall

move $t2, $s2
li $t0, 0
LOOP5:
beq $t0, $s0, SCALE
li $t1, 0
LOOP6:
beq $t1, $s1, L7

lw $a0, 0($t2)
li $v0, 1
syscall

la $a0, space
li $v0, 4
syscall


add $t2, $t2, 4
add $t1, $t1, 1
j LOOP6

L7:
add $t0, $t0, 1
la $a0, newline
li $v0, 4
syscall
j LOOP5

SCALE :
la $a0, enter_constant
li $v0, 4
syscall

li $v0, 5
syscall
move $s7, $v0

la $a0, disp2
li $v0, 4
syscall

move $t2, $s2
li $t0, 0
LOOP7:
beq $t0, $s0, EXIT
li $t1, 0
LOOP8:
beq $t1, $s1, L8

lw $t8, 0($t2)
mul $t8, $t8, $s7
move $a0, $t8
li $v0, 1
syscall

la $a0, space
li $v0, 4
syscall


add $t2, $t2, 4
add $t1, $t1, 1
j LOOP8

L8:
add $t0, $t0, 1
la $a0, newline
li $v0, 4
syscall
j LOOP7

EXIT:
li $v0, 10
syscall
