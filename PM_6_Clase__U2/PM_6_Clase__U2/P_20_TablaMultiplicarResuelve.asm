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
tP1_msj_20 db " X ",0
tP2_msj_20 db " ? = ",0

.code
main20 PROC
; Lógica del Programa

;aqui hay que agregar un mensaje 
call readint ; tabla

mov ebx, eax  ; tabla que se va a aplicar
mov ecx, 1 ; contador de la tabla

ciclo:
	mov eax, ebx  ; para regresar el valor de tabla
	call writedec 

	mov edx, offset tP1_msj_20
	call writestring

	mov eax, ecx
	call writedec

	mov edx, offset tP2_msj_20
	call writestring

	;resuelve
	mul ebx
	call writedec

	call crlf

	inc ecx
	cmp ecx, 10
	jle ciclo


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main20 ENDP

END main20
