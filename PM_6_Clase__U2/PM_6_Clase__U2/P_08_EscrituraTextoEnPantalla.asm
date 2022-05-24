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
texto1_8 db "Este es el texto a imprimir",0
texto2_8 db "Segunda Linea",0
texto3_8 db "Tercera Linea",0

num_8 dword 4d

.code
main8 PROC
; Lógica del Programa
	
	mov edx, offset texto1_8
	CAll WriteString
	Call CrLf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov edx, offset texto2_8
	CAll WriteString
	Call CrLf
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov edx, offset texto3_8
	CAll WriteString
	Call CrLf

exit

main8 ENDP

END main8
