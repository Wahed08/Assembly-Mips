.data
	line: .asciiz "Enter a floating number: "
	
.text

	li $v0,4
	la $a0,line
	syscall
	
	li $v0,7
	syscall
	
	li $v0,3
	add.d $f12,$f0,$f8
	syscall