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
varCheckEndian1_4 dword -220
varCheckEndian2_4 sword -220



.code

 main4 PROC
;Lógica del Programa

mov eax, 0 ; limpiar el registro eax

mov ax, -220


exit
main4 ENDP

END main4