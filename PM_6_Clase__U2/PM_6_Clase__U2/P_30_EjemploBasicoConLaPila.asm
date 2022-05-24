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

.data  ;variables
; Área de Declaración de Variables

.code
main30 PROC
; Lógica del Programa

;Tarea.. Hacer el desglose y explicación línea a línea de este programa.

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
