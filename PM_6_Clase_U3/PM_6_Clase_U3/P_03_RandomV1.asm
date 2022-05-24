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
main3 PROC
; Lógica del Programa

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