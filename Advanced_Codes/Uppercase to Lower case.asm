.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "ENTER AN UPPPER CASE LETTER: $"
MSG2 DB 0AH, 0DH, "THE LOWER CASE EQUIVALENT IS: $" 
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
    
    ADD A, 20H
    
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
    
