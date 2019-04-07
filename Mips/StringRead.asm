.data
	Mymessage: .asciiz "String"
.text
	li $v0,4
	la $a0,Mymessage
	syscall