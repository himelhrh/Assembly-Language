.model small
.stack 100h
.code 
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    cmp bl,bh
    jg a 
    jmp b
    
    a:
    cmp bl,cl
    jg pbl 
    
    b:
    cmp bh,cl 
    jg pbh
    jmp pcl

    pbl:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit 
    
    pbh:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit  
    
    pcl:
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
