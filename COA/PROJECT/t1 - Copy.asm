.data
W1: .asciiz"*************WELCOME*************\n**************QUIZ***************\n"
R1: .asciiz"There are 4 sections.\nSection 1-LOGICAL\nSection 2-APTITUDE\nSection 3-VERBAL\nSection 4-REASONING\nTo BYPASS any Question PRESS-5\nENTER 1 for OPTION 1\nENTER 2 for OPTION 2\nENTER 3 for OPTION 3\nENTER 4 for OPTION 4\nNO NEGATIVE MARKING \n1 MARK FOR EACH RIGHT ANSWER \n 0 FOR EACH WRONG \n"
S11: .asciiz "\nSection 1-LOGICAL\n"
S21: .asciiz "\nSection 2-APTITUDE\n"
S31: .asciiz "\nSection 3-VERBAL\n"
S41: .asciiz "\nSection 4-REASONING\n"
QS: .asciiz "\nWould you like to Continue (y/n)? "
Q: .asciiz "\nWould you like to solve this section (y/n)? "
Q1: .asciiz "\nDeba ra kete mandu ? \n 1)Gote \n 2)Dita \n 3)Teenta \n 4)Aaganita \n5)BYPASS TO NEXT QUESTION \n"
Q2: .asciiz "\nSahu kete jhia nungudeichi ? \n 1)Gote \n 2)Dita \n 3)Teenta \n 4)Aaganita \n5)BYPASS TO NEXT QUESTION \n"
Q3: .asciiz "\nlinga tatur na nahi ? \n 1)Han \n 2)Maa Raan Haan \n 3)Nahi \n 4)Janini \n5)BYPASS TO NEXT QUESTION \n"
Q4: .asciiz "\nSubham bhai kahara ? \n 1)Tankara \n 2)Amara \n 3)Samastankara \n 4)Chinhini \n5)BYPASS TO NEXT QUESTION \n"
S1: .asciiz "\nThik uttar - "
S2: .asciiz "\nPrasna uttar diya : "
S3: .asciiz "\nDhanyabad"
.text
main:
li $s0,0
#1
li $v0,4
la $a0,W1
syscall

li $v0,4
la $a0,R1
syscall

li $v0,4
la $a0,QS
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,ST
j END
ST:

li $v0,4
la $a0,S11
syscall

li $v0,4
la $a0,Q
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,Z
j EL1

Z:
li $v0,4
la $a0,Q1
syscall




li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,5,X
j X1
X1:

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
la $a0,Q
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,U
j EL2

U:
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

beq $s1,5,V
j X2
X2:

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
la $a0,Q
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,W
j EL3

W:
B:
li $v0,4
la $a0,Q3
syscall




li $v0,4
la $a0,S2
syscall

li $v0,5
syscall
move $s1,$v0

beq $s1,5,Y
j X3
X3:

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
la $a0,Q
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,M
j EL4

M:

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

beq $s1,5,END
j X4
X4:

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

