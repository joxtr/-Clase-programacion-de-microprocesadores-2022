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


PrintLn_10 MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; Lógica del Programa
	mov edx, offset msj
	call writestring
	call crlf

ENDM



.data
; Área de Declaración de Variables
matriz dword 5,9,15
dword 20,50,3
dword 11,19,8

.code
main10 PROC
; Lógica del Programa

PrintLn_10 " De que fila quieres el  elemento?"
call readInt ;eax
mov ebx, eax ; fila * tot. de elementos

mul ebx

mov ecx,4 ; bytes por tipo de dato

mul ecx ; filas * bytes por tipo de dato

mov esi,eax

PrintLn_10 "Columna deaseada?"
call readint ; eax

mov edi,eax
PrintLn_10 " el valor correspondiente es: "
mov eax, matriz [esi+edi]
call writedec

exit

main10 ENDP

END main10