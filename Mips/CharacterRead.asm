.data
	Mycharacter: .byte 'b'
.text
	li $v0,4
	la $a0,Mycharacter
	syscall