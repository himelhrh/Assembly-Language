.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1 ;Input er jonno likhte hoy
    INT 21H  ;prothom input display jonno

    MOV BL,AL ;prothom input BL er moddhe nisi
    INT 21H ;display korci

    MOV CL,AL ; AL er value CL e rakhlam
    SUB BL,CL ; BL = BL - CL
    ADD BL,48 ;ASCII VALUE minus



    MOV AH,2 ;output dekhanor jonno likhte hoy
    
    MOV DL,BL
    INT 21H


    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN