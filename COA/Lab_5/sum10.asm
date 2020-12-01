.data

size_prompt:    .asciiz "Enter number of elements: "    
element_prompt: .asciiz "Enter an element: "
size:           .word 0 
to_store:       .word 0
sum:            .word 0
avg:            .word 0

                .text
                #Prints prompt
                la $a0, size_prompt
                addi $v0, $0, 4
                syscall

                #Gets input from user
                addi $v0, $0, 5
                syscall
                sw $v0, size

                addi $t0, $0, 0 #Initialise i = 0

                #Creates the list
                lw $s0, size
                addi $t1, $0, 4
                mult $s0, $t1
                mflo $t2
                add $a0, $t1, $t2
                addi $v0, $0, 9
                syscall

stack:          beq $t0, $s0, list_sum
                la $a0, element_prompt
                addi $v0, $0, 4
                syscall

                addi $v0, $0, 5
                syscall
                sw $v0, to_store
                lw $t5, to_store

                addi $sp, $sp, -4
                sw $t5, 0($sp)

                addi $t0, $t0, 1
                j stack

list_sum:       beq $s0, 0, average
                lw $t6, sum
                lw $t7, 0($sp)
                addi $sp, $sp, 4
                add $t6, $t7, $t6
                sw $t6, sum
                addi $s0, $s0, -1
                j list_sum

average:        lw $t0, sum
                div $t0, $s0
                mflo $t0
                sw $t0, avg
                lw $a0, avg
                addi $v0, $0, 1
                syscall
