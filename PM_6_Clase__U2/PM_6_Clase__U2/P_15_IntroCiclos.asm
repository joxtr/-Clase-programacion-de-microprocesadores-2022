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
txt_msjNum1_15 db "Hello, i miss you a lot, my love ",0

.code
main15 PROC
; Lógica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov ecx, 10 

	ciclo:
		
		mov edx, offset txt_msjNum1_15
		call writestring
		call crlf 

	dec ecx
	cmp ecx, 0
	jg ciclo
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

exit


main15 ENDP

END main15
