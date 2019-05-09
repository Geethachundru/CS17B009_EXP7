.data
	k: .word 10
	l: .word 10
	m: .word 2
	n: .word 10
	r: .word 0 
.text

main:
	lw $s0,k
	lw $a0,l
	lw $a1,m
	lw $s3,n
	jal multiply
	div $v1,$s3
	mflo $t1
	add $t2,$s0,$t1
	sw $t2,r
	li $v0,10
	syscall
multiply:
	mult $a0,$a1
	mflo $v1
jr $ra
