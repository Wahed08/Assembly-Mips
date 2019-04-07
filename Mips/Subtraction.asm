.data 
	number1: .word 20
	number2: .word 13
.text
	
	lw $t0,number1
	lw $t1,number2
	sub $t2,$t0,$t1
	
	li $v0,1
	move $a0,$t2
	syscall
	
	
