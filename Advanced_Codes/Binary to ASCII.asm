.MODEL SMALL
.STACK 100H
.DATA
M DB 'ENTER 8 BIT ASCII BINARY VALUE: $'
MB DB 10,13, 'THE ASCII VALUE IS: $'  

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    XOR BL,BL 
    
    CALL INPUT 
    CALL OUTPUT
    
    
    MOV AH,4CH
    INT 21H 
   
ENDP MAIN

 

INPUT PROC
    MOV AX,@DATA
    MOV DS,AX


MOV AH,9
LEA DX,M
INT 21H 

 

MOV AH,1
INT 21H

 

WHILE_:
CMP AL,0DH
JE END_
AND AL,0FH
SHL BL,1
OR BL,AL 

 

INT 21H
JMP WHILE_
END_:   

RET
ENDP INPUT

 

OUTPUT PROC
    MOV AX,@DATA
    MOV DS,AX

 

MOV CX,2
    
    AGAIN:    
    MOV DL,BL
    SHR DL,4
    ROL BL, 4
    CMP DL,10
    JGE LETTEROUT
    
    ADD DL,30H
    JMP EXIT
    
    LETTEROUT:
    MOV AH,2
    ADD DL,55
    INT 21H 
    
    EXIT:
    LOOP AGAIN  
     
    
    MOV AH,9
    LEA DX,MB
    INT 21H

 

MOV AH,2
MOV DL,BL
INT 21H 

 

RET 
ENDP OUTPUT

 

