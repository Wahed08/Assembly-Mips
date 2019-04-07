.data
	value: .word 45 #this is a word
.text
	
	lw $a0,value
	syscall

