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
cadena1_15 db "GARUCO",0
cadena2_15  db "GARURS",0
.code
main15 PROC
; Lógica del Programa

;SCASB

;SCASB
;Explorar cadena: compara el acumulador (AL, AX o EAX) con el contenido de la
;memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov edi, offset cadena1_15
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov eax, 0
call readchar ; al
call writechar ; echo

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ebx, 0 ; contador
mov ecx, sizeof cadena1_15

ciclo:
	inc ebx
	cmp ebx, ecx
	jz continuar
	scasb
	jnz ciclo

continuar: 

cmp ebx, ecx
jz no_encontrada

mov eax, ebx
jmp salir

no_encontrada:
	mov eax, 999

salir:
	call writedec

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;TAREA: ASEGURARSE QUE INGRESADA UNA LETRA MINUSCULA/MAYUSCULA, PUEDA BUSCAR LA LETRA SIN PROBLEMAS

;TAREA: ENCONTRAR TODAS LAS APARICIONES DE UNA MISMA LETRA INGRESADA POR EL USUARIO



;TAREA: DETERMINAR EL INDICE EN QUE SE ENCUENTRA LA PRIMERA LETRA QUE NO ES IGUAL  EN LA CADENA
;TAREA 2: ASEGURARSE QUE iNGRESADA UNA LETRA MINUSCULA / MAYUSCULA, PUEDA BUSCAR LA LETRA SIN PROBLEMAS
;Tarea 3: Encontrar todas las apariciones de una misma letra ingresada por el usuario

; PROYECTO (POSIBLE NO ESCUCHE BIEN ): REALIZAR EL PROGRAMA DEL AHORCADO

exit

main15 ENDP

END main15