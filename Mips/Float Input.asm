.data
      message: .asciiz "Entera a float number: "
      float:  .float 0.0
.text

      li $v0,4
      la $a0,message
      syscall
      
      lwc1 $f2, float
      
      li $v0,6
      syscall
      
      li $v0,2
      add.s $f12,$f0,$f2
      syscall