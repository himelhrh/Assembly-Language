.model small
.stack 100h
.code
main proc
    ;display prompt
    mov ah,2        ;display function
    mov dl,'?'      ;character is '?'
    int 21h         ;display character
    
    ;input a character
    mov ah,1        ;read character
    int 21h         ;character in AL  
    mov bl,al       ;save it in bl    
    
    ;go to a new line
    mov ah,2        
    mov dl,10       ;carriage return 
    int 21h         ;execute carriage return
    mov dl,13       ;line feed
    int 21h         ;execute line feed
    
    ;display character
    mov dl,bl       ;retrieve character
    int 21h
    
    ;return to dos
    mov ah,4ch      ;dos exit function
    int 21h
    main endp
end main 
    
;The rason we had to move the input character from al to bl is that the int 21h, function 2, changes al. 
;When a program termintes, it should return control to DOS. This can be accomplished by executing int 21h, function 4ch.    
