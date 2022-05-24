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
tP1_msj_25 db " Ingresa el valor de A: ",0
tP2_msj_25 db " Ingresa el valor de B: ",0

tR1_msj_25 db " Es Primo ",0
tR2_msj_25 db " No es Primo ",0

contador_25 dword 0  ; contador de divisiones enteras

.code
main25 PROC
; Lógica del Programa

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	mov edx, offset tP1_msj_25
	call WRITESTRING   ;valor de A
	call readint	   ;   eax

	mov edx, offset tP2_msj_25
	call WRITESTRING   ;valor de B
	call readint	   ;   eax

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov ebx, eax  ; respaldo de eax en ebx

	mov ecx, 2    ; ; apuntador que comienza en 2
	
	ciclo:
		mov eax, ebx  ; para recuperar el valor del numero 
		mov edx, 0 ; para limpiar el registro 

		div ecx  ; eax / ecx 

		cmp edx, 0  ;para checar si existe redisuo

		jnz continuar
			;camino del NO , es decir, no existe redisuo 
			inc contador_25
	
		continuar:
			inc ecx
			cmp ecx, ebx
			jl ciclo

	;;;;
	;mov eax, contador_25
	;call writedec

	cmp contador_25, 0
	jz esPrimo
		;No es Primo
		mov edx, offset tR2_msj_25
		jmp continuar2

	esPrimo:
		mov edx, offset tR1_msj_25

	continuar2:
		call writeString
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main25 ENDP


END main25