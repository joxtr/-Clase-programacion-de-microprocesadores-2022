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


PrintLn_14 MACRO texto
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



.data
; Área de Declaración de Variables

.code
main14 PROC
; Lógica del Programa

Println "Ingresa la base: "
call readint
mov ebx, eax

Println "Ingresa la altura: "
call readint

;;; calculo area rectangulo
calc_area_rectangulo_v2

;;;;

Println "El area del rectangulo es: "
call writedec

exit

main14 ENDP

END main14