.model small
.stack 100h 
.data       ;using data segment for declaring variable 
var1 db 3   ;declare a variable and store 3 into var1  
var2 db ?   ;we'll take this value from user 
.code
main proc
    mov ax,@data       ;data must be declare inside main proc
    mov ds,ax          ;move the ax register value into the ds
    
    mov ah,2           ;declaring the display function
    add var1,48        ;ascii value 51 means 3
    mov dl,var1        ;display the var1 value
    int 21h
    
    mov ah,1           ;taking input from user for var2
    int 21h
    mov var2,al
     
    mov ah,2
    mov dl,10          ;for printing new line
    int 21h
    mov dl,13          ;return carriage
    int 21h 
     
    mov ah,2           
    mov dl,var2        ;printing the var2 value
    int 21h 
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main