;Nhap vao 1 chu cai. Neu la thuong in ra "Chu cai thuong".Neu la hoa in ra "Chu cai hoa".
;In ra ky tu dung truoc va dung sau.
;Khong phai la chu cai thi nhap lai
.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    

    mov ah,4CH
    int 21h               
    main endp
end