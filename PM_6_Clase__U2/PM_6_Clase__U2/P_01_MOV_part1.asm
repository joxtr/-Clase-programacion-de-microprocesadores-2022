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
var1_1 byte ?
var2_1 word ?
var3_1 dword ?

.code
main1 PROC
; L�gica del Programa

;;;;;;;;;;;;;;SINTAXIS:  mov destino, origen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INMEDIATO A INMEDIATO
;mov 5, 10     ; 5 = 10  ; NO SE PUEDE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INMEDIATO A REGISTRO

MOV AH, 10   ; se puede

;mov ah, 260  NO SE PUEDE , PORQUE EXCEDE LA CAPACIDAD DEL DESTINO 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INMEDIATO A MEMORIA

mov Var1_1, 10  ; SE PUEDE

;mov var1_1, 260 ; NO SE PUEDE PORQUE EXCEDE LA CAPACIDAD DEL DESTINO 

;;;;;;;;;;;;;;;;;;;;;;;;;
;; ACTIVIDAD DE PARTICIPACI�N:
;
;	REALIZAR UNA CONCLUSI�N DEL PROGRAMA 1. (5-10 RENGLONES)
;

exit

main1 ENDP

END main1