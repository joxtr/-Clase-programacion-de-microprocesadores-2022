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
texto1_9 db "Ingresa un Numero: ",0
texto2_9 db "El Numero Ingresado fue el: ",0

num_9 dword 4d

.code
main9 PROC
; L�gica del Programa
	
	mov edx, offset texto1_9
	CAll WriteString
	Call CrLf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	Call ReadInt  ; leer un numero ingresado desde el teclado y lo guardara en EAX
	mov num_9, eax

	;;;;;;;;;;;;
	;OPERACION CON EL NUMERO LEIDO

	;;;;;
	MOV EAX, NUM_9
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov edx, offset texto2_9
	CAll WriteString
	Call CrLf

	;;;;;;;;;;;;;;;;;;
	CALL WRITEDEC


	CALL CRLF

exit

main9 ENDP

END main9
