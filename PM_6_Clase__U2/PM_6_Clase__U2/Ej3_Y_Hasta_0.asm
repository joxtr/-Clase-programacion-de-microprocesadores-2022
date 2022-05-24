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

msj0_ej3 db "Ingresa el valor de Y:" , 0
msj1_ej3 db "Ingresa un numero: " , 0
msj2_ej3 db "El valor actual de Y es: " , 0


.code
mainEj3 PROC
; Lógica del Programa

mov edx, offset msj0_ej3
call WriteString   ; despliega el msj0

call ReadInt ; eax

mov ebx, eax  ; respalda el valor de Y en ebx

ciclo:
	mov edx, offset msj1_ej3
	call WriteString
	call readInt  

	sub ebx, eax  ; ebx - eax

	mov edx, offset msj2_ej3
	call writeString
	mov eax, ebx
	call writeInt

	call crlf

	cmp ebx, 0 
	jg ciclo


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
mainEj3 ENDP
END mainEj3