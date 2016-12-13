;take two number from the user and add this two number and subtract second number from first number

DATA SEGMENT
     NUM1 DB ?
     NUM2 DB ?
     RESULT DB ?
     MSG1 DB 10,13,"ENTER FIRST NUMBER : $"
     MSG2 DB 10,13,"ENTER SECOND NUMBER : $"  
     MSG3 DB 10,13,"RESULT OF ADDITION IS : $"
     MSG4 DB 10,13,"RESULT OF SUBTRACTION IS : $"
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA DX,MSG1
      MOV AH,9
      INT 21H
     
      MOV AH,1
      INT 21H
      SUB AL,30H
      MOV NUM1,AL
     
      LEA DX,MSG2
      MOV AH,9
      INT 21H
     
      MOV AH,1
      INT 21H
      SUB AL,30H
      MOV NUM2,AL
     
      ADD AL,NUM1
              
      ;MOV RESULT,AL
     
      MOV AH,0 
      AAA
     
      ADD AH,30H
      ADD AL,30H 
     
      MOV BX,AX
     
      LEA DX,MSG3
      MOV AH,9
      INT 21H
     
      MOV AH,2
      MOV DL,BH
      INT 21H
     
      MOV AH,2
      MOV DL,BL
      INT 21H
      
      LEA DX,MSG4
      MOV AH,9
      INT 21H
      
      MOV AL,NUM1
      SUB AL,NUM2
      ADD AL,30H

      MOV AH,2
      MOV DL,AL
      INT 21H
     
      MOV AH,4CH
      INT 21H     
ENDS
END START

