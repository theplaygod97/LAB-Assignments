#start
.data
regdno: .word 0x41016245
data1: .word 1
data2: .word 6
data3: .word 0
data4: .word 0
.text
.globl main
.ent main
main:
lw $t0,data1
lw $t1,data2
addi $t3,$t0,5
sub $t5,$t1,5
and $t4,$t3,$t5
mul $t6,$t0,2
or $t7,$t4,$t6
not $s0,$t7
sw $s0,data4
#end
li $v0,10
syscall
.end main
 
