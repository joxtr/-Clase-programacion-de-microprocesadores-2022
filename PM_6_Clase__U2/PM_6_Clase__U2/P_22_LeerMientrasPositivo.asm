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
tP1_msj_22 db " Ingresa un numero: ",0

.code
main22 PROC
; L�gica del Programa

	;LOOP ES UNA INSTRUCCI�N QUE UNICAMENT FUNCIONA CON EL REGISTRO ECX

	mov ecx, 3

	ciclo:
		call readint ; lyendo un numero y guardandolo en eax

		cmp eax, 0
		jng finalizar
		;si es mayor: 
			call writedec
			call crlf
		
		add ecx, 1
		loop ciclo

		finalizar:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main22 ENDP

END main22