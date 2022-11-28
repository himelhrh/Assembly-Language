.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1 ;Input er jonno likhte hoy
    INT 21H  ;prothom input display jonno

    MOV BL,AL ;prothom input BL er moddhe nisi
    INT 21H ;display korci

    MOV BH,AL ; al er value BH e rakhlam

    ADD BL,BH ; BL = BL + BH

    MOV AH,2 ;output dekhanor jonno likhte hoy
    SUB BL,48 ;ASCII VALUE minus
    MOV DL,BL
    INT 21H


    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN