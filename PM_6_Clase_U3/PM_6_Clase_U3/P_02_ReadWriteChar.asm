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
main2 PROC
; Lógica del Programa

call readchar ;eax... guarda el caracter que se ingrese (no espera al enter)
			  ; no tiene un ECHO por defecto

call writechar ;imprime el caracter que esta en eax

exit

main2 ENDP

END main2