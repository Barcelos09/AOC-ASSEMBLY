.data
	palavra1: .asciiz "Número total de caracteres:	"
	palavra2: .asciiz "	Número total de palavras:	"
	frase: .space 100
.text
	li $t2,-1 #contador de letras
	li $t3,1 #contador de palavras
	li $v0, 8
	la $a0, frase
	la $a1, 100
	syscall
	move $t0,$a0
	leitura:
		lb   $a0,0($t0)
		beqz $a0,fim
		li $v0,11
		bne $a0,32, adiciona1
		addi $t3, $t3, 1
	adiciona1:		
		addi $t2, $t2, 1
		addi $t0, $t0, 1
	j leitura
	fim:
		li $v0, 4 #imprimir string
		la $a0, palavra1
		syscall #imprime a string
			
		li $v0, 1
		add $a0, $0, $t2
		syscall
		
		li $v0, 4 #imprimir string
		la $a0, palavra2
		syscall #imprime a string
			
		li $v0, 1
		add $a0, $0, $t3
		syscall
		
		li $v0,10
		syscall
			