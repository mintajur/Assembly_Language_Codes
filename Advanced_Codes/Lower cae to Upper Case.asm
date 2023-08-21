.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "ENTER AN LOWER CASE LETTER: $"
MSG2 DB 0AH, 0DH, "THE UPPER CASE EQUIVALENT IS: $" 
A DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H


    MOV AH, 1
    INT 21H
    MOV A, AL 
    
    SUB A, 20H
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV AH, 2
    MOV DL, A
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN