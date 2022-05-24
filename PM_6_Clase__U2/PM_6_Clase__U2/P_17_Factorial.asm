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

.code
main17 PROC
; Lógica del Programa

call readint ;  eax  <<<---num al que se calculara el factorial

mov ebx, eax  ; respaldo del contador

dec ebx 

ciclo:
	
	mul ebx
	dec ebx

	cmp ebx, 1
	jg ciclo

call crlf
call writedec

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main17 ENDP

END main17
