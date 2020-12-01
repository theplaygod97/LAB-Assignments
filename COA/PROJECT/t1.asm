.data
S: .asciiz "Enter-5 to Bypass Or Press any other key to continue\n"
S11: .asciiz "Section 1-LOGICAL\n"
S21: .asciiz "Section 2\n"
S31: .asciiz "Section 3\n"
S41: .asciiz "Section 4\n"
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
#1
li $v0,4
la $a0,S11
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

li $s5,5

beq $s2,$s5,EL1
j Z

Z:
li $v0,4
la $a0,Q1
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL1
j X1
X1:

li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,4,ELSE1
add $s0,$s0,0
j X

ELSE1:
add $s0,$s0,1
j X

EL1:
j X
X:
#2
li $v0,4
la $a0,S21
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL2
j U

U:
A:
li $v0,4
la $a0,Q2
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL2
j X2
X2:

li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,4,ELSE3
add $s0,$s0,0
j V

ELSE3:
add $s0,$s0,1
j V

EL2:
j V
V:
#3
li $v0,4
la $a0,S31
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL3
j W

W:
B:
li $v0,4
la $a0,Q3
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL3
j X3
X3:

li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,2,ELSE5
add $s0,$s0,0
j Y

ELSE5:
add $s0,$s0,1
j Y

EL3:
j Y
Y:
#4
li $v0,4
la $a0,S41
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,EL4
j M

M:

C:
li $v0,4
la $a0,Q4
syscall

li $v0,4
la $a0,S
syscall

li$v0,5
syscall
move $s2,$v0

beq $s2,$s5,END
j X4
X4:

li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,3,ELSE7
add $s0,$s0,0
j END

ELSE7:
add $s0,$s0,1
j END

EL4:
j END

END:
li $v0,4
la $a0,S1
syscall

move $a0,$s0
li $v0,1
syscall

li $v0,4
la $a0,S3
syscall


li $v0,10
syscall

