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

tp1_msj_28 db "Ingrese el numero: ", 0 

tr1_msj_28 db "El valor absoluto es: ", 0 

.code
main28 PROC
; L�gica del Programa

mov edx, offset tp1_msj_28
call writestring
call readint

cmp eax, 0 
jg continuar
	; camino del no
	mov edx, -1
	mul edx

continuar:

mov edx, offset	tr1_msj_28
call writestring
call writedec


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main28 ENDP
END main28