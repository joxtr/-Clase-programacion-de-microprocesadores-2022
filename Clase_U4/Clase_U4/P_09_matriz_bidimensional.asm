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
matriz dword 5,9,15
dword 20,50,3
dword 11,19,8

.code
main9 PROC
; Lógica del Programa
mov esi,0
mov edi,0
mov eax,matriz[esi+edi]
call writeDec

exit

main9 ENDP

END main9