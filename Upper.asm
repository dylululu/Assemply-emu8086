;nhap ky tu va in ra ky tu hoa
.model small
.stack 100h
.data
    notification db 13,10,'Chuyen sang chu in hoa:$'
    char db ?,'$'
.code
main proc
    mov ax,@data
    mov ds, ax
    ;su dung ham ngat 1 de doc 1 ky tu va luu vao al
    mov ah,1
    int 21h
    ; chuyen thanh in hoa
    sub al,20h
    mov char,al 
    ;in notification
    mov ah,9
    lea dx, notification
    int 21h
    ;in ky tu in hoa
    mov ah,9
    lea dx,char
    int 21h
    ;tro ve DOS
    mov ah,4Ch
    int 21h
    
    main endp
end