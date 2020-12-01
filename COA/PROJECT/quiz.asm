.data
Q1: .asciiz "Deba ra kete mandu ? \n 1)Gote \n 2)Dita \n 3)Teenta \n 4)Aaganita \n"
Q2: .asciiz "Sahu kete jhia nungudeichi ? \n 1)Gote \n 2)Dita \n 3)Teenta \n 4)Aaganita \n"
Q3: .asciiz "linga tatur na nahi ? \n 1)Han \n 2)Maa Raan Haan \n 3)Nahi \n 4)Janini \n"
Q4: .asciiz "Subham bhai kahara ? \n 1)Tankara \n 2)Amara \n 3)Samastankara \n 4)Chinhini \n"
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

