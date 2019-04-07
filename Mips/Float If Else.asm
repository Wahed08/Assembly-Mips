.data
	message1: .asciiz "it is true\n"
	message2: .asciiz "it is false\n"
	number1: .float 10.20
	number2: .float 10.20
.text

	lwc1 $f0,number1
	lwc1 $f1,number2
	
	c.eq.s $f0,$f1
	
	bc1f  exit
	
	li $v0,4
	la $a0,message2
	syscall
	
	li $v0,10
	syscall
	
	exit:
	li $v0,4
	la $a0,message1
	syscall