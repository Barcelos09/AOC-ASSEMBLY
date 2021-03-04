.data
	Mensagem: .asciiz "Entre com as horas: "
	Mensagem2: .asciiz "Entre com os minutos: "
	Mensagem3: .asciiz "Entre com os segundos: "
	erro1: .asciiz "Valor inválido para as horas. Esperado número entre 0 e 23."
	erro2: .asciiz "Valor inválido para os minutos. Esperado número entre 0 e 60."
	erro3: .asciiz "Valor inválido para os segundos. Esperado número entre 0 e 60."
	saida: .asciiz "Horário digitado: "
	doispontos: .byte ':'
	
.text
	li $t3, 60
	li $t4, 23
	j pedehoras
	
	msgerro1:
		li $v0, 4
		la $a0, erro1
		syscall
		j pedehoras
		
	msgerro2:
		li $v0, 4
		la $a0, erro2
		syscall
		j pedeminutos
		
	msgerro3:
		li $v0, 4
		la $a0, erro3
		syscall
		j pedesegundos
			
	pedehoras:
		li $v0, 4
		la $a0, Mensagem
		syscall
	
		li $v0, 5
		syscall
		
		bgt $v0, $t4, msgerro1
		blt $v0, $zero, msgerro1
		
		move $t0, $v0
		j pedeminutos
		
	pedeminutos:
		li $v0, 4
		la $a0, Mensagem2
		syscall
	
		li $v0, 5
		syscall
		
		bge $v0, $t3, msgerro2
		blt $v0, $zero, msgerro2
		
		move $t1, $v0
		j pedesegundos
		
	pedesegundos:
		li $v0, 4
		la $a0, Mensagem3
		syscall
	
		li $v0, 5
		syscall
	
		
		bge $v0, $t3, msgerro3
		blt $v0, $zero, msgerro3
	
		move $t2, $v0
		
	li $v0, 4 #imprimir string
	la $a0, saida #imprime o texto saida
	syscall #imprime a string
	
	li $v0, 1 #imprimir int
	la $a0, ($t0) #imprime horas
	syscall #imprime a string
	
	li $v0, 4 #imprimir char
	la $a0, doispontos #imprime os dois pontos
	syscall #imprime a string
	
	li $v0, 1 #imprimir int
	la $a0, ($t1) #imprime minutos
	syscall #imprime a string
	
	li $v0, 4 #imprimir char
	la $a0, doispontos #imprime os dois pontos
	syscall #imprime a string
	
	li $v0, 1 #imprimir int
	la $a0, ($t2) #imprime segundos
	syscall #imprime a string	