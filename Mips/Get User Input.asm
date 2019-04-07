.data
   prompt: .asciiz "Enter your age: "
   message: .asciiz "Your age is: "
   
.text

	li $v0,4
	la $a0,prompt
	syscall
	
	#getting user input
	
	li $v0,5
	syscall
	
	add $t0,$v0,$zero
	
	#Display message
	
	li $v0,4
	la $a0,message
	syscall
	
	li $v0,1
	addi $a0,$t0,$zero
	syscall
	

