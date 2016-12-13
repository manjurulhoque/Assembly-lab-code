;Printing reverse triangle


org 100h

mov bx,9

L1:
mov cx,bx 


L2: 
cmp cx,0
jz done 
mov ah,2         
mov dl,'*'
int 21h
LooP L2 

 
dec bx 

mov ah,02h 
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

LooP L1 

done:
ret


  




