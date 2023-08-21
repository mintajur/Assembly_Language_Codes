.MODEL SMALL
.STACK 100H
.DATA
A DB 0AH, 0DH, "Input: $" 
B DB 0AH, 0DH, "Output: Wrong input; Decimal digits only$" 
C DB 0AH, 0DH, "The correct order is $"  
D DB 0AH, 0DH, "The correct order is $"
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
    
    MOV AH, 1
    INT 21H
    MOV F, AL
    
    
    MOV CL, E
    
    MOV BL, F
   
    
    CMP CL, BL
    JL LORDER
    JG GORDER 
    JB LESSA
    JA GREAT
    
    
    
    
    LORDER:
    MOV AH, 9
    LEA DX, C
    INT 21H
    
    MOV AH, 2
    MOV DL, CL
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    
    JMP EXIT      
    
    
    GORDER:
    MOV AH, 9
    LEA DX, D
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    
    MOV AH, 2
    MOV DL, CL
    INT 21H
    
    
    
    JMP EXIT
    
    
     LESSA:
     
     MOV AH, 9
     LEA DX, B
     INT 21H 
     
     
     
     
     GREAT:

     MOV AH, 9
     LEA DX, B
     INT 21H 
    
     
    
    MOV AH, 9
    LEA DX, B
    INT 21H 
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN