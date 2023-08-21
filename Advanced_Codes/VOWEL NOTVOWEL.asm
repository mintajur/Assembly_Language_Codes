.MODEL SMALL
.STACK 100H
.DATA
A DB 0AH, 0DH, "Input: $" 
B DB 0AH, 0DH, "Its a Vowel$" 
C DB 0AH, 0DH, "It's not a Vowel$"  
D DB ?



.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
       
    
    
    INPUT:
    MOV AH, 9
    LEA DX, A
    INT 21H 

    MOV AH, 1
    INT 21H
    MOV D, AL
    
    
    
    MOV BH, D
    
   
    COMPS:
    CMP BH,41H 
    JG COMPE
    JE VOWEL
    JL NOTVOWEL
    JMP EXIT
    
     NOTVOWEL:
    MOV AH, 9
    LEA DX, C
    INT 21H 
    
    JMP INPUT
    
    COMPE:
    CMP BH, 45H
    JL NOTVOWEL
    JE VOWEL
    JG COMPI
    JMP EXIT   
    
    COMPI:
    CMP BH, 49H
    JL NOTVOWEL
    JE VOWEL
    JG COMPO
    JMP EXIT 
    
    COMPO:
    CMP BH, 4FH
    JL NOTVOWEL
    JE VOWEL
    JG COMPU
    JMP EXIT  
    
    COMPU:
    CMP BH, 55H
    JL NOTVOWEL
    JE VOWEL
    JG COMPS
    JMP EXIT
    
    
    VOWEL:
    MOV AH, 9
    LEA DX, B
    INT 21H
    
    JMP EXIT      
    
    
    
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN