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

msj0_ej3 db "Ingresa la calificacion:" , 0

msj1_ej3 db "Tu nota es: " , 0

msjA_ej3 db "A" , 0
msjB_ej3 db "B" , 0
msjC_ej3 db "C" , 0
msjD_ej3 db "D" , 0
msjE_ej3 db "E" , 0
msjF_ej3 db "F" , 0

.code
mainEj4 PROC
; Lógica del Programa

	mov edx, offset msj0_ej3
	call writestring
	call readint ; eax  -> calificacion

	call crlf
	mov edx, offset msj1_ej3
	call writestring

	 cmp eax, 6  ; 
	 je calif_6  ; calif == 6?  si es true, salta
	 jl calif_5  ; calif < 6?  si es true, salta
	 ; si no es algunas de las anteriores, entonces comparo de nuevo...
	 
		cmp eax, 8
		je calif_8  ; calif == 8?  si es true, salta
		jl calif_7  ; calif < 8 y calif > 6?  si es true, salta
		; si no es algunas de las anteriores, entonces comparo de nuevo...

		cmp eax, 9
		je calif_9  ; calif == 9?  si es true, salta
		; si no es algunas de las anteriores, entonces es 10

		mov edx, offset msjA_ej3
		jmp salir

	calif_6:
		mov edx, offset msjE_ej3
		jmp salir
	
	calif_5:
		mov edx, offset msjF_ej3
		jmp salir

	calif_8:
		mov edx, offset msjC_ej3
		jmp salir

	calif_7:
		mov edx, offset msjD_ej3
		jmp salir

	calif_9:
		mov edx, offset msjB_ej3
		jmp salir

salir:
	call crlf 
	call writeString

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
mainEj4 ENDP
END mainEj4