.model small
.stack 100h  
.code 
main proc
   ;display prompt
   mov ah,2        ;display function
   mov dl,'?'      ;character is '?'
   int 21h         ;display character
  
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,1
   int 21h
   mov bh,al
   
   ;go to a new line
   mov ah,2        
   mov dl,10       ;carriage return 
   int 21h         ;execute carriage return
   mov dl,13       ;line feed
   int 21h         ;execute line feed
   
   sub bl,bh
   add bl,48
   mov ah,2
   mov dl,bl
   int 21h

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
