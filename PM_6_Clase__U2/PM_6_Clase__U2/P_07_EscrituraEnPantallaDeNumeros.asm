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
num_7 dword 4d

.code
main7 PROC
; L�gica del Programa
	
	; SOLO SE PUEDE IMPRIMIR EN PANTALL LOS N�MEROS QUE SE ENCUENTREN EN EL REGISTRO "EAX"

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
