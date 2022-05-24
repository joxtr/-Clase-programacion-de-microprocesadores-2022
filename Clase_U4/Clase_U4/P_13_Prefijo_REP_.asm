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
origen db "francisco",0
destino db 20 dup ("G")
.code
main13 PROC
; Lógica del Programa

;Mover datos de cadena: 
;copia los datos de la memoria direccionada por ESI a la memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof origen
mov eax, ecx
call writedec
call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov esi, offset origen
mov edi, offset destino

;rep movsb ;repite movsb mientras que se cumpla ecx > 0

ciclo:
	movsb
	loop ciclo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov edx, offset destino
call writestring
call crlf

exit

main13 ENDP

END main13