.MODEL SMALL
.STACK 100H
.DATA
CAP DB 'A'
.CODE
MAIN PROC
  MOV AX,@DATA
  MOV DS,AX
  PRINT:
  MOV AH, 2
  MOV DL, CAP
  INT 21H
  CMP DL, 'Z' ;LOOP cholte thakbe Z porjonto
  JGE EXIT
  INC CAP ;je porjonto Z khuje na pabe ++ cholbe
  JMP PRINT ;Z porjonto print korbe
  EXIT:
  MOV AH,4CH
  INT 21H

MAIN ENDP
END MAIN