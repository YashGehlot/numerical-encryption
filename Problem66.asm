.data
	userString:	.space 50
	  
	# userString($t0):	.byte 1
	newLine:	.asciiz "\n"
	
	char0:		.byte '0'
	char1:		.byte '1'
	char2:		.byte '2'
	char3:		.byte '3'
	char4:		.byte '4'
	char5:		.byte '5'
	char6:		.byte '6'
	char7:		.byte '7'
	char8:		.byte '8'
	char9:		.byte '9'
	
.text
	## GroupID-78 (15116040_15116075) - YASH GEHLOT & PRAJJWAL RANA
	## Date: November 4, 2016
	##<Problem66>.asm - Encrypts the code as stated in the problem 66
	## Registers used:
	## $t0 - number of iteration of cahracterize function
	## $t1 - 1/0 value to indicating if the character is numeral or not repectively
	## $t2 - loads value from char'n' and stores in the respective place in userstring
	## $t3 - used for nested procedure. Stores return address.
	## $t4 - used to load char'n' to compare with the character of string
	## $t5 - check if character is changed or not. if 0 then noCHnage will occur. i.e. character was not a numeral
	## $s0 - loads character of userString
	main:
	#getting user input as text
	li $v0, 8
	la $a0, userString
	li $a1, 50
	syscall
	
	
	
	addi $t0, $zero, 0 #initialize i=0
	characterize:   # divide input string into individual characters
			# loop
			
	beq $t0, 50, done	#loop untill i = 20
	lb $s0, userString($t0) #loads individual character into $s0

	jal encryption		#encryption as mentioned in the problem statement
			
	addi $t0, $t0, 1	#increment in pointer($t0) by 1 byte
	
	j characterize		#loop
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     mdone:			#exit loop
	
	done: 
	#print encrypted string
	li $v0, 4
	la $a0, userString
	syscall
	#end of program
	li $v0, 10
	syscall
	
	
	change0:
	addi $t5, $zero, 1	#tells that the character is changed. So nochange label will not work.
	lb $t2, char4
	sb $t2,  userString($t0)
	j a
	change1:
	addi $t5, $zero, 1
	lb $t2, char6
	sb $t2,  userString($t0)
	j a
	change2:
	addi $t5, $zero, 1
	lb $t2, char9
	sb $t2,  userString($t0)
	j a
	change3:
	addi $t5, $zero, 1
	lb $t2, char5
	sb $t2,  userString($t0)
	j a
	change4:
	addi $t5, $zero, 1
	lb $t2, char0
	sb $t2,  userString($t0)
	j a
	change5:
	addi $t5, $zero, 1
	lb $t2, char3
	sb $t2,  userString($t0)
	j a
	change6:
	addi $t5, $zero, 1
	lb $t2,  char1
	sb $t2,  userString($t0)
	j a
	change7:
	addi $t5, $zero, 1
	lb $t2, char8
	sb $t2,  userString($t0)
	j a
	change8:
	addi $t5, $zero, 1
	lb $t2, char7
	sb $t2,  userString($t0)
	j a
	change9:
	addi $t5, $zero, 1
	lb $t2, char2
	sb $t2,  userString($t0)
	j a
	
	noChange:
	sb $s0,  userString($t0)
	j a
	
	
	encryption:
	
	move $t3, $ra
	lb $t4, char0
	jal equal		 #seq $t1, $s0, $t4 
	beq $t1, 1, change0	
	lb $t4, char1
	jal equal
	beq $t1, 1, change1
	lb $t4, char2
	jal equal
	beq $t1, 1, change2
	lb $t4, char3
	jal equal
	beq $t1, 1, change3
	lb $t4, char4
	jal equal
	beq $t1, 1, change4
	lb $t4, char5
	jal equal
	beq $t1, 1, change5
	lb $t4, char6
	jal equal
	beq $t1, 1, change6
	lb $t4, char7
	jal equal
	beq $t1, 1, change7
	lb $t4, char8
	jal equal
	beq $t1, 1, change8
	lb $t4, char9
	jal equal
	beq $t1, 1, change9
	
	beq $t5, 0, noChange	#$t5 will be 1 only if any change is called in the code above
	a:
			
	move $t1, $zero
	move $t5, $zero
	move $ra, $t3		#$ra is restored so that it points to the characterize label
	jr $ra
	
	equal:
	seq $t1, $s0, $t4 	#sets $t1 equals to 1 if the character is a numeral.
	jr $ra

