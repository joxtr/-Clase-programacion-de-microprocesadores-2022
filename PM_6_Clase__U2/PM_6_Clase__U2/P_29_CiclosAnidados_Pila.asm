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

.code
main29 PROC
; Lógica del Programa

	mov ecx, 1  ; num que se va a imprimir	

	;operaciones con la pila: 
	;push pop

	ciclo:
		mov eax, ecx
		push ecx  ;guadar en la pila el valor de ecx
		mov ecx, 1
		
		ciclo2:
			call writedec
			call crlf
			inc ecx
			cmp ecx, 10
			jle ciclo2
		call crlf
		pop ecx ; obtengo el valor que se guardo en la pila
		inc ecx
		cmp ecx, 10	
		jle ciclo


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main29 ENDP
END main29