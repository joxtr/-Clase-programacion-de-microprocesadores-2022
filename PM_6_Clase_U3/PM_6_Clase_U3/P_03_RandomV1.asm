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
main3 PROC
; L�gica del Programa

call randomize ; crea la semilla para generar los randoms solo es necesario llamarlo una vez

mov ecx,10 ; cuando se usa el ciclo el limite de numeros desplegados se designa con el numero puesto en ecx

ciclo:
	call random32 ;eax
	call writeint
	call crlf
	loop ciclo

exit

main3 ENDP

END main3