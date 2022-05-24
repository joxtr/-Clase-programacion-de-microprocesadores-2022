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
Titulo_msg_7 db "Este es el titulo", 0
Cuerpo_msg_7 db "Primera Linea", 0dh,0ah
		     db "Segunda Linea", 13, 10
			 db "Tercera Linea", 13d, 10d, 13, 10
			 db "Cuarta Linea", 0

.code
main7 PROC
; Lógica del Programa

mov ebx, offset titulo_msg_7
mov edx, offset titulo_msg_7

exit

main7 ENDP

END main7