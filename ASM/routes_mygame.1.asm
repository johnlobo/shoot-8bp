
; LISTA DE RUTAS
;================
;pon aqui los nombres de todas las rutas que hagas
ROUTE_LIST
	dw ROUTE0
	dw ROUTE1

; DEFINICION DE CADA RUTA
;==========================
ROUTE0; 

	db 20,3,1
	db 20,-3,1
	db 20,-3,-2
	db 20,3,-2
	db 0

ROUTE1;

	db 20,3,1
	db 10,3,0
	db 20,3,-1
	db 10,3,0
	db 0

