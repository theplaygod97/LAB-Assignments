.data
arr : .word 1 4 2 10 5 6
num: .word 5
median: .word 0

.text
.globl main
.ent main
main:

lw $s1,num                    #N
addi $s2,$s1,-1               #N-1
li $t0,0                      #i=0


top:
la $s0,arr                    #BA x[i]
li $t1,0                      #j=0
sll $t2,$t1,2                 #disp=j*4
add $t3,$s0,$t2               #NA=BA+disp
back:lw $t4,0($t3)            #x[j+1]
addi $t1,$t1,1                #j=j+1
sll $t2,$t1,2                 #disp=j*4
add $t3,$s0,$t2               #NA=BA+disp
lw $t5,0($t3)                 #x[j+1]
bgt $t4,$t5,ford              #if x[j]<=x[j+1] the goto ford:
sw $t4,0($t3)                 #else swap the content of x[j] and x[j+1]
sw $t5,-4($t3)  


ford:
blt $t1,$s2,back              #while(j<N-1)
addi $t0,$t0,1                #i=i+1
blt $t0,$s2,top               #while(i<N-1)
la $s0,arr                    #BA
li $t0,2
rem $t1,$s1,$t0               #remainder
bne $t1,$zero,oddmed          #if rem==1 then goto oddmedian
div $t3,$s1,$t0               #do length/2
sll $t3,$t3,2
add $t4,$s0,$t3
lw $t5,0($t4)
lw $t6,-4($t4)
add $t7,$t5,$t6
div $t8,$t7,$t0
sw $t8,median
j exit


oddmed: 
addi $t2,$s1,1
div $t3,$t2,$t0
addi $t3,$t3,-1
sll $t3,$t3,2
add $t4,$s0,$t3
lw $t5,0($t4)
sw $t5,median


exit: 
li $v0,10
syscall
.end main
