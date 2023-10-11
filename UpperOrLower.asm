;Nhap vao 1 chu cai. Neu la thuong in ra "Chu cai thuong".Neu la hoa in ra "Chu cai hoa".
;In ra ky tu dung truoc va dung sau.
;Khong phai la chu cai thi nhap lai
.model small
.stack 100h
.data
    tb1 db 13,10,"Chu in thuong$"
    tb2 db 13,10,"Chu in hoa$"
    tb3 db 13,10,"Ky tu dung truoc:$"
    tb4 db 13,10,"Ky tu dung sau:$"
    tb5 db 13,10,"Nhap lai:$"
.code
main proc
    mov ax,@data
    mov ds,ax 
    start:
    ;nhap 1 ky tu
    mov ah,1
    int 21h
    mov bl,al
    ;neu o ngoai pham vi chu thuong thi nhay checkUpper
    cmp bl,'a'
    jl checkUpper
    cmp bl,'z'
    jg checkUpper
    ;neu o trong chu thuong thi in tb1 va nhay in ky tu truoc,sau
    mov ah,9
    lea dx,tb1
    int 21h
    jmp print_neighbor
    jmp exit
    ;ktra neu o ngoai pham vi chu hoa thi nhap lai
    checkUpper:
    cmp bl,'A'
    jl Print
    cmp bl,'Z'
    jg Print
    ;neu o trong thi in chu cai hoa va nhay in ky tu truoc,sau 
    mov ah,9
    lea dx,tb2
    int 21h 
    jmp print_neighbor
    ;nhap lai 
    Print:
    mov ah,9
    lea dx,tb5
    int 21h
    jmp start          
    ;in ky tu truoc,sau    
    print_neighbor:
    mov ah,9
    lea dx, tb3
    int 21h
    mov dl,bl
    dec dl
    mov ah,2
    int 21h 
            
    mov ah,9
    lea dx, tb4
    int 21h        
    mov dl,bl
    inc dl
    mov ah,2
    int 21h 
    jmp exit
    ;thoat ctr
    exit:
    mov ah,4Ch
    int 21h
    
    main  endp
end