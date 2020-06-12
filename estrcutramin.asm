
.stack

.data
    saludo db "Hola mundo $"
                                  

.code
    
    mov ax, data
    mov ds, ax
    mov es, ax
    
    
    mov ah, 09h
    lea dx, saludo
    int 21h
       
       
       
    mov ax, 4c00h
    int 21h
    
    
end

