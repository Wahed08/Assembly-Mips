.data
	mydouble:     .double 3.1416
	zerodouble:   .double 0.0
.text
	ldc1 $f2,mydouble
	ldc1 $f0,zerodouble
	
	li   $v0,3
	add.d $f12, $f2,$f0
	syscall
