.MODEL SMALL
.STACK 100H
.DATA
A DB "PLEASE ENTER THE FIRST NUMBER  : $"
B DB 0AH,0DH,"PLEASE ENTER THE SECOND NUMBER  : $"
C DB 0AH,0DH,"YOUR OUTPUT FOR ADDITION  : $" 

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
    ADD BH, F
    SUB BH, 30H
    
    
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN