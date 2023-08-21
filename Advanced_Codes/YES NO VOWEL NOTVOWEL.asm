.MODEL SMALL
.STACK 100H
.DATA
A DB 0AH, 0DH, "Input: $" 
B DB 0AH, 0DH, "Its a Vowel$" 
C DB 0AH, 0DH, "It's not a Vowel; Do you want to check for more? If yes then press y if no then press n$"  
D DB ?   
E DB ?
F DB ? 



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
    
    
    MOV AH, 2
    MOV DL, 13
    INT 21H 
    
    
    MOV DL, 10
    INT 21H
    
    
    
    
    MOV AH, 1
    INT 21H
    MOV E, AL
    
    MOV BL, E
    
    
    
    CMP BL, 59H
    JE  INPUT
    JNE EXIT
    
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