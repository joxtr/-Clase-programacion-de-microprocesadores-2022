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


PrintLn_15 MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; Lógica del Programa
	push edx
	mov edx, offset msj
	call writestring
	call crlf
	pop edx

ENDM



.data
; Área de Declaración de Variables

.code
main15 PROC
; Lógica del Programa

Println "Ingresa la base: "
call readint
mov ebx, eax

Println "Ingresa la altura: "
call readint

;;; calculo area rectangulo
; calc_area_rectangulo_v3 ebx, eax ; No se puede hacer uso con registros

;
calc_area_rectangulo_v3 var1_15, EAX ; No se puede marca memoria llena 

;
calc_area_rectangulo_v3 5,4 ; de la tercera forma solo se puede hacer uso con inmediatos

;;;;

Println "El area del rectangulo es: "
call writedec

exit

main15 ENDP

END main15