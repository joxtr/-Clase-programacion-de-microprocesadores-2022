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

.code
main16 PROC
; L�gica del Programa
;aqui deberia ir un mensaje solicitando la cant de nums pares que se desea
call readint ; eax

mov ebx, eax ; ebx = contador de cuantos pares me falta desplegar

mov eax, 2

ciclo: 
	call writedec
	call crlf
	add eax, 2
	dec ebx ; decrementa el contador
	cmp ebx, 0 
	jg ciclo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main16 ENDP

END main16
