.MODEL SMALL
.STACK 100H
.DATA

.CODE 
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, '?'
    INT 21H

    MOV CX, 0  

    CALL INPUT
    
    CALL NEWLINE 
    CALL REVERSE

MAIN ENDP

  
INPUT PROC 
    MOV AX, @DATA
    MOV DS, AX   
    
    POP BX    
    MOV AH,1
    INT 21H   
  
WHILE_:
    CMP AL, 0DH 
    JE END_WHILE 
    PUSH AX

    INC CX

    INT 21H

    JMP WHILE_ 

END_WHILE: 


    PUSH BX
    RET

INPUT ENDP


NEWLINE PROC
    MOV AX, @DATA
    MOV DS, AX   
    POP BX
    
    MOV AH, 2
    MOV DL, 10
    INT 21H 

    MOV AH, 2
    MOV DL, 13
    INT 21H     

    PUSH BX
    RET

NEWLINE ENDP



REVERSE PROC
    MOV AX, @DATA
    MOV DS, AX 
    
    POP BX

    JCXZ END_
    MOV AH, 2 

PRINT:
    POP DX
    INT 21H
    LOOP PRINT 

END_: 

    PUSH BX
    RET 

REVERSE ENDP