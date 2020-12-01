.data

Welcome1:
    .ascii  "\n Hello! you are about to play the mastermind"
    .ascii  " guessing and logic game,Bulls & Cows!\n"
    .ascii  "The Computer will generate a secret number made of 4 unique"
    .ascii  " integer numbers. You have to guess the number!\n"
    .ascii  "Using the number of Bulls and Cows you get to find out what"
    .asciiz " the secret number is!\n"

Welcome2:
    .ascii  "\nEvery digit you enter that is both correct and in the right"
    .ascii  " location is a BULL. When you get 4 BULLS, YOU WIN!\n\n"
    .ascii  "Every digit you enter that is correct, but not in the right"
    .asciiz " location is a COW!\n"

confirm:
    .ascii  "\n Select \n"
    .ascii  "YES - if you are ready to guess\n"
    .ascii  "NO - to see the rules again\n"
    .asciiz "Cancel - to exit the Game\n"

msg_asknum:
    .asciiz "\nEnter your game choice\n"

    .text

main:

    # show intro and rules
main_welcome:
    la      $a0,Welcome1
    li      $a1,1
    li      $v0,55
    syscall

    la      $a0,Welcome2
    li      $v0,55
    syscall

    # ask user to select an action (i.e. enter data, reread rules, exit program)
main_confirm:
    la      $a0,confirm
    li      $v0,50
    syscall

    # the return is in a0: 0=yes, 1=no, 2=cancel
    beq     $a0,0,main_asknum
    beq     $a0,2,main_exit
    b       main_welcome

    # ask user for the next game input
    # NOTE: this is a prompt for an integer number
main_asknum:
    li      $v0,51
    la      $a0,msg_asknum
    syscall

    beq     $a1,-1,main_asknum      # syntax error
    beq     $a1,-2,main_confirm     # cancel
    beq     $a1,-3,main_asknum      # ok, but no data

    jal     do_something            # do something with the number in a0 ...

    j       main_asknum

main_exit:
    li      $v0,10
    syscall

# do_something -- process user's input
#
# arguments:
#   a0 -- number the user entered
do_something:
    jr      $ra                     # return