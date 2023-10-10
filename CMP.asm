;nhap vao 1 ky tu. 
;Neu la 's','S' thi in Buoi sang  
;Neu la 't','T' thi in Buoi trua
;Neu la 'c','C' thi in Buoi chieu
.model small
.stack 100h
.data
    message1 db "Buoi sang$"
    message2 db "Buoi chieu$"
    message3 db "Buoi toi$" 
    z db "Nhap lai ban oi:$"
    y db "Nhap di ban:$"                                                        
.code
    main proc
      ;khoi tao ds 
      mov ax, @data ;khoi dau thanh ghi ds
      mov ds,ax ;tro thank ghi ds ve dau doan data
      ;in xau ky tu y
      mov  ah,9
      lea dx,y
      int 21h 
         
      start:
      ;xuong dong
      MOV AH, 2
      MOV DL, 0Dh
      INT 21h
      MOV DL, 0Ah
      INT 21h
      
      ;nhap 1 ky tu
      mov Ah , 1
      int 21h
                 
      ;compair ky tu voi 's','S'
      CMP al, 's'
      JE a:
      cmp al, 'S' 
      JE a:
      CMP al, 'c'
      ;compair ky tu voi 't','T'
      JE b:
      cmp al, 'C'
      JE b: 
      ;compair ky tu voi 't','T'
      CMP al, 'T'
      JE c:
      cmp al, 't'
      JE c:  
      ;in xau ky tu z
      mov ah,9
      lea dx, z
      int 21h
      ;nhay khong dieu kien ve start:           
      jmp start
      ;cac ham de in 'buoi sang','buoi trua','buoi toi'
       
      a:      
      mov ah,09h
      lea dx, message1
      int 21h
      jmp exit     
      b:   
      mov ah,09h
      lea dx, message2
      int 21h
      jmp exit 
      c:     
      mov ah,09h
      lea dx, message3
      int 21h
      jmp exit
      ;tro ve DOS
      exit:
      mov ah, 4Ch
      int 21h   
    main endp
end main