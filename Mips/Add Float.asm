.data
	number1: .float 12.34
	number2: .float 11.23
.text
	
	lwc1 $f2, number1
	lwc1 $f4, number2
	
	div.s $f12,$f2,$f4
	
	li $v0,2
	syscall