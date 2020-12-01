#Assignment_4P_2
.data
regdno: .word 0x41012205

data1: .asciiz "Enter radius "
data2: .asciiz "1541016245-Satyabrat"
var1: .float 3.14
var2: .float 4.0
var3: .float 3.0
volume: .asciiz "Volume is "
surface: .asciiz "\nSurface area is "

.text
main:
l.s $f1,var1
l.s $f2,var2
l.s $f3,var3

la $a0,data2
li $v0,4
syscall 

la $a0,data1
li $v0,4
syscall 


li $v0,6
syscall
 mov.s $f9,$f0

mul.s $f4,$f9,$f9
mul.s $f5,$f1,$f4
mul.s $f6,$f2,$f5

mul.s $f7,$f6,$f9
div.s $f8,$f7,$f3

la $a0,volume
li $v0,4
syscall

mov.s $f12,$f8
li $v0,2
syscall

la $a0,surface
li $v0,4
syscall

mov.s $f12,$f6
li $v0,2
syscall

li $v0 10
syscall
.end main
