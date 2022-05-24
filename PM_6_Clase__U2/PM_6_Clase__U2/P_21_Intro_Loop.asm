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
tP1_msj_21 db " X ",0
tP2_msj_21 db " ? = ",0

.code
main21 PROC
; Lógica del Programa

	;LOOP ES UNA INSTRUCCIÓN QUE UNICAMENT FUNCIONA CON EL REGISTRO ECX

	mov ecx, 10

	ciclo:
		mov eax, ecx
		call writedec
		call crlf

		loop ciclo


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main21 ENDP

END main21
