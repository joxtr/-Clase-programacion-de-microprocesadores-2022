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
txt_num1_10 db "Ingresa un Numero 1: ",0
txt_num2_10 db "Ingresa el Numero 2: ",0

txt_resultado_10 db "La suma de ambos numeros es: ", 0

.code
main10 PROC
; Lógica del Programa
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov edx, offset txt_num1_10  ;
	call writeString
	call CrLf

	call readInt  ; almacena el valor ingresado por el usuario en eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call crlf
	mov edx, offset txt_num2_10  ;
	call writeString
	call CrLf

	mov edx, eax ; respaldar el valor de eax (num1) en edx, debido a que de momento edx ya no se esta utilizando

	call readint ; almacena el valor ingresado por el usuario en eax
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call crlf

	;add edx, eax 
	
	add eax, edx
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov edx, offset txt_resultado_10
	call writeString
	call writeint

	call crlf
	
exit

main10 ENDP

END main10