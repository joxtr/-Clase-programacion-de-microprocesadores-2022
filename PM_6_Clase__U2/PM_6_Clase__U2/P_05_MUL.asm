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
num_5 dword 10d

.code
main5 PROC
; Lógica del Programa

;add operando1, operando2
;add   destino,    origen  ; el resultado de la suma se guarda en destino.

mov eax, 10d
mov ebx, 5d

mul ebx  ; el resultado estará en eax ; 10 * 5 = 50

MUL NUM_5

;mul 5  ;NO SE PUEDE CON INMEDIATOS

;CUANDO REALIZAMOS MULTIPLICACIONES CON REGISTROS/MEMORIA DE 32BITS SE APLICA LO EXPLICADO EN CLASE

exit

main5 ENDP

END main5
