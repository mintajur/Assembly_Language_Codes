MAIN PROC 
    
    CALL FACTORIAL
    
    
    MAIN ENDP


FACTORIAL PROC
    
    MOV AH, 1
    INT 21H 
    MOV BL, AL
    SUB BL, 30H
    
    MOV CX, BX 
    MOV AX, 1
    
    TOP:
    MUL CX
    LOOP TOP
    
    RET 
    
    FACTORIAL ENDP