.data
W1: .asciiz"*************WELCOME*************\n**************QUIZ***************\n"
R1: .asciiz"There are 4 sections.\nSection 1-LOGICAL\nSection 2-REASONING\nSection 3-APTITUDE\nSection 4-MATHEMATICS\nSection 5-GK\nTo BYPASS any Question PRESS-5\nENTER 1 for OPTION 1\nENTER 2 for OPTION 2\nENTER 3 for OPTION 3\nENTER 4 for OPTION 4\nNO NEGATIVE MARKING \n1 MARK FOR EACH RIGHT ANSWER \n0 FOR EACH WRONG \n"
S11: .asciiz "\nSection 1-LOGICAL\n"
S21: .asciiz "\nSection 2-REASONING\n"
S31: .asciiz "\nSection 3-APTITUDE\n"
S41: .asciiz "\nSection 4-MATHEMATICS\n"
S51: .asciiz "\nSection 5-GK\n"
QS: .asciiz "\nWould you like to Continue (y/n)? "
Q: .asciiz "\nWould you like to solve this section (y/n)? "
CR: .asciiz "\n Correct Answer \n"
Q1: .asciiz "\nLook at this series: 7, 10, 8, 11, 9, 12, . . . What number should come next?\n1)7\n2)10\n3)12\n4)13\n5)BYPASS TO NEXT QUESTION \n"
Q1A: .asciiz "\nWrong Answer\nCorrect Option is (2)10\nExplanation :\nThis is a simple alternating addition and subtraction series. In the first pattern, 3 is added; in the second, 2 is subtracted.\n"
Q2: .asciiz "\nBRISTLE : BRUSH\n1)arm : leg\n2)stage : curtain\n3)recline : chair\n4)key : piano\n5)BYPASS TO NEXT QUESTION \n"
Q2A: .asciiz "\nWrong Answer\nCorrect Option is (4)key : piano\nExplanation :\nA bristle is a part of a brush; a key is a part of a piano.\n"
Q3: .asciiz "\nThe average height of three children is 95 ems. If the heights of 2 children are 97 and 92, respectively, the height of the third child is \n1) 96 cms \n2) 93 cms \n3) 95 cms \n4) 97 cms\n5)BYPASS TO NEXT QUESTION \n"
Q3A: .asciiz "\nWrong Answer\nCorrect Option is (1)96 cms\nExplanation :\n95=(x+97+92)/3 implies x=96 cms\n"
Q4: .asciiz "\n65% of 600 is\n1) 290 \n2) 230\n3) 390 \n4) 360 \n5)BYPASS TO NEXT QUESTION \n"
Q4A: .asciiz "\nWrong Answer\nCorrect Option is (3)390 \nExplanation :\n(65/100)*600 = 390\n"
Q5: .asciiz "\nWhat is the most popular computer operating system?\n1)Windows 7\n2)Windows XP\n3)Windows 8\n4)Windows 10\n"
Q5A: .asciiz "\nWrong Answer\nCorrect Option is (4)Windows 10 \nExplanation :\nWindows 10 holds a total market of 43.53%\n"
S1: .asciiz "\nTOTAL CORRECT ANSWER - "
S2: .asciiz "\nENTER YOUR INPUT : "
S3: .asciiz "\n******************THANK YOU******************"
.text
.globl main
.ent main
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

beq $s1,2,ELSE1
add $s0,$s0,0

li $v0,4
la $a0,Q1A
syscall

j X

ELSE1:
li $v0,4
la $a0,CR
syscall

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

li $v0,4
la $a0,Q2A
syscall

j V

ELSE3:
li $v0,4
la $a0,CR
syscall

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

beq $s1,1,ELSE5
add $s0,$s0,0

li $v0,4
la $a0,Q3A
syscall

j Y

ELSE5:
li $v0,4
la $a0,CR
syscall

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

beq $s1,5,O
j X4
X4:

beq $s1,3,ELSE7
add $s0,$s0,0

li $v0,4
la $a0,Q4A
syscall

j O

ELSE7:
li $v0,4
la $a0,CR
syscall

add $s0,$s0,1
j O

EL4:
j O

O:

#5
li $v0,4
la $a0,S51
syscall

li $v0,4
la $a0,Q
syscall

li $v0,12
syscall
move $s7,$v0

li $s5,121

beq $s7,$s5,M1
j EL5

M1:

C1:
li $v0,4
la $a0,Q5
syscall




li $v0,4
la $a0,S2
syscall

li$v0,5
syscall
move $s1,$v0

beq $s1,5,END
j X5
X5:

beq $s1,4,ELSE8
add $s0,$s0,0

li $v0,4
la $a0,Q5A
syscall

j END

ELSE8:
li $v0,4
la $a0,CR
syscall

add $s0,$s0,1
j END

EL5:
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