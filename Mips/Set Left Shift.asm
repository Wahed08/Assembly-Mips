.data

.text

	addi $t0,$zero,4
	sll $s1,$t0,2
	
	li $v0,1
	add $a0,$zero,$s1
	syscall