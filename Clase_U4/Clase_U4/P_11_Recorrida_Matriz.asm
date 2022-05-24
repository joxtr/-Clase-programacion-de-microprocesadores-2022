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


PrintLn_11 MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; Lógica del Programa
	mov edx, offset msj
	call writestring
	call crlf

ENDM



.data
; Área de Declaración de Variables
matriz_p1 dword 3,5,11
dword 12,6,7
dword 10,9,4

tamDatos dword 4
tamFilas dword 3
tamcolumnas dword 3

.code
main11 PROC
; Lógica del Programa

mov ecx,0
ciclofilas:
	push ecx ; respaldo de la fila actual
	mov eax, tamDatos
	mul tamcolumnas
	mul ecx
	mov esi, eax ; aqui se almacenara la posicion de la fila
	mov ecx,0
	ciclocolumnas:
		mov eax, ecx 
		mul tamDatos
		mov edi, eax
		mov eax,matriz_p1 [esi+edi]
		call writedec
		println_11 " "
		inc ecx
		cmp ecx, tamcolumnas
		jl ciclocolumnas ; recordatorio para investigar : con jl creo especificas si un numero es menor al otro creo investigar :( y borrar esto luego
		call crlf          ;Tarea 1: imprimir la sumatoria de una matriz por fila   
							; Tarea 2: identificar el valor mas grande de una matriz
		pop ecx              ; Tarea 3: identificar el valor mas pequeño de una matriz
		inc ecx			     ;Tarea 4: contar la cantidad de elementos pares en una matriz
		cmp ecx, tamfilas	 ;Tarea 5: dado una matriz donde el maximo de cada elemento es 10 y el minimo es 0, calcular el complemento de la matriz para cada elemento
		jl ciclofilas		 ;Tarea 6: imprimir el numero de la fila donde se encuentre el valor mas grande
		PrintLn_11 "Se termino el recorrido"	;Tarea 7: calcular la determinante de una matriz de 2x2

exit

main11 ENDP

END main11