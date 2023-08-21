.MODEL SMALL 
.STACK 100H
.DATA 
A DB "Enter a number: $" 
B DB 0AH,0DH, "Less than 5$"
F DB 0AH,0DH, "Greater than 5$"
G DB 0AH,0DH, "Equal to 5$"
C DB ?
D DB ? 
E DB ?
 


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CL, 5
    
    
 
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV C, AL  
    
    MOV BH, C
    SUB BH, 30H  
    
    CMP BH, CL
    JL LESS
    JG GREAT
    JE EQUAL
  
  LESS:
  
     MOV AH, 9
     LEA DX, B
     INT 21H
     
     JMP EXIT 
    
  GREAT:
  
    MOV AH, 9
    LEA DX, F
    INT 21H   
    JMP EXIT
    
   EQUAL: 
    MOV AH, 9
    LEA DX, G
    INT 21H     
    
    
   EXIT:     
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN