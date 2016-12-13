;Print triangle of stars like below
;*
;**
;***
;****
;*****
;******
.CODE

main proc
   
     MOV CX,6
     MOV BX,1
   
     loop1:   
     MOV CX, BX
   
     loop2:
     CMP CX, 0
     JZ done
     mov ah, 2
     mov dl, '*'
     int 21h
   
     loop loop2
   
     inc bx
     cmp bx, 7
     je done
   
     mov ah, 02h
     mov dl, 0dh
     int 21h
     mov dl, 0ah
     int 21h
      
     loop loop1   
ENDP


done:

MOV AH,4CH
INT 21H
RET