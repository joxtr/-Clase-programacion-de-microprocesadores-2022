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

.data  ;variables
; �rea de Declaraci�n de Variables

.code
main30 PROC
; L�gica del Programa

;Tarea.. Hacer el desglose y explicaci�n l�nea a l�nea de este programa.

	mov eax, 20
	call writedec
	call crlf
	push eax 
	
	call writedec
	call crlf

	mov ebx, 5
	mov eax, ebx
	call writedec
	call crlf

	pop ebx

	mov eax, ebx
	call writedec
	call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main30 ENDP
END main30
