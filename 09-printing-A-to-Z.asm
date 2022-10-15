.model small
.stack 100h  
.data
var db 'Loo Concept $'
.code
main proc
     
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,var
    int 21h   
    
    mov ah,2
    mov dl,10
    int 21h  
    mov dl,13
    int 21h
     
    mov cx,26 
    mov ah,2
    mov dl,'A'
    
    level1:
    int 21h
    inc dl
    loop level1 
     
    mov ah,4ch
    int 21h
    main endp
end main
