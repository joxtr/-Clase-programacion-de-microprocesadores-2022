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
tP1_msj_24 db " Ingresa un numero: ",0

tR1_msj_24 db " Es Primo ",0
tR2_msj_24 db " No es Primo ",0

contador_24 dword 0  ; contador de divisiones enteras

.code
main24 PROC
; L�gica del Programa
	
	mov edx, offset tP1_msj_24
	call WRITESTRING
	call readint  ; eax

	mov ebx, eax  ; respaldo de eax en ebx

	mov ecx, 2    ; ; apuntador que comienza en 2
	
	ciclo:
		mov eax, ebx  ; para recuperar el valor del numero 
		mov edx, 0 ; para limpiar el registro 

		div ecx  ; eax / ecx 

		cmp edx, 0  ;para checar si existe redisuo

		jnz continuar
			;camino del NO , es decir, no existe redisuo 
			inc contador_24
	
		continuar:
			inc ecx
			cmp ecx, ebx
			jl ciclo

	;;;;
	;mov eax, contador_24
	;call writedec

	cmp contador_24, 0
	jz esPrimo
		;No es Primo
		mov edx, offset tR2_msj_24
		jmp continuar2

	esPrimo:
		mov edx, offset tR1_msj_24

	continuar2:
		call writeString
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit
main24 ENDP

;Tarea. Investigar �Qu� es la PILA(STACK)?



END main24