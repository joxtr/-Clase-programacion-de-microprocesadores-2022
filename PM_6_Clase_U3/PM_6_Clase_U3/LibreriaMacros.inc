PrintLn MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; Lógica del Programa
	push edx
	mov edx, offset msj
	call writestring
	call crlf
	pop edx

	ENDM

	;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;; MACRO VERSION 1

	calc_area_rectangulo_v1 
	.data
	; area de declaracion de Variables

	.code
	; Logica del Programa
	; EAX = altura
	; EBX = Base

	MUL EBX ; RESULTADO ESTARA EN EAX

ENDM

;;;;;;;;;;;;;;;;;;;;;;
	;;;;;;;;;;;; MACRO VERSION 1

	calc_area_rectangulo_v2 MACRO base,altura 
	.data
	; area de declaracion de Variables

	.code
	; Logica del Programa
	push EAX
	push EBX

	mov eax, base
	mov ebx, altura

	; EAX = base
	; EBX = altura

	MUL EBX ; RESULTADO ESTARA EN EAX

	pop ebx 

ENDM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MACRO VERSION 3

calc_area_rectangulo_v3 MACRO
	.data
;Area de Declaracion de Variables
	b dword base

	.code
	;Logica del progama


	
	mov eax, altura


	MUL b ; RESULTADO ESTARA EN EAX


ENDM