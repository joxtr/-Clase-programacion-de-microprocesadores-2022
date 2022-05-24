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
cadena1_16 db "GARUCO",0
cadena2_16  db "GARUCO",0
.code
main16 PROC
; Lógica del Programa

REPITE:

;SCASB
;Explorar cadena: compara el acumulador (AL, AX o EAX) con el contenido de la
;memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov edi, offset cadena1_16
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov eax, 0
call readchar ; al
call writechar ; echo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ecx, sizeof cadena1_16
REPNZ scasb
mov eax, sizeof cadena1_16; auxiliar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sub eax, ecx
call writedec
CALL CRLF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

JMP REPITE


;TAREA: DETERMINAR EL INDICE EN QUE SE ENCUENTRA LA PRIMERA LETRA QUE NO ES IGUAL  EN LA CADENA
;TAREA 2: ASEGURARSE QUE iNGRESADA UNA LETRA MINUSCULA / MAYUSCULA, PUEDA BUSCAR LA LETRA SIN PROBLEMAS
;Tarea 3: Encontrar todas las apariciones de una misma letra ingresada por el usuario

; PROYECTO (POSIBLE NO ESCUCHE BIEN ): REALIZAR EL PROGRAMA DEL AHORCADO

exit

main16 ENDP

END main16