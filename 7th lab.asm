;Implement an assembly code to 
;-	take 2 single character input 
;-	Store them in 2 variables
;-	Convert the uppercase one into Lowercase
;-	Convert the Lowercase  one into uppercase
;-	Display them

org 100h
.model small 


.data
str1 db 'Enter Lower Case: $'
str2 db 'Enter Upper Case: $'
str3 db 'Result: Lower Case to Upper Case: $'
str4 db ' Upper Case to Lower Case: $'  
strx db ?
stry db ?


.code
main proc
    
    lea dx, str1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    
    
    sub al, 20h         
    mov strx, al
    
    ; new line
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    lea dx, str2
    mov ah, 09h
    int 21h
     
    
    mov ah, 01h
    int 21h
    
    add al, 20h
    mov stry, al
    
         
    
    ; new line
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    lea dx, str3
    mov ah, 09h
    int 21h
    
    
    mov dl, strx
    mov ah, 02h
    int 21h 
    
    lea dx, str4
    mov ah, 09h
    int 21h

    mov dl, stry
    mov ah, 02h
    int 21h
    
    
endp
end main

