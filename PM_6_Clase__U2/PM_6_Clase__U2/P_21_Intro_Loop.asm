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
tP1_msj_21 db " X ",0
tP2_msj_21 db " ? = ",0

.code
main21 PROC
; L�gica del Programa

	;LOOP ES UNA INSTRUCCI�N QUE UNICAMENT FUNCIONA CON EL REGISTRO ECX

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
