.data
	message: .asciiz "the numbers are different"
	message2: .asciiz "the numbers are equal"
	word: .word 10
	word2:.word 10 
.text
	
	main:
	
	lw $t0,word
	lw $t1,word2
	
	beq $t0,$t1,next
	
	li $v0,10
	syscall
	
	next:
	
	li $v0,4
	la $a0,message2
	syscall