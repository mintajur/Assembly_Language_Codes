.MODEL SMALL
.STACK 100H
.DATA
A DB "ENTER YOUR FIRST NO: $"
B DB 0AH, 0DH,"ENTER YOUR SECOND NO: $"
C DB 0AH, 0DH,"YOUR OUTPUT FOR ADDITION IS: $"
D DB 0AH, 0DH,"YOUR OUTPUT FOR SUBSTRACTION IS: $"
E DB ?
F DB ?


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV E, AL
    
    MOV AH, 9
    LEA DX, B
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV F, AL 
    
    MOV AH, 9
    LEA DX, C
    INT 21H   
    
    
    MOV BH, E 
    MOV BL, BH
    
    ADD BH, F
    SUB BH, 30H
    
    
    MOV AH,2
    MOV DL, BH
    INT 21H
    
    MOV AH, 9
    LEA DX, D
    INT 21H 
    
    SUB BL,F
    ADD BL, 30H
    
    
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    