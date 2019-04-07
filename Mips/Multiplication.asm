.data
	number1: .word 10
	number2: .word 2
	
.text
	
	lw $t0,number1
	lw $t1,number2
	mul $t2,$t0,$t1
	
	li $v0,1
	add $a0,$zero,$t2
	syscall
