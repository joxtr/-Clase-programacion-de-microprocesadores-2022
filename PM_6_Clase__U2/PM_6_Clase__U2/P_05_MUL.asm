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
num_5 dword 10d

.code
main5 PROC
; L�gica del Programa

;add operando1, operando2
;add   destino,    origen  ; el resultado de la suma se guarda en destino.

mov eax, 10d
mov ebx, 5d

mul ebx  ; el resultado estar� en eax ; 10 * 5 = 50

MUL NUM_5

;mul 5  ;NO SE PUEDE CON INMEDIATOS

;CUANDO REALIZAMOS MULTIPLICACIONES CON REGISTROS/MEMORIA DE 32BITS SE APLICA LO EXPLICADO EN CLASE

exit

main5 ENDP

END main5
