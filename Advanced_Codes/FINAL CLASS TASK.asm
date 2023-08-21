.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
A DB 30H
B DB 30H
INP DB 'ENTER 8 BIT ASCII BINARY VALUE: $'
OUTPUTT DB 0AH,0DH, 'THE ORIGINAL VALUE IS: $' 
ASCII DB 'THE ASCII CHARACTER IS: $' 
ONE DB 10,13,'TOTAL 1 BITS: $'
TWO DB 10,13,'TOTAL 0 BITS: $'  
EVENCOUNT DB '(EVEN)'
ODDCOUNT DB '(ODD)'
.CODE  



;PROCEDURE MAIN
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    CALL INPUT
    CALL OUTPUT 
    CALL CHECK
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP
    
    
    
    
    
;PROCEDURE INPUT    
INPUT PROC
        
    MOV AH,9
    LEA DX,INP
    INT 21H
    
    
    
    XOR BX,BX     
    MOV AH,1   
    
 FOR:    
    INT 21H
    
    CMP AL, 0DH   
    JE END_FOR
    SUB AL, 48
    JMP SHIFT
    
    SHIFT:
    SHL BL, 1    
    OR BL,AL 
    INC CF     
    JMP FOR
    
 END_FOR: 


RET
INPUT ENDP


;PROCEDURE OUTPUT
OUTPUT PROC
    MOV AH, 9
    LEA DX, OUTPUTT
    INT 21H
     
    MOV CX,4      
    MOV AH,2
    
    PRINT_:    
    MOV DL,BH     
    SHR DL,4     
    ROL BX, 4     
    CMP DL,10     
    JGE LETTEROUT 
    
    ADD DL,48     
    INT 21H
    JMP END    
    
    LETTEROUT:    
    ADD DL,55
    INT 21H 
    
    END:         
    LOOP PRINT_ 
    
RET    

OUTPUT ENDP 


;PROCEDURE CHECK
CHECK PROC
MOV CX,8
     
     PRINT:
     ROL BL,1
     JNC ZERO 

 

     INC A
     JMP FOR_PRINT 

 

     ZERO:
     INC B 

 

     FOR_PRINT:
     LOOP PRINT 

 

     MOV AH,9
     LEA DX,ONE
     INT 21H

 

     MOV AH,2
     MOV DL,A   
     INT 21H

 

     MOV AH,9
     LEA DX,TWO
     INT 21H

 

     MOV AH,2
     MOV DL,B   
     INT 21H 

 
    RET
CHECK ENDP
    