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


.code
main5 PROC
; L�gica del Programa

call randomize ; crea la semilla para generar los randoms solo es necesario llamarlo una vez

;randomrange ; genera un num. aleatorio entre 0 y n-1
			; donde n es el valor que tenga eax
			;el num aleatorio generado se guarda en eax

mov ecx, 10

ciclo:
	mov eax,10 ;n
	call randomrange
	call writeint
	call crlf
	loop ciclo



exit

main5 ENDP

END main5