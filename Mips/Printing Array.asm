.data
	myArray: .space 20
	newline: .asciiz "\n"

.text
      main:
	addi $s0,$zero,10
	addi $s1,$zero,20
	addi $s2,$zero,30
	
	addi $t0,$zero,0
	
	sw $s0,myArray($t0)
	addi $t0,$t0,4
	sw $s1,myArray($t0)
	addi $t0,$t0,4
	sw $s2,myArray($t0)
	
	addi $t0,$zero,0
	
	while:
	beq $t0,12,exit
	
	lw $t2,myArray($t0)
	addi $t0,$t0,4
	
	li $v0,1
	move $a0,$t2
	syscall
	
	li $v0,4
	la $a0,newline
	syscall
	
	j while
	
	
	exit:
	li $v0,10
	syscall