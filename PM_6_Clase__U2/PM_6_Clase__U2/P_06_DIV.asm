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
num_6 dword 4d

.code
main6 PROC
; Lógica del Programa

;add operando1, operando2
;add   destino,    origen  ; el resultado de la suma se guarda en destino.

mov eax, 10d
mov ebx, 3d

mov edx, 0 ; limpia el registro edx
div ebx  ; cociente en eax / residuo en edx ; 10 / 2 = 5    residuo = 0


mov eax, 10

mov edx, 0
div NUM_6  ; 

;div 5  ;NO SE PUEDE CON INMEDIATOS

;CUANDO REALIZAMOS MULTIPLICACIONES CON REGISTROS/MEMORIA DE 32BITS SE APLICA LO EXPLICADO EN CLASE

exit

main6 ENDP

END main6
