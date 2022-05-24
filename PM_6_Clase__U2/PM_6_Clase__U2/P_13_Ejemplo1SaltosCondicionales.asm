TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
txt_msjNum_13 db "Ingresa un Numero:",0
txt_msjPar_13 db "Es Par ",0
txt_msjImpar_13 db "Es Impar",0

.code
main13 PROC
; Lógica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	mov edx, offset txt_msjNum_13  ; Ingresa un Numero: 
	call writeString
	call crlf
	
	call readint  ; leer el numero ingresado por el usuario. Se guarda en EAX

	;EAX = dividendo
	; divisor = ? (Memoria, EBX, >ECX<)
	; residuo = edx

	mov ecx, 2  ;
	mov edx, 0 ; para limpiar el registro 

	div ecx  ; eax / ecx  => numero/2

	;checar edx para saber si es par o impar

	cmp edx, 0  ; compara edx con 0  ... despues se puede analizar si el rsultado es menor, igual, etc, etc
		; cmp realiza una comparación, aplicando una resta "temporal", que no altera a los operandos

	; para determinar que realizar con base en la comparación se emplea a los Saltos Condicionales

	; jz  = salta si es cero ... salta si es igual =  je 

	jz esPar
	; Camino del NO...
		mov edx, offset txt_msjImpar_13  ; Es ImPar
		call writeString
		call crlf
		jmp continuar

	esPar: 
		mov edx, offset txt_msjPar_13  ; Es Par
		call writeString
		call crlf

	continuar:

exit

main13 ENDP

END main13