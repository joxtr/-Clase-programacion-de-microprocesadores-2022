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
main18 PROC
; L�gica del Programa

;aqui deberia pedir x
call readint 

mov ebx, eax  ; X es el numero que se multiplicara por si mismo

;aqui deberia pedir y
call readint

mov ecx, eax  ; contador (Y)

dec ecx  ; para no realizar una multiplicaci�n adicional
mov eax, ebx ;  <<<---para comenzar las multiplicaciones

ciclo:
	mul ebx

	dec ecx 
	cmp ecx, 0
	jg ciclo

call crlf
call writedec 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main18 ENDP

END main18