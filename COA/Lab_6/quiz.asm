.data
Q1: .asciiz "Capital of India ? \n 1)BBSR \n 2)ANDAMAN \n 3)KOLKATA \n 4)DELHI \n"
Q2: .asciiz "Father of C ? \n 1)Gandhi \n 2)Obama \n 3)Bill Gates \n 4)Denis Ritchie \n"
Q3: .asciiz "Which is not a web browser ? \n 1)Chrome \n 2)Photoshop \n 3)Opera \n 4)Mozilla \n"
Q4: .asciiz "Highest peak in world ? \n 1)Dhauli \n 2)Mount Fuji \n 3)Everest \n 4)kapilash \n"
S1: .asciiz "Thik uttar - "
S2: .asciiz "Prasna uttar diya : "
S3: .asciiz "\nDhanyabad"
.text
main:
li $s0,0

li $v0,4
la $a0,Q1
syscall

li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,4,ELSE1
bne $s1,4,ELSE2

ELSE1:
add $t1,$s0,1
j A

ELSE2:
add $t1,$s0,0
j A

A:
li $v0,4
la $a0,Q2
syscall


li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,4,ELSE3
bne $s1,4,ELSE4

ELSE3:
add $t2,$t1,1
j B

ELSE4:
add $t2,$t1,0
j B

B:
li $v0,4
la $a0,Q3
syscall


li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,2,ELSE5
bne $s1,2,ELSE6

ELSE5:
add $t3,$t2,1
j C

ELSE6:
add $t3,$t2,0
j C

C:
li $v0,4
la $a0,Q4
syscall


li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,3,ELSE7
bne $s1,3,ELSE8

ELSE7:
add $t4,$t3,1
j END

ELSE8:
add $t4,$t3,0
j END

END:
li $v0,4
la $a0,S1
syscall

move $a0,$t4
li $v0,1
syscall

li $v0,4
la $a0,S3
syscall


li $v0,10
syscall


