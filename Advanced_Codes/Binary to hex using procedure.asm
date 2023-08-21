.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
A DB 30H
B DB 30H
INP DB 'ENTER 8 BIT ASCII BINARY VALUE: $'
OUTPUTT DB 0AH,0DH, 'THE HEX VALUE IS: $' 

.CODE  



;PROCEDURE MAIN
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    CALL INPUT
    CALL OUTPUT 

    
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
    AND AL, 0F0H
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



    