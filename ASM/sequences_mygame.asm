;=====================================================================
; hasta 31 secuencias de animacion 
;=====================================================================
; debe ser una tabla fija y no variable
; cada secuencia contiene las direcciones de frames de animacion ciclica
; cada secuencia son 8 direcciones de memoria de imagen
; numero par porque las animaciones suelen ser un numero par
; un cero significa fin de secuencia, aunque siempre se gastan 8 words /secuencia
; al encontrar un cero se comienza de nuevo. 
; si no hay cero, tras el frame 8 se comienza de nuevo
; si a un sprite se le asigna la secuencia cero es que no tiene secuencia
; empezamos desde la secuencia 1

;--------------secuencias de animacion  --------
_SEQUENCES_LIST
dw G_black4x8,1,0,0,0,0,0,0;1
dw G_black8x14,1,0,0,0,0,0,0;2
dw G_explosion_0,G_explosion_1,G_explosion_2,G_explosion_3,G_explosion_4,G_black8x14,1,0;3
dw G_baddie_ship_0,0,0,0,0,0,0,0;4 right
dw G_baddie_ship_1,0,0,0,0,0,0,0;5 up-right
dw G_baddie_ship_2,0,0,0,0,0,0,0;6 up
dw G_baddie_ship_3,0,0,0,0,0,0,0;7 up-left
dw G_baddie_ship_4,0,0,0,0,0,0,0;8 left
dw G_baddie_ship_5,0,0,0,0,0,0,0;9 down-left
dw G_baddie_ship_6,0,0,0,0,0,0,0;10 down
dw G_baddie_ship_7,0,0,0,0,0,0,0;11 down-right
;-------- MACRO SECUENCIAS ----------------------
; son grupos de secuencias, una para cada direccion
; el significado es:
; still, left, right, up, up-left, up-right, down, down-left, down-right
; se numeran desde 32 en adelante
; un cero significa que se asigna la ultima que tenga. si se usa el cero hay que asignar alguna al iniciar
_MACRO_SEQUENCES
db 0,8,4,6,7,5,10,9,11;32 --> secuencias del baddie_ship, id=32

