.model small
.stack 100h  
.data
value db 3
.code 
main proc
    
     mov ax,@data 
     mov ds,ax
         
     mov ah,2    
     add value,48
     mov dl,value   
     int 21h     
           
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
