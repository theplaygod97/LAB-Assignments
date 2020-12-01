#start
.data
regdno: .word 0x41016245
data1: .word 0x22223333
data3: .word 0
.text
.globl main
.ent main
main:
lw $t0,data1
rol $t1,$t0,16
sw $t1,data3

#end
li $v0,10
syscall
.end main
 
