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

.data
; �rea de Declaraci�n de Variables
txt_msj1_12 db "Mensaje 1 ",0
txt_msj2_12 db "Mensaje 2 ",0
txt_msj3_12 db "Mensaje 3 ",0

txt_resultado_12 db "La suma de ambos numeros es: ", 0

.code
main12 PROC
; L�gica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	mov edx, offset txt_msj1_12
	call writeString
	call crlf
	
	jmp continuar           ; jump

	mov edx, offset txt_msj2_12
	call writeString
	call crlf

	continuar:

	mov edx, offset txt_msj3_12
	call writeString
	call crlf

	; Tarea 1 - U2: Saltos Condicionales para datos con signo
	; Tarea 2 - : Saltos Condicionales para datos sin signo



exit

main12 ENDP

END main12