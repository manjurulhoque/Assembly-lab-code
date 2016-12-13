;Take an integer input from keyboard and print corresponding diamond of stars.
org 100h
.stack 100h

.data
     i db ?
     j db ?
     k db ?
           
      num db '1'    
      C1 db  1
        
      input  db  ?
    
      C2 db ?
     
    
.code
.startup
    
    mov ah, 1
    int 21h
    mov j, al    
    
     
    mov input, al
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h 
    
                 
   L1:
        
    mov bl, j
    mov i, bl
                                       
    cmp i, '1'
    je L2
                        
    space_loop:
               
    mov dl, ' '
    mov ah, 2
    int 21h
            
    dec i
    cmp i, '1'
    jne space_loop
        
   L2:
                   
     mov bl, C1
     mov k, bl
                                       
   NL:
            
      
     mov al, '*'
     mov bl, 2
     div al
                                 
  
     cmp al, 0
     je ps
            
     mov dl,'*'
     mov ah, 2
     int 21h

         
     ps:
                    
     mov dl, ' '
     mov ah, 2
     int 21h
                    
           
     dec k
     cmp k, 0
     jg NL
        
     add C1, 1        
     inc num
        
       
     mov ah, 2
     mov dl, 0dh
     int 21h
     mov dl, 0ah
     int 21h
        
     dec j
     cmp j, '0'
     jne L1
    
    
  
     mov bl, input
     mov j, bl                                    
                                        
     mov bl, 1
     mov C1, bl
    
     dec num                      
   
     mov bl, input
     sub bl, 30h
     mov C2, bl 
     
  L3:
                       
                  
    mov bl, C1
    mov i, bl
                                   
        
    space_loop2:
             
            
     mov dl, ' '
     mov ah, 2
     int 21h
             
     dec i
     cmp i, 0
     jne space_loop2 
        
        
       
     inc C1
        
        
     mov bl,C2
     mov k, bl
        
     dec num
        
        
       
   L4:
        
     mov al, '*'
     mov bl, 2
     div al
            
     cmp al, 0
     je L5
            
     mov ah, 2
      mov dl, '*'
     int 21h
            
   L5:            
                
     mov ah, 2
     mov dl, ' '
     int 21h
                
     dec k
     cmp k, 1
     jne L4
        
     dec C2
        
        
     mov ah, 2
     mov dl, 0dh
     int 21h
     mov dl, 0ah
     int 21h
        
        
     dec j
     cmp j, '1'    
     jne L3
           
           
    
     mov ah, 2
     mov dl, 0dh
     int 21h
     mov dl, 0ah
     int 21h
    
     .exit

    ret





