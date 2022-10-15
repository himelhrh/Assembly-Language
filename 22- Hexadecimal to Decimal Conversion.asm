.model small
.stack 100h
.data
a db 'Enter a hex digit: $'
b db 'In decimal: $'
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
    sub bl,17d   ;suppose user give 'A'. the ascii value of 'A' is 65. So, 65-17=48(which is 0)
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h 
    
    mov ah,2
    mov dl,49d   ;first we print 1(49d equal to 1)
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
