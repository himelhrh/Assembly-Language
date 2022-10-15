.model small
.stack 100h      
.data
msg db 'HELLO!$'
.code
main proc
    ;intitalize data segment
    mov ax,@data
    mov ds,ax        ;intialize ds
    
    ;display message
    lea dx,msg       ;get message
    mov ah,9         ;display string function
    int 21h 
    
    ;return to dos
    mov ah,4ch
    int 21h  
main endp
	end main
