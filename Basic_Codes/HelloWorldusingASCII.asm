.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
        
    MOV AH,2
    MOV DL, 072 
    INT 21H
    
    MOV AH,2
    MOV DL, 0101 
    INT 21H
    
    MOV AH,2
    MOV DL, 0108 
    INT 21H
    
    MOV AH,2
    MOV DL, 0108 
    INT 21H
    
    MOV AH,2
    MOV DL, 0111 
    INT 21H
    
    MOV AH,2
    MOV DL, 032 
    INT 21H
    
    MOV AH,2
    MOV DL, 087 
    INT 21H
    
    MOV AH,2
    MOV DL, 0111 
    INT 21H
    
    MOV AH,2
    MOV DL, 0114 
    INT 21H
    
    MOV AH,2
    MOV DL, 0108 
    INT 21H
    
    MOV AH,2
    MOV DL, 0100 
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    