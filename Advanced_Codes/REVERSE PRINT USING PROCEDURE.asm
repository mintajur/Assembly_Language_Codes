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

CALL INPUT
CALL OUTPUT

MOV AH, 4CH
INT 21H   

MAIN ENDP 

  

INPUT PROC
    MOV AX, @DATA
    MOV DS, AX

    POP BX
    MOV CX,0

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



OUTPUT PROC
    MOV AX, @DATA
    MOV DS, AX 
    
    POP BX
    JCXZ END_
    
     
MOV AH, 2
MOV DL, 10
INT 21H 

MOV AH, 2
MOV DL, 13
INT 21H  



LOOP_:
MOV AH, 2 
POP DX
INT 21H
LOOP LOOP_  

END_:  

    PUSH BX
    RET
    OUTPUT ENDP

