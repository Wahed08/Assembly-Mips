.data
	float: .float 4.4
.text

	li $v0,2
	lwc1,$f12,float
	syscall