;Binary conversion
.model small
.stack 100h
.code
include 'emu8086.inc'
main proc 
    
    
    mov bh,0
    mov ah,1
    int 21h
    mov bl,al 
    
    mov cx,8
   
    putc 0ah
    putc 0dh
    
    top:
    rol bl,1
    jc e 
    jnc e1
    
    
                                  
    e:
    mov ah,2
    mov dl,49
    int 21h 
    inc bh
    jmp e2
    
    
    e1:
    mov ah,2
    mov dl,48
    int 21h
     
    e2:
    loop top 
    
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
            
    add bh,48        
    mov ah,2
    mov dl,bh
    int 21h
    
    main endp
end main