.data
	message: .asciiz "My name is wahed\n"
	number: .word 10
.text
    
    main:
    jal display
    
    lw $t0,number
    add $a0,$t0,5
    
    li $v0,1
    add $a0,$zero,$a0
    syscall
	
     li $v0,10
     syscall
    
    display:
    li $v0,4
    la $a0,message
    syscall
    
    jr $ra
    
   
   
