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


PrintLn_10 MACRO texto
	LOCAL msj
	.data
	; �rea de Declaraci�n de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; L�gica del Programa
	mov edx, offset msj
	call writestring
	call crlf

ENDM



.data
; �rea de Declaraci�n de Variables
matriz dword 5,9,15
dword 20,50,3
dword 11,19,8

.code
main10 PROC
; L�gica del Programa

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