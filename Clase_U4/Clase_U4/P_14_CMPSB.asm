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
cadena1_14 db "GARUCO",0
cadena2_14  db "GARURS",0
.code
main14 PROC
; L�gica del Programa

;CMPSB
;Comparar cadenas: compara el contenido de dos ubicaciones de memoria direccionadas
;por ESI y EDI

;Las instrucciones CMPSB, CMPSW y CMPSD comparan un operando de memoria al que apunta ESI, con
;un operando de memoria al que apunta EDI
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov esi, offset cadena1_14
mov edi, offset cadena2_14

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof cadena1_14

ciclo:
	dec ecx	
	cmp ecx, 0
	jz continuar
	cmpsb ; comparacion
	jz ciclo	

continuar:

mov eax, ecx
call writedec

; TAREA: Determinar el indice en que se encuentra la primer aletra que no es igual

exit

main14 ENDP

END main14