.data 
	reg: .asciiz " Regd. No.1541016365"
 	str1: .asciiz "\n How many numbers \n"
	str2: .asciiz "\n Enter the numbers \n"
	str3: .asciiz "\n Minimum value in array is \n"
	str4: .asciiz "\n Maximum value in array is \n"
	
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

	li $t1,2
	
	
			li $v0,5
			syscall

			move $t3,$v0	#minimum 
			move $t4,$v0	#maximum
	
	loop:
			
			bgt $t1,$t0,L
			li $v0,5
			syscall

					
			blt $t4,$v0,max
		cont1:
			bgt $t3,$v0,min		
		cont2:
			addi $t1,$t1,1
			j loop

		max:
			move $t4,$v0
			j cont1
			
		min:
			move $t3,$v0
			j cont2

	L:
			la $a0,str4 	# Printing maximum
			li $v0,4
			syscall

			move $a0,$t4
			li $v0,1
			syscall

			la $a0,str3 	# Printing minimum
			li $v0,4
			syscall

			move $a0,$t3
			li $v0,1
			syscall

li $v0,10
syscall	
