#start
.data
regdno: .word 0x41016245
data1: .byte 0x80
data2: .byte 0
.text
.globl main
.ent main
main:
lb $t0,data1
andi $t0,0x000000ff
sb $t0,data2
#end
li $v0,10
syscall
.end main
 
