.data

.text
	addi $t0,$zero,100
	addi $t1,$zero,4
	
	mult $t0,$t1
	mflo $s2

	
	li $v0,1
	add $a0,$zero,$s2
	syscall