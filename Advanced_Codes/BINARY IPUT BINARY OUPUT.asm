.MODEL SMALL
.STACK 100H
.DATA
A DB 'ENTER BINARY NUMBER: $'
B DB 0AH,0DH, 'YOU HAVE ENTERED : $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    XOR BX,BX
    MOV CL,1
    MOV AH,1
    
    FOR:    
    INT 21H
    
    CMP AL, 0DH
    JE PRINT
    CMP AL, 30H  
    JGE LETTER
    AND AL,0FH
    JMP SHIFT
    
    LETTER:
    SUB AL,51H
    
    SHIFT:
    SHL BX, CL
    OR BL,AL 
    JMP FOR
    
    PRINT:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV CX,1
    MOV AH,2
    
    AGAIN:    
    MOV DL,BH
    SHR DL,1
    ROL BX, 1
    CMP DL,10
    JGE LETTEROUT
    
    ADD DL,48
    INT 21H
    JMP EXIT
    
    LETTEROUT:
    ADD DL,49
    INT 21H 
    
    EXIT:
    LOOP AGAIN