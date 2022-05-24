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

numeros_p2 byte 10,20,30,40,50

.code
main2 PROC
; Lógica del Programa

mov esi,offset numeros_p2
mov eax,[esi]
call writedec

call crlf
call crlf
mov esi,offset numeros_p2
mov eax,0
mov al, [esi]
call writedec


exit


main2 ENDP

END main2