.model small
.stack 100h  
.data
a db 'Enter two number: $'
b db 'Biggest number is: $'
.code 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    biggest:
    cmp bl,bh
    jg l1   ;jump if greater
    jmp l2
    
    l1:
    mov ah,9
    lea dx,b
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    l2:
    mov ah,9
    lea dx,b
    int 21h
    mov ah,2
    mov dl,bh
    int 21h   
    jmp exit
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
