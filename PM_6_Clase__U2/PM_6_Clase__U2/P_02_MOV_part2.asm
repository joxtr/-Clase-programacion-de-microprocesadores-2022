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
var1_2 byte ?
var2_2 word ?
var3_2 dword ?

.code
main2 PROC
; Lógica del Programa

;;;;;;;;;;;;;;SINTAXIS:  mov destino, origen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REGISTRO A INMEDIATO
;mov 5, ax     ; 5 = AX  ; NO SE PUEDE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REGISTRO A REGISTRO

MOV AH, BL   ; se puede    ; ax = 16BITS  ---> AL AH  

;mov aX, BL  ;NO SE PUEDE , PORQUE EXCEDE LA CAPACIDAD DEL DESTINO 

;MOV BL, AX   ;NO SE PUEDE PORQUE SE EXCEDE LA CAPACIDAD....

; -----> NO SE PUEDE REALIZAR EL MOV ENTRE DIFERENTES TIPOS DE DATOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; REGISTRO A MEMORIA

mov Var1_2, AL  ; SE PUEDE

;mov var1_2, ax ; NO SE PUEDE PORQUE EXCEDE LA CAPACIDAD DEL DESTINO 

;mov var2_2, al  ; no se puede

;;;;;;;;;;;;;;;;;;;;;;;;;
;; ACTIVIDAD DE PARTICIPACIÓN:
;
;	REALIZAR UNA CONCLUSIÓN DEL PROGRAMA 2. (5-10 RENGLONES)
;

exit

main2 ENDP

END main2
