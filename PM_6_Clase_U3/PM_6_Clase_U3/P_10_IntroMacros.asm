TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo
;
; Autore(s) :
	;         Mtro.Alejandro Garcia
	;		  Su Nombre.!
	;

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc


PrintLn_10 MACRO texto
	LOCAL msj
	.data
	; �rea de Declaraci�n de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; L�gica del Programa
	mov edx, offset msj
	call writestring
	call crlf

ENDM



.data
; �rea de Declaraci�n de Variables

.code
main10 PROC
; L�gica del Programa

	PrintLn_10 "Ingresa un valor para A: "

	call readint
	mov ebx, eax

	PrintLn_10 "Ingresa un valor para B: "

	call readint
	add eax, ebx

	PrintLn_10 "La suma de A y de B es: "

	call writedec

exit

main10 ENDP

END main10
