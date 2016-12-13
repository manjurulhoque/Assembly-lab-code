;take 3 digit from user and show them in input order
;Input: 123
;Output: 123
include emu8086.inc 

org 100h
.model small
.stack 100h

.data
data1 db 10     
data2 dw 0

outx db 0ah, 0dh, "Output: $"
input db "Input: $"
     
.code
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
mov cx, 0 
mov bl, 00h
lea dx, input
mov ah, 09h
int 21h
l1:
    mov ah, 1
    int 21h   
    cmp al, 0dh 
    jz ter
     
    mov ah, 0
    mov data2, ax
    sub data2, 30h
    mov dx, data2
    mov data2, bx
    mov ax, data2
    mul data1
    mov bx, ax
    add bx, dx
    loop l1   
    
ter:
    lea dx, outx
    mov ah, 09h
    int 21h
    
    mov ax, bx
    call print_num    

ret
end    