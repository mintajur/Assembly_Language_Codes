.MODEL SMALL
.STACK 100H
.DATA
M DB 'ENTER 8 BIT ASCII BINARY VALUE: $'
MB DB 10,13, 'THE ORIGINAL VALUE IS: $'  
ONE DB 10,13, 'TOTAL 1 BITS: $' 
ZER DB 10,13, 'TOTAL 0 BITS: $'  
OD DB ' (ODD)$' 
EVN DB ' (EVEN)$' 
A DB 30H
B DB 30H
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    XOR BL,BL 
    
    CALL INPUT 
    CALL OUTPUT
    CALL CHECK
    
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

 


MOV CX,8
PRINT:
ROL BL,1
JNC ZERO

 

INC A
JMP NEXT
 

 

ZERO:
INC B

 


NEXT:
LOOP PRINT

 

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

 

CHECK PROC
    MOV AX,@DATA
    MOV DS,AX

 

    MOV AH,9
    LEA DX,ONE
    INT 21H 
    MOV AH,2
    MOV DL,A
    INT 21H
      

 

AND A,01H
JZ EVEN
 

 

  MOV AH,9
    LEA DX,OD
    INT 21H 
    JMP AG
    
   EVEN:
   MOV AH,9
    LEA DX,EVN
    INT 21H 
    
    AG:
    
     MOV AH,9
    LEA DX,ZER
    INT 21H 
    MOV AH,2
    MOV DL,B
    INT 21H
      

 

AND B,01H
JZ EVENZ   

 

    MOV AH,9
    LEA DX,OD
    INT 21H 
    JMP ENDD_
    
   EVENZ:
   MOV AH,9
    LEA DX,EVN
    INT 21H 
 
 ENDD_:   
 
 RET
 ENDP CHECK