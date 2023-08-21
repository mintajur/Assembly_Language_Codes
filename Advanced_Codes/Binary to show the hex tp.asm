.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
A DB 30H
B DB 30H
INP DB 'ENTER 8 BIT ASCII BINARY VALUE: $'
OUTPUTT DB 0AH,0DH, 'THE HEX VALUE IS: $'
ONE DB 0AH, 0DH, "NO OF 1S IN BINARY : $"
ZER DB 0AH, 0DH, "NO OF 0S IN BINARY : $"
EVN DB " EVEN$"
OD DB " ODD$"  

.CODE  



;PROCEDURE MAIN
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
     
    MOV AH,9
    LEA DX,INP
    INT 21H
    
    
    
    XOR BX,BX     
    MOV AH,1   
    
 FOR:    
    INT 21H
    
    CMP AL, 0DH   
    JE END_FOR
    AND AL, 0FH
    JMP SHIFT
    
    SHIFT:
    SHL BL, 1    
    OR BL,AL 
    INC CF     
    JMP FOR
    
 END_FOR: 



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
    
     
     
     
    MOV CX, 8
    
    PRINT:
    ROL BL, 1
    JNC ZERO
    
    INC A
    JMP NEXT
    
    ZERO:
    INC B
    
    NEXT:
    LOOP PRINT
       
    
    MOV CX, 2   
    
    AGAIN:
    MOV DL, BL
    SHR DL, 4
    ROL BL, 4
    LOOP AGAIN
    
    
    MOV AH, 9
    LEA DX, ONE
    INT 21H
    
    MOV AH, 2
    MOV DL, A
    INT 21H
    
    AND A, 01H
    JZ EVEN
    
    MOV AH, 9
    LEA DX, OD
    INT 21H
    JMP AG
    
    EVEN:
    MOV AH, 9
    LEA DX, EVN
    INT 21H
    
    AG:
    MOV AH, 9
    LEA DX, ZER
    INT 21H
    
    MOV AH, 2
    MOV DL, B
    INT 21H
    
    AND B, 01H
    JZ EVENZ
    
    MOV AH, 9
    LEA DX, OD
    INT 21H
    JMP ENDD_
    
    EVENZ:
    MOV AH, 9
    LEA DX, EVN
    INT 21H
    
    ENDD_: 
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    



    