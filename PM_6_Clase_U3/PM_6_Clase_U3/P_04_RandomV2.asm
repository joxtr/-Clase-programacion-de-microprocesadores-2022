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
main4 PROC
; Lógica del Programa

call randomize ; crea la semilla para generar los randoms solo es necesario llamarlo una vez

;randomrange ; genera un num. aleatorio entre 0 y n-1
			; donde n es el valor que tenga eax
			;el num aleatorio generado se guarda en eax

mov eax, 10
call randomrange

call writeint
call crlf


exit

main4 ENDP

END main4