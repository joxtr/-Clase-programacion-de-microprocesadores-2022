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
tP1_msj_23 db " Ingresa un numero: ",0

.code
main23 PROC
; L�gica del Programa
	
	mov ecx, 1  ; num que se va a imprimir
	mov ebx, 1  ; cantidad de repeticiones

	ciclo:
			mov ebx, 1
			mov eax, ecx
		ciclo2:
			call writedec
			call crlf
			inc ebx
			cmp ebx, 10
			jle ciclo2

		call crlf
		inc ecx
		cmp ecx, 10
		jle ciclo


			

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main23 ENDP

END main23