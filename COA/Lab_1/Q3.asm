#Load a data ta any register and store into the memory
#1541016245
.data
aside: .word 2
bside: .word 4
cside: .word 6
surfacearea: .word 0
.text
.globl main
.ent main
main:
lw $t0,aside
lw $t1,bside
lw $t2,cside
mul $t3,$t0,$t1
mul $t4,$t0,$t2
mul $t5,$t1,$t2
add $t6,$t3,$t4
add $t7,$t6,$t5
li $s1,2
mul $s2,$t7,$s1
sw $s2,surfacearea
#terminate the program
li $v0,10
syscall
.end main
