;Take 10 digit and put them on stack and print them in reverse order
include emu8086.inc 

org 100h
.model small
.stack 100h

.data
data1 dw 0     
v dw 0 
cc db 0    

pri db "Enter number: $"
outx db 0ah, 0dh, "Output: $"
     
.code     
lea dx, pri
mov ah, 09h
int 21h
    
mov cx, 9
l1:         
    mov ah, 01h
    int 21h
    mov bx, ax
    
    cmp bl, 30h 
    je ok
    cmp bl, 31h 
    je ok
    cmp bl, 32h 
    je ok
    cmp bl, 33h 
    je ok
    cmp bl, 34h 
    je ok
    cmp bl, 35h 
    je ok
    cmp bl, 36h 
    je ok
    cmp bl, 37h 
    je ok
    cmp bl, 38h 
    je ok
    cmp bl, 39h 
    je ok
    
    jnz nook      
            
    nook:
        print "Error!"
        cmp cl, 0
        jz output        
        loop l1
    
    ok:
       push bx
       cmp cl, 0
       jz output
       loop l1
    
output:    
lea dx, outx
mov ah, 09h
int 21h          
    
mov cx, 10
l2:
    pop bx
    mov ah, 02h
    mov dl, bl
    int 21h 
    dec cx
    cmp cx, 0
    jnz l2
    
end    