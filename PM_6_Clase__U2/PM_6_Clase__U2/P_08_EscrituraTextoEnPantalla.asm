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
texto1_8 db "Este es el texto a imprimir",0
texto2_8 db "Segunda Linea",0
texto3_8 db "Tercera Linea",0

num_8 dword 4d

.code
main8 PROC
; L�gica del Programa
	
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
