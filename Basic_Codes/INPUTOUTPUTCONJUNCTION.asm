.MODEL SMALL
.STACK 100H
.DATA
A DB "ENTER FIRST NUMBER: $"
B DB 0AH, 0DH, "ENTER SECOND NUMBER: $"
C DB 0AH, 0DH, "YOU HAVE ENTERED: $"
X DB " AND $"
D DB "$"
E DB "$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX, A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV D, AL
    
    MOV AH,9
    LEA DX, B
    INT 21H
    
    MOV AH,1
    INT 21H                        
    MOV E, AL
    
    MOV AH,9
    LEA DX, C
    INT 21H 
    
    MOV AH,2
    MOV DL,D
    INT 21H
    
    MOV AH,9
    LEA DX, X
    INT 21H  
    
    MOV AH,2
    MOV DL,E
    INT 21H
   

   MOV AH, 4CH
   INT 21H
   MAIN ENDP
END MAIN