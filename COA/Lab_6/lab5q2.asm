.data 
	reg: .asciiz " Regd. No.1541016365"
 	str1: .asciiz "\n How many numbers \n"
	str2: .asciiz "\n Enter the numbers \n"
	str3: .asciiz "\n The no. of ones present in array is \n"
		
.text 
main:

	la $a0,reg  	#Printing Regd. No.
	li $v0,4
	syscall

	la $a0,str1  	#To print "how many numbers"
	li $v0,4
	syscall

	li $v0,5	#To input numbers 
	syscall
	move $t0,$v0

	la $a0,str2  	#To print "Enter the numbers"
	li $v0,4
	syscall

	li $t1,1
	li $t2,0 	#counting no. of ones
	li $t3,1
				
	loop:
			
			bgt $t1,$t0,L
			li $v0,5
			syscall

					
			beq $v0,$t3,count
		cont:
			addi $t1,$t1,1
			j loop

		count:
			addi $t2,$t2,1
			j cont
		

	L:
			la $a0,str3 	# Printing no. of ones
			li $v0,4
			syscall

			move $a0,$t2
			li $v0,1
			syscall

			

li $v0,10
syscall	
