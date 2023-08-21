.MODEL SMALL
.STACK 100H
.DATA
M DB 'ENTER 8 BIT BINARY VALUE: $'
ONE DB 10,13, 'TOTAL 1 BITS: $' 
ZER DB 10,13, 'TOTAL 0 BITS: $'  
OD DB ' (ODD)$' 
EVN DB ' (EVEN)$' 
A DB 30H
B DB 30H
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX     
    
; INPUT START OF THE PROGRAM
    
    XOR BL,BL 

    MOV AH,9
    LEA DX,M
    INT 21H 

                            
    MOV AH,1
    INT 21H 
 

    WHILE_:
    CMP AL,0DH
    JE END_
    CMP BL, 8
    JG END_
    AND AL,0FH
    SHL BL,1
    OR BL,AL 

 

    INT 21H
    JMP WHILE_
    END_:  

; INPUT END OF THE PROGRAM 






; OUTPUT START OF THE PROGRAM

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

 

    MOV CX,2
    
    AGAIN:    
    MOV DL,BL
    SHR DL,4
    ROL BL, 4

    LOOP AGAIN  
     

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

; OUTPUT END OF THE PROGRAM 

MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN