#Assignment_4P_1
.data
regdno: .float 1541012245.0

data1: .float 1.6
data2: .float 1.45
var1: .float 3.14
var2: .float 1.45
y: .asciiz "Result is : "

.text
main:
l.s $f0,data1
l.s $f1,data2
l.s $f2,var1
l.s $f3,var2

mul.s $f4,$f2,$f0
div.s $f5,$f3,$f1
add.s $f6,$f4,$f5

la $a0,regdno
li $v0,4
syscall

la $a0,y
li $v0,4
syscall

mov.s $f12,$f6
li $v0,2
syscall

li $v0 10
syscall
.end main
