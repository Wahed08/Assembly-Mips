.data
	line: .asciiz "Wahed Farhad"
.text

	main:
	
	addi $s0,$zero,10
	#addi $s1,$zero,20
	
	bgtz $s0,function	
				
	li $v0,10
	syscall
	
	function:
	
	li $v0,4
	la $a0,line
	syscall