.data
	number1: .word 12
	number2: .word 2

.text
	lw $t1,number1
	lw $t2,number2
	
	srl $t3,$t1,2
	
	li $v0,1
	add $a0,$zero,$t3
	syscall
