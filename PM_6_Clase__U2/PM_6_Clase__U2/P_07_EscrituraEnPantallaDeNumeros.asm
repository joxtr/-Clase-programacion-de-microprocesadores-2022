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
num_7 dword 4d

.code
main7 PROC
; Lógica del Programa
	
	; SOLO SE PUEDE IMPRIMIR EN PANTALL LOS NÚMEROS QUE SE ENCUENTREN EN EL REGISTRO "EAX"

	MOV EAX, NUM_7

	; IMPRESION CON SIGNO 
	CALL WriteInt  

	; SALTO DE LINEA
	CALL CrLf

	; IMPRSION SIN SIGNO
	Call WriteDec


exit

main7 ENDP

END main7
