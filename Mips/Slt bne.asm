.data
	
	message: .asciiz "The numbers are different"
.text
	main: 
	
	addi $t0,$zero, 10
	addi $t1,$zero, 20
	
	slt $t2, $t0, $t1
	bne $t2,$zero,printline
	
	li $v0, 10
	syscall
	
	printline:
	
	li $v0,4
	la $a0,message
	syscall