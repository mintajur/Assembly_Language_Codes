.MODEL SMALL
.STACK 100H
.DATA
 
 
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, 41H
    INT 21H
    
    MOV AH, 2
    MOV DL, 42H
    INT 21H
    
    MOV AH, 2
    MOV DL, 43H
    INT 21H
    
    MOV AH, 2
    MOV DL, 44H
    INT 21H
    
    MOV AH, 2
    MOV DL, 45H
    INT 21H
    
    MOV AH, 2
    MOV DL, 46H
    INT 21H
    
    MOV AH, 2
    MOV DL, 47H
    INT 21H
    
    MOV AH, 2
    MOV DL, 48H
    INT 21H
    
    MOV AH, 2
    MOV DL, 49H
    INT 21H
    
    MOV AH, 2
    MOV DL, 4AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 50H
    INT 21H
    
    MOV AH, 2
    MOV DL, 51H
    INT 21H
    
    MOV AH, 2
    MOV DL, 52H
    INT 21H
    
    MOV AH, 2
    MOV DL, 53H
    INT 21H
    
    MOV AH, 2
    MOV DL, 54H
    INT 21H
    
    MOV AH, 2
    MOV DL, 55H
    INT 21H
    
    MOV AH, 2
    MOV DL, 56H
    INT 21H
    
    MOV AH, 2
    MOV DL, 57H
    INT 21H
    
    MOV AH, 2
    MOV DL, 58H
    INT 21H
    
    MOV AH, 2
    MOV DL, 59H
    INT 21H
    
    MOV AH, 2
    MOV DL, 5AH
    INT 21H

    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN