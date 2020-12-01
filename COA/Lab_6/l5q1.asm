.data
data1: .word 10 20 30 40 50 60 70 80 90 100
length: .word 10
Sum: .word 0
Avg: .word 0
.text
.globl main
.ent main
main:
la $t3,data1
lw $t2,length  
addi $t2,$t2-1 
li $t0,0         #sum=0
li $t1,0         #i=0
loop:
bgt $t1,$t2,exit #loop 
mul $t4,$t1,4    #i=i*4
add $t4,$t3,$t4  #next address
lw $t4,0($t4)    #value at that address
add $t0,$t0,$t4  #sum=sum+that value
addi $t1,$t1,1   #i=i+1
div $t5,$t0,10   #Avg
sw $t1,Sum
sw $t5,Avg
j loop
exit:
.end main
li $v0,10
syscall
