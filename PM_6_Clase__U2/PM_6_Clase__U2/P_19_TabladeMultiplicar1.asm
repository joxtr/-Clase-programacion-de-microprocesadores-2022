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
tP1_msj_19 db " X ",0
tP2_msj_19 db " ? = ",0

.code
main19 PROC
; L�gica del Programa

;aqui hay que agregar un mensaje 
call readint ; tabla

mov ebx, eax  ; tabla que se va a aplicar
mov ecx, 1 ; contador de la tabla

ciclo:
	mov eax, ebx  ; para regresar el valor de tabla
	call writedec 

	mov edx, offset tP1_msj_19
	call writestring

	mov eax, ecx
	call writedec

	mov edx, offset tP2_msj_19
	call writestring



	call crlf

	inc ecx
	cmp ecx, 10
	jle ciclo



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main19 ENDP

END main19