.MODEL SMALL 
.STACK 100H
.DATA 
A DB "Enter a number: $" 
E DB 0AH,0DH, "Positive$"
F DB 0AH,0DH, "Negative$"
C DB ?
D DB ? 
 


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV C, AL
    MOV BH, C
    SUB BH, 30H  
    
    MOV CH, 0
    CMP BH, CH
    JG POSITIVE
    JL NEGATIVE
  
  POSITIVE:
  
     MOV AH, 9
     LEA DX, E
     INT 21H
     
     JMP INPUT 
    
  NEGATIVE:
  
    MOV AH, 9
    LEA DX, F
    INT 21H   
    JMP INPUT
    
    
    
    
    
    INPUT:
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H  
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV D, AL
    MOV CH, D
    SUB CH, 30H  
    
    MOV CL, 0
    CMP CH, CL
    JG POSI
    JL NEGA
  
  POSI:
     MOV AH, 9
     LEA DX, E
     INT 21H
     
     JMP EXIT 
    
  NEGA:  
    MOV AH, 9
    LEA DX, F
    INT 21H
    
    
   EXIT:     
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN