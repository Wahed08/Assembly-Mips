.data
	myArray: .space 20
	newline: .asciiz "\n"
	sum: .word 0
	average: .word 0
	length: .word 3

.text
      main:
	addi $s0,$zero,10
	addi $s1,$zero,15
	addi $s2,$zero,55
	
	addi $t0,$zero,0
	
	sw $s0,myArray($t0)
	addi $t0,$t0,4
	sw $s1,myArray($t0)
	addi $t0,$t0,4
	sw $s2,myArray($t0)
	
	addi $t0,$zero,0
	addi $t1,$zero,0
	
	while:
	beq $t0,12,exit
	
	lw $t2,myArray($t0)
	addi $t0,$t0,4
	add $t1,$t1,$t2
	
	j while
	
	exit:
	sw $t1,sum
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0,newline
	syscall
	
	div $t4,$t1,3
	
	li $v0,1
	move $a0,$t4
	syscall
	
	li $v0,10
	syscall