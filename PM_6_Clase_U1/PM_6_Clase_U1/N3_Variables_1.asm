TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumno: Armendariz Lopez Jose Jaime
; Universidad autonoma de tamaulipas
; Materia: Programacion de microprocesadores

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
varTest_3  word 260d
varCheckEndian word 0CEFDh
varCheckEndian2 dword 0EFACBDh



.code

 main3 PROC
;Lógica del Programa

;mov ax, 10

;mov ah, 12

mov ax, 260

exit
main3 ENDP

END main3