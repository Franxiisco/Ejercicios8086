; multi-segment executable file template.

data segment
    ; add your data here! 
    m1 db "Numero 1: ","$"
    m2 db "Numero 2: ","$"
    m3 db "Resultado: ","$"
    var1 db 0
    var2 db 0
ends

code segment
start:  

    mov ax, data
    mov ds, ax
    mov es, ax 
            
    ; primer mensaje
    lea dx, m1
    mov ah, 9h
    int 21h
    
    ; leer el primer numero
    mov ah, 1h
    int 21h
    sub al, 30h
    mov var1, al       
            
    
    ; segundo mensaje
    lea dx, m2
    mov ah, 9h
    int 21h
    
    ; leer el segundo numero
    mov ah, 1h
    int 21h
    sub al, 30h
    mov var2, al
    mov bl, var2
    
    ; suma
    add bl, var1
    mov ah, 9h
    lea dx, m3
    int 21h
    mov dl, bl
    add dl, 30h
    mov ah, 2h
    int 21h        
          
   
   
   
         
    mov ah, 1
    int 21h
            
    mov ax, 4c00h 
    int 21h    
ends

end start ; set entry point and stop the assembler.
