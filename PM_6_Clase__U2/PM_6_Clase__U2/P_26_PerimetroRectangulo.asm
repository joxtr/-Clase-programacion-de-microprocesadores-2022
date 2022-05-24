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

.data  ;variables
; Área de Declaración de Variables
tP1_msj_26 db " Ingresa el valor del base: ", 0
tP2_msj_26 db " Ingresa el valor del altura: ", 0

tR1_msj_26 db " El perimetro es: ", 0


;Sintaxis: nombreVariable tipoDato(byte, word, >dword<) valor
;cuando no se tenga un valor de inicio se debe poner el signo de interrogacion (?)


base_26 dword ?
altura_26 dword ?
resultado_26 dword 0


.code
main26 PROC
; Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov edx, offset tP1_msj_26
call writeString
call readint ; eax

mov base_26, eax   ; base_26 = eax

mov edx, offset tP2_msj_26
call writeString
call readint ; eax

mov altura_26, eax   ; altura_26 = eax

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;multiplicacion de base * 2
	mov eax, 2
	mul  base_26    ; eax * base_26 => 2 * base_26  ; resultado en eax
	
	add resultado_26, eax   ;

	;multiplicacion de altura * 2
	mov eax, 2
	mul altura_26 ; eax * altua_26 => 2 * altura_26 ; resultado en eax

	add resultado_26, eax   ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call crlf

	mov edx, offset tR1_msj_26
	call writestring

	mov eax, resultado_26
	call writedec
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main26 ENDP


END main26