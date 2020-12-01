.data

size_prompt:    .asciiz "Enter number of elements: "
element_prompt: .asciiz "Enter an element: "
msg_space:      .asciiz " "

    .text
    .globl  main
main:

    # prompt user for number of elements
    la      $a0,size_prompt
    li      $v0,4
    syscall

    # get array count from user
    li      $v0,5
    syscall
    move    $s0,$v0                 # save array count

    li      $t0,0                   # i = 0

stack:
    beq     $t0,$s0,sumlist         # input done (i.e. i >= count)? if yes, fly

    # prompt user for list element
    la      $a0,element_prompt
    li      $v0,4
    syscall

    # read in element value
    li      $v0,5
    syscall

    # push element to stack
    addi    $sp,$sp,-4
    sw      $v0,0($sp)

    addi    $t0,$t0,1               # i += 1
    j       stack

    # get sum of array elements
    #   t6 -- sum value
sumlist:
    li      $t6,0                   # sum = 0
    move    $t4,$s0                 # get the count

sumlist_loop:
    beqz    $t4,average             # at end? if yes, fly

    # pop element off stack
    lw      $t7,0($sp)              # get next array element value
    addi    $sp,$sp,4               # advance array pointer

    add     $t6,$t6,$t7             # sum += array[i]
    addi    $t4,$t4,-1              # bump down the count
    j       sumlist_loop

    # get average
    #   t6 -- sum value
    #   t5 -- average value
average:
    # print the sum
    li      $v0,1
    move    $a0,$t6             # get the sum
    syscall

    div     $t6,$s0             # compute sum / count
    mflo    $t5                 # retrieve it

    # output a space
    li      $v0,4
    la      $a0,msg_space
    syscall

    # print average
    move    $a0,$t5
    li      $v0,1
    syscall

exit:
    li      $v0,10              # exit program
    syscall
