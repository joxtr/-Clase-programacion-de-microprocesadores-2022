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
tP1_msj_22 db " Ingresa un numero: ",0

.code
main22 PROC
; Lógica del Programa

	;LOOP ES UNA INSTRUCCIÓN QUE UNICAMENT FUNCIONA CON EL REGISTRO ECX

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