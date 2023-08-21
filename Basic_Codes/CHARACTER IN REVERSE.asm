.MODEL SMALL
.STACK 100H
.DATA 
A DB ?
B DB ?
C DB ?


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 1
    INT 21H
    MOV A, AL
    
    MOV AH, 1
    INT 21H
    MOV B, AL
    
    MOV AH, 1
    INT 21H
    MOV C, AL 
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2
    MOV DL, C
    INT 21H
    
    MOV AH, 2
    MOV DL, B
    INT 21H
    
    MOV AH, 2
    MOV DL, A
    INT 21H 
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN