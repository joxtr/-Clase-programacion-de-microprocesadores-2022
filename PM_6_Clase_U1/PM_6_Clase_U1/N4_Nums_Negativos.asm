TITLE Introduccion

;DESCRPICI�N
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumno: Armendariz Lopez Jose Jaime
; Universidad autonoma de tamaulipas
; Materia: Programacion de microprocesadores

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
varCheckEndian1_4 dword -220
varCheckEndian2_4 sword -220



.code

 main4 PROC
;L�gica del Programa

mov eax, 0 ; limpiar el registro eax

mov ax, -220


exit
main4 ENDP

END main4