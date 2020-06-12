; multi-segment executable file template.



data segment
    ; definicion de datos
    mensaje db "Hola mundo. Pulsa para finalizar$"
ends
                                                                      


stack segment
    ; reserva de espacio
    ; dw   128  dup(0)                                               
ends  



code segment    
    
; creacion de procedimientos (funciones):
    sumados proc
        ; codigo del procedimiento
        ret
    sumados endp
    
    
start:
    mov ax, data     ; agregar el segmento de datos al acumulador                    
    mov ds, ax       ; agrega los datos a dx
    mov es, ax       ; agrega los datos al registro exta
                       
                       
    ; codigo principal
    lea dx, mensaje  ; carga a dx la direccion del texto
    mov ah, 9        ; manda la informacion a la pantalla (interrup 9)
    int 21h          ; salida de string en ds:dx
                                                                                                                                      
        
    mov ah, 1        ; valor 1 a al registro hihg de ax
    int 21h          ; funcion del SO para ejecurar la interrupcion 1
          
    
    mov ax, 4c00h    ; regresa al sistema operativo DOS.
    int 21h          ; Interrupcion que llama a DOS finalizar 
ends

end start
