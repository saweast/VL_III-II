.model small
.stack 256
.data
num1 db 5
num2 db 2
result db 0
.code
main:
mov     ax, @data        
mov     ds, ax  
mov ax, 10h;
mov dx, 55h;
sub ax,dx;
;xor ax, ax
;mov al, num1
;mov ah, num2
;add al, ah
;mov result, al
mov ax,4c00h;
int 21h
end main