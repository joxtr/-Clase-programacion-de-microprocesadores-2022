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
main31 PROC
; L�gica del Programa

;Tarea.. Hacer el desglose y explicaci�n l�nea a l�nea de este programa.

	mov eax, 10
	mov ebx, 20

	call writedec
	call crlf
	xchg eax, ebx
	call writedec
	call crlf

	push eax
	push ebx

	pop eax
	pop ebx

	call writedec
	call crlf
	xchg eax, ebx
	call writedec
	call crlf

	; eax -> 10
	; ebx -> 20


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main31 ENDP
END main31