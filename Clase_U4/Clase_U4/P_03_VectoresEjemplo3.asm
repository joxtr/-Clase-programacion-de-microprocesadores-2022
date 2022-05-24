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

numeros_p3 byte 10,20,30,40,50

.code
main3 PROC
; Lógica del Programa

mov esi,offset numeros_p3
mov ecx,SizeOf numeros_p3
	ciclo:
	mov al,[esi]
	call writedec
	inc esi
	call crlf
	loop ciclo


exit


main3 ENDP

END main3