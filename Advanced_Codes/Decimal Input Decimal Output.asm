.MODEL SMALL
.STACK 100H
.DATA
N DB 0
COUNT DB 0  
A DB " INPUT: $"
B DB "OUTPUT: $"
.CODE 
 

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    XOR CX, CX
    XOR DX, DX
    
    CALL DECIMAL_INPUT
    
    PRINTN:
    MOV AH, 2
    
    
    MOV N, DL   
    INT 21H
    CALL DECIMAL_OUTPUT
    
    MOV AH, 4CH
    INT 21H
    
MAIN ENDP



DECIMAL_INPUT PROC 
    
    MOV AH,9
    LEA DX, A 
    INT 21H
    
    FOR:
    MOV AH, 1
    INT 21H
    CMP AL, 0DH
    JE END_FOR 
    SUB AL, 48
    MOV N, AL
    MOV AL, 10
    MUL DL
    ADD AL, N
    MOV DL, AL
    INC COUNT
    JMP FOR
    
 END_FOR:
 
 
 RET
 
 DECIMAL_INPUT ENDP



DECIMAL_OUTPUT PROC
    
    MOV AH,9
    LEA DX, B 
    INT 21H
    
    XOR CX, CX
    MOV CL, COUNT
    
    MOV BL, 10
    XOR AH, AH
    MOV AL, N
    
    
    FOR2:
    DIV BL
    XOR DX, DX
    MOV DL, AH
    ADD DL, 48
    PUSH DX
    LOOP FOR2  
    
    
    
    XOR CX, CX
    MOV CL, COUNT
    MOV AH, 2
    
    FOR3:
    POP DX
    INT 21H
    LOOP FOR3
    
    RET
    
    
DECIMAL_OUTPUT ENDP

