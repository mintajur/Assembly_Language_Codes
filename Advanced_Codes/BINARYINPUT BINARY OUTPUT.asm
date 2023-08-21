.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
INPUT DB 'ENTER BINARY NUMBER: $'
OUTPUT DB 0AH,0DH, 'YOU HAVE ENTERED :    $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,INPUT
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
    SHL BX, 1    
    OR BL,AL 
    INC CF     
    JMP FOR
    
 END_FOR:
 
           
    
 PRINT:
    MOV AH,9
    LEA DX,OUTPUT
    INT 21H
    
    MOV CL,16
    SUB CL, CF  
    RCL BX, CL
    
    XOR CH, CH
    MOV CL, CF
        
    MOV AH,2
    
    
    
 FOR_TWO:    
    RCL BX, 1
    JC OUTPUT_ONE
    MOV DL,'0'     
    INT 21H 
    JMP BOTTOM
    
 OUTPUT_ONE:
    MOV DL, '1'
    INT 21H    
         
    
 BOTTOM:
         
    LOOP FOR_TWO
    
 EXIT:   
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    
    



