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
matriz dword 5, 9, 15
dword 20, 50, 3
dword 11, 19, 8

.code
main8 PROC
; Lógica del Programa
mov esi,0
mov eax,matriz[esi]
call writeDec ; 5
add esi,4
mov eax,matriz[esi]
call writeDec ;9
add esi,8
mov eax, matriz[esi] ;20
call writeDec

exit

main8 ENDP

END main8