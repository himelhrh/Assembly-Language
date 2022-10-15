.model small
.stack 100h  
.data
a equ '2'
b equ 'Bangladesh $' 
c db b
.code 
main proc
    
    mov ax,@data
    mov ds,ax  
    
    mov ah,1
    int 21h
    mov bl,a
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main


;db er jonno memory te jaiga dorkar hoto but equ er jonno jayga layby na. ata constant hisaby akkaito hoby. 
;string type er data k constant(equ) er maddomy acces kora jaby na. coz staring type er jonno obbosoi memory te jayga lagby.
