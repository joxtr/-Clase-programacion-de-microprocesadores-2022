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

msj0_P27 db "Ingrese el valor de la base: ",0
msj1_P27 db "Ingrese el valor de la altura: ",0

msj2_P27 db "El area del triangulo es: ",0

base_p27 dword ?
altura_p27 dword ?
resultado_p27 dword ?

.code
main27 PROC
; Lógica del Programa

mov edx, offset msj0_P27
call writeString
call readint
call crlf 

mov base_p27, eax

mov edx, offset msj1_P27
call writeString
call readint
call crlf

mul base_p27 ; eax = base * altura

mov base_p27, 2

mov edx, 0

div base_p27

mov edx, offset msj2_P27
call writeString
call writedec
call crlf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main27 ENDP
END main27