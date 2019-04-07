.data

.text
   
    main:
    addi $a1,$zero,10
    addi $a2,$zero,20
 	jal function
    
    li $v0,1
    add $a0,$v1,$zero
    syscall
    
    li $v0,10
    syscall
    
    function:
    add $v1,$a1,$a2
    jr $ra
    