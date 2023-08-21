.MODEL SMALL
.STACK 100H
.DATA
A DB ?
B DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,2
    MOV DL, 063
    INT 21H
   
    MOV AH,1
    INT 21H
    MOV A, AL 
    
    MOV AH,1
    INT 21H
    MOV B, AL  
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H  
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
    MOV DL, 084
    INT 21H
    
    MOV AH,2
    MOV DL, 072
    INT 21H 
    
    MOV AH,2
    MOV DL, 069
    INT 21H   
    
    MOV AH,2
    MOV DL, 032
    INT 21H    
    
    MOV AH,2
    MOV DL, 083
    INT 21H   
    
    MOV AH,2
    MOV DL, 085
    INT 21H   
    
    MOV AH,2
    MOV DL, 077
    INT 21H 
    
    MOV AH,2
    MOV DL, 032
    INT 21H   
    
    MOV AH,2
    MOV DL, 079
    INT 21H   
    
    MOV AH,2
    MOV DL, 070
    INT 21H 
    
    
    MOV AH,2
    MOV DL, 032
    INT 21H  
    
    MOV AH,2
    MOV DL, A
    INT 21H    
    
    
    MOV AH,2
    MOV DL, 032
    INT 21H
    
    MOV AH,2
    MOV DL, 065
    INT 21H   
    
    MOV AH,2
    MOV DL, 078
    INT 21H  
    
    MOV AH,2
    MOV DL, 068
    INT 21H 
    
    MOV AH,2
    MOV DL, 032
    INT 21H   
    
    MOV AH,2
    MOV DL, B
    INT 21H  
    
    MOV AH,2
    MOV DL, 032
    INT 21H  
    
    MOV AH,2
    MOV DL, 073
    INT 21H  
    
    MOV AH,2
    MOV DL, 083
    INT 21H   
    
    MOV AH,2
    MOV DL, 032
    INT 21H   
    
    
    MOV BH, A
    MOV BL, A
    ADD BH, B
    SUB BH, 030H 
    
    
    MOV AH,2
    MOV DL, BH
    INT 21H  
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H  
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    
    MOV AH,2
    MOV DL, 084
    INT 21H
    
    MOV AH,2
    MOV DL, 072
    INT 21H 
    
    MOV AH,2
    MOV DL, 069
    INT 21H   
    
    MOV AH,2
    MOV DL, 032
    INT 21H    
    
    MOV AH,2
    MOV DL, 083
    INT 21H   
    
    MOV AH,2
    MOV DL, 085
    INT 21H   
    
    MOV AH,2
    MOV DL, 066
    INT 21H 
    
    MOV AH,2
    MOV DL, 032
    INT 21H   
    
    MOV AH,2
    MOV DL, 079
    INT 21H   
    
    MOV AH,2
    MOV DL, 070
    INT 21H 
    
    
    MOV AH,2
    MOV DL, 032
    INT 21H  
    
    MOV AH,2
    MOV DL, A
    INT 21H    
    
    MOV AH,2
    MOV DL, 032
    INT 21H
    
    MOV AH,2
    MOV DL, 065
    INT 21H   
    
    MOV AH,2
    MOV DL, 078
    INT 21H  
    
    MOV AH,2
    MOV DL, 068
    INT 21H 
    
    MOV AH,2
    MOV DL, 032
    INT 21H   
    
    MOV AH,2
    MOV DL, B
    INT 21H  
    
    MOV AH,2
    MOV DL, 032
    INT 21H  
    
    MOV AH,2
    MOV DL, 073
    INT 21H  
    
    MOV AH,2
    MOV DL, 083
    INT 21H   
    
    MOV AH,2
    MOV DL, 032
    INT 21H  
    
    
    SUB BL, B
    ADD BL, 030H 
    
    
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN