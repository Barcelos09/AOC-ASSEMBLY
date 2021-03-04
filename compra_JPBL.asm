.data
	Entrada: .asciiz "Digite o nome do produto: "
	Entrada2: .asciiz "Insira o valor unitário deste produto: "
	Entrada3: .asciiz "Insira a quantidade desejada deste produto: "
	Msg1: .asciiz "Deseja comprar algo a mais? Se sim, digite 1. Caso contrário, digite 0. Resposta: "
	pedido: .asciiz "Pedido: "
	Msg2: .asciiz "Valor unitário: R$ "
	Msg3: .asciiz "Valor total do produto: R$ "
	msgfim: .asciiz "fim"
	msgx: .asciiz "x "
	newline: .asciiz "\n"
	total: .asciiz "Valor total do pedido: R$ "
	zerofloat: .float 0.0
	nome_produto1: .space 30
	nome_produto2: .space 30
	nome_produto3: .space 30
	nome_produto4: .space 30
	nome_produto5: .space 30
	array_inteiros:
		.align 2
		.space 20
	array_float:
		.align 2
		.space 20
	
.text
	lwc1 $f4, zerofloat
	addi $s7, $zero, 1 #contador de produtos
	move $s6, $zero #indice array int
	move $s5, $zero #indice array float
	#leitura 1
	li $v0, 4
	la $a0, Entrada
	syscall
	
	#ler_string
	li $v0, 8
	la $a0, nome_produto1
	la $a1, 30
	syscall
	
	#leitura 2
	li $v0, 4
	la $a0, Entrada2
	syscall
			
	#ler_float
	li $v0, 6
	syscall
			
	swc1 $f0, array_float($s5)
	addi $s5, $s5, 4 #soma 4 no indice
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada3
	syscall
	
	#ler_int
	li $v0, 5
	syscall
	
	sw $v0, array_inteiros($s6)
	addi $s6, $s6, 4 #soma 4 no indice
	
	#fim leitura 1
			
	li $v0, 4
	la $a0, Msg1 #imprime msg1
	syscall
	
	li $v0, 5 #ler resposta
	syscall

	blez $v0, fim #compara se a resposta é 0
	addi $s7, $s7, 1 #soma mais 1 ao contador de produto

	#leitura 2
	li $v0, 4
	la $a0, Entrada
	syscall
	
	#ler_string
	li $v0, 8
	la $a0, nome_produto2
	la $a1, 30
	syscall
	
	#leitura 2
	li $v0, 4
	la $a0, Entrada2
	syscall
			
	#ler_float
	li $v0, 6
	syscall
			
	swc1 $f0, array_float($s5)
	addi $s5, $s5, 4 #soma 4 no indice
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada3
	syscall
	
	#ler_int
	li $v0, 5
	syscall

	sw $v0, array_inteiros($s6)
	addi $s6, $s6, 4 #soma 4 no indice
			
	#fim leitura 2
			
	li $v0, 4
	la $a0, Msg1
	syscall
	
	li $v0, 5 #ler resposta
	syscall

	blez $v0, fim #compara se a resposta é 0
	addi $s7, $s7, 1 #soma mais 1 ao contador de produto
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada
	syscall
	
	#ler_string
	li $v0, 8
	la $a0, nome_produto3
	la $a1, 30
	syscall
	
	#leitura 2
	li $v0, 4
	la $a0, Entrada2
	syscall
			
	#ler_float
	li $v0, 6
	syscall
			
	swc1 $f0, array_float($s5)
	addi $s5, $s5, 4 #soma 4 no indice
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada3
	syscall
	
	#ler_int
	li $v0, 5
	syscall

	sw $v0, array_inteiros($s6)
	addi $s6, $s6, 4 #soma 4 no indice
			
	#fim leitura 3
			
	li $v0, 4
	la $a0, Msg1
	syscall
	
	li $v0, 5 #ler resposta
	syscall

	blez $v0, fim #compara se a resposta é 0
	addi $s7, $s7, 1 #soma mais 1 ao contador de produto
	
	#leitura 4
	li $v0, 4
	la $a0, Entrada
	syscall
	
	#ler_string
	li $v0, 8
	la $a0, nome_produto4
	la $a1, 30
	syscall
	
	#leitura 2
	li $v0, 4
	la $a0, Entrada2
	syscall
			
	#ler_float
	li $v0, 6
	syscall
			
	swc1 $f0, array_float($s5)
	addi $s5, $s5, 4 #soma 4 no indice
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada3
	syscall
	
	#ler_int
	li $v0, 5
	syscall

	sw $v0, array_inteiros($s6)
	addi $s6, $s6, 4 #soma 4 no indice
			
	#fim leitura 4
			
	li $v0, 4
	la $a0, Msg1
	syscall
	
	li $v0, 5 #ler resposta
	syscall

	blez $v0, fim #compara se a resposta é 0
	addi $s7, $s7, 1 #soma mais 1 ao contador de produto
	
	#leitura 5
	li $v0, 4
	la $a0, Entrada
	syscall
	
	#ler_string
	li $v0, 8
	la $a0, nome_produto5
	la $a1, 30
	syscall
	
	#leitura 2
	li $v0, 4
	la $a0, Entrada2
	syscall
			
	#ler_float
	li $v0, 6
	syscall
			
	swc1 $f0, array_float($s5)
	addi $s5, $s5, 4 #soma 4 no indice
	
	#leitura 3
	li $v0, 4
	la $a0, Entrada3
	syscall
	
	#ler_int
	li $v0, 5
	syscall

	sw $v0, array_inteiros($s6)
	addi $s6, $s6, 4 #soma 4 no indice
	j fim	
	#fim leitura 5
	
	
	fim:
		li $v0, 4
		la $a0, newline
		syscall
		
		add.s $f3, $f4, $f4
		move $s6, $zero #indice array int
		move $s5, $zero #indice array float
		blez $s7, finalizar
		li $v0, 4
		la $a0, pedido
		syscall
	
		li $v0, 1
		lw $a0, array_inteiros($s6)
		syscall
		
		li $v0, 4
		la $a0, msgx
		syscall
	
		li $v0, 4
		la $a0, nome_produto1
		syscall
	
		li $v0, 4
		la $a0, Msg2
		syscall
	
		lwc1 $f12, array_float($s5)
		li $v0, 2
		syscall
		
		li $v0, 4
		la $a0, newline
		syscall
	
		li $v0, 4
		la $a0, Msg3
		syscall
		
		lw $a1, array_inteiros($s6)
		mtc1 $a1, $f2
		cvt.s.w $f2, $f2
		mul.s $f12, $f2, $f12
	
		li $v0, 2
		syscall
		
		add.s $f3, $f3, $f12
		
		li $v0, 4
		la $a0, newline
		syscall
	
		addi $s5, $s5, 4
		addi $s6, $s6, 4
		subi $s7, $s7, 1
	
		#repetir processo
	
		blez $s7, finalizar
		li $v0, 4
		la $a0, pedido
		syscall
	
		li $v0, 1
		lw $a0, array_inteiros($s6)
		syscall
		
		li $v0, 4
		la $a0, msgx
		syscall
	
		li $v0, 4
		la $a0, nome_produto2
		syscall
	
		li $v0, 4
		la $a0, Msg2
		syscall
	
		lwc1 $f12, array_float($s5)
		li $v0, 2
		syscall
	
		li $v0, 4
		la $a0, newline
		syscall
	
		li $v0, 4
		la $a0, Msg3
		syscall
		
		lw $a1, array_inteiros($s6)
		mtc1 $a1, $f2
		cvt.s.w $f2, $f2
		mul.s $f12, $f2, $f12
	
		li $v0, 2
		syscall
		
		add.s $f3, $f3, $f12
		
		li $v0, 4
		la $a0, newline
		syscall
	
		addi $s5, $s5, 4
		addi $s6, $s6, 4
		subi $s7, $s7, 1
	
		#repetir processo
	
		blez $s7, finalizar
		li $v0, 4
		la $a0, pedido
		syscall
	
		li $v0, 1
		lw $a0, array_inteiros($s6)
		syscall
		
		li $v0, 4
		la $a0, msgx
		syscall
	
		li $v0, 4
		la $a0, nome_produto3
		syscall
	
		li $v0, 4
		la $a0, Msg2
		syscall
	
		lwc1 $f12, array_float($s5)
		li $v0, 2
		syscall
	
		li $v0, 4
		la $a0, newline
		syscall
	
		li $v0, 4
		la $a0, Msg3
		syscall
		
		lw $a1, array_inteiros($s6)
		mtc1 $a1, $f2
		cvt.s.w $f2, $f2
		mul.s $f12, $f2, $f12
	
		li $v0, 2
		syscall
		
		add.s $f3, $f3, $f12
		
		li $v0, 4
		la $a0, newline
		syscall
	
		addi $s5, $s5, 4
		addi $s6, $s6, 4
		subi $s7, $s7, 1
	
		#repetir processo
	
		blez $s7, finalizar
		li $v0, 4
		la $a0, pedido
		syscall
	
		li $v0, 1
		lw $a0, array_inteiros($s6)
		syscall
		
		li $v0, 4
		la $a0, msgx
		syscall
	
		li $v0, 4
		la $a0, nome_produto4
		syscall
	
		li $v0, 4
		la $a0, Msg2
		syscall
	
		lwc1 $f12, array_float($s5)
		li $v0, 2
		syscall
	
		li $v0, 4
		la $a0, newline
		syscall
	
		li $v0, 4
		la $a0, Msg3
		syscall
		
		lw $a1, array_inteiros($s6)
		mtc1 $a1, $f2
		cvt.s.w $f2, $f2
		mul.s $f12, $f2, $f12
	
		li $v0, 2
		syscall
		
		add.s $f3, $f3, $f12
		
		li $v0, 4
		la $a0, newline
		syscall
	
		addi $s5, $s5, 4
		addi $s6, $s6, 4
		subi $s7, $s7, 1
	
		#repetir processo
		blez $s7, finalizar
		li $v0, 4
		la $a0, pedido
		syscall
	
		li $v0, 1
		lw $a0, array_inteiros($s6)
		syscall
		
		li $v0, 4
		la $a0, msgx
		syscall
	
		li $v0, 4
		la $a0, nome_produto5
		syscall
	
		li $v0, 4
		la $a0, Msg2
		syscall
	
		lwc1 $f12, array_float($s5)
		li $v0, 2
		syscall
	
		li $v0, 4
		la $a0, newline
		syscall
	
		li $v0, 4
		la $a0, Msg3
		syscall
		
		lw $a1, array_inteiros($s6)
		mtc1 $a1, $f2
		cvt.s.w $f2, $f2
		mul.s $f12, $f2, $f12
	
		li $v0, 2
		syscall
		
		add.s $f3, $f3, $f12
		
		li $v0, 4
		la $a0, newline
		syscall
	
		addi $s5, $s5, 4
		addi $s6, $s6, 4
		subi $s7, $s7, 1
		
	finalizar:
		li $v0, 4
		la $a0, total
		syscall
		
		add.s $f12, $f3, $f4
		li $v0, 2
		syscall
	
		li $v0, 10
		syscall
