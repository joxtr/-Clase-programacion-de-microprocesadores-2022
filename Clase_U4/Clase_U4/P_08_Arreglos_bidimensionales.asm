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
matriz dword 5, 9, 15
dword 20, 50, 3
dword 11, 19, 8

.code
main8 PROC
; L�gica del Programa
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