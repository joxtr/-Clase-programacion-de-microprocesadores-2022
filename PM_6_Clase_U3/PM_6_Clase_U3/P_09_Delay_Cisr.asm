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
msg1_9 db "Mensaje No. ", 0
var1_9 byte 49

terminador db ".",0

.code
main9 PROC
; L�gica del Programa

mov edx, offset msg1_9

mov ecx,9
mov eax, 1000 ; Tiempo en mensaje que se detendra la ejecucion con base de delay

ciclo:
	call writestring
	inc var1_9
	call crlf
	call delay
	loop ciclo

mov eax, 4000
call clrscr

exit

main9 ENDP

END main9