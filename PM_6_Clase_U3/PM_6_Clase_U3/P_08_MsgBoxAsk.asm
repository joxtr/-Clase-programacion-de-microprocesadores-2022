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
Titulo_msg_8 db "Este es el titulo", 0
Cuerpo_msg_8 db "Primera Linea", 0dh,0ah
		     db "Segunda Linea", 13, 10
			 db "Tercera Linea", 13d, 10d, 13, 10
			 db "Cuarta Linea", 0

.code
main8 PROC
; L�gica del Programa

mov ebx, offset titulo_msg_8
mov edx, offset titulo_msg_8

exit

main8 ENDP

END main8