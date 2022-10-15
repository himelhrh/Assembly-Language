Take a number and print it in the next line: 
.model small
.stack 100h
.code   
;.data
;var db ?     
main proc    
    
      mov ah,1
      int 21h
      mov bl,al
      
      mov ah,2
      mov dl,10   ;print new line
      int 21h  
      mov dl,13   ;return carriage(cursor will point at the beginning of the line)
      int 21h
      
      mov ah,2
      mov dl,bl
      int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
