;In ra bang 10x10 dau "*"
.model small
.stack 100h
.data
.code
main proc
    ;gan 10 vao thanh ghi bl    
    mov bl,10
    start:
    ;xuong dong
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    ;so sanh voi 0
    cmp bl,0
    je exit
    jmp circle
    ;vong lap in 10 dau "*" o 1 hang
    circle:
    mov cx,10
    mov ah,2
    mov dl, "*"
    lap: 
    int 21h 
    loop lap
    ;giam bl di 1
    dec bl
    jmp start
    ;tro ve DOS
    exit:
    mov ah,4CH
    int 21h               
    main endp
end