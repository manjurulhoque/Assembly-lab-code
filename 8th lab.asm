;Take some digit as input and show them reverse order
.MODEL SMALL
.STACK

.DATA
    STR1 DB "Enter A Number: $"
    STR2 DB "Reverse: $" 
    STR3 DB " erorr $"


.CODE  
 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
 
    MOV DX, OFFSET STR1
    MOV AH, 09H
    INT 21H
 
    MOV DX, 00
    MOV CX, 00
 
L1:
    MOV AH, 01H
    INT 21H                      
    
    CMP AL, 0DH                   
    
    JE L2
    
    CMP AL,30H
    JL erorr
    CMP AL,3AH
    JGE erorr
                           
    PUSH AX                      
    INC CX                        
    JMP L1                     
 
L2:
    MOV AH, 06H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H                       
    
    MOV DX, OFFSET STR2           
    MOV AH, 09H                   
    INT 21H
 
L3:
    POP AX                        
    MOV DL, AL
    MOV AH, 02H
    INT 21H                      
    LOOP L3                      
   
    MOV AX, 4C00H
    INT 21H
    
Erorr:
    MOV AX,@DATA
    MOV DS,AX
    MOV DX,OFFSET STR3
    MOV AH,09H
    INT 21H
    
        
MAIN ENDP
END MAIN