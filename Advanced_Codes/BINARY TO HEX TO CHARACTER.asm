.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
A DB ?
INPUT DB 'ENTER BINARY NUMBER: $'
OUTPUT DB 0AH,0DH, 'YOU HAVE ENTERED :    $'
ASCII DB 'THE ASCII CHARACTER IS: $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,INPUT
    INT 21H
    
    
    
    XOR BX,BX     
    MOV AH,1   
    
 FOR:    
    INT 21H
    
    CMP AL, 0DH   
    JE END_FOR
    SUB AL, 48
    JMP SHIFT
    
    SHIFT:
    SHL BX, 1    
    OR BL,AL 
    INC CF     
    JMP FOR
    
 END_FOR: 
 
 MOV AH, 9
 LEA DX, OUTPUT
 INT 21H
 
 
 MOV CX,4      ; FOR OUTPUT DO 4 TIMES
    MOV AH,2
    
    AGAIN:    
    MOV DL,BH     ; FOR OUTPUT MOVE BH TO DL
    SHR DL,4      ; FOR OUTPUT SHIFT DL 4 TIMES TO THE RIGHT
    ROL BX, 4     ; FOR OUTPUT ROTATE BX LEFT FOR 4 TIMES
    CMP DL,10     ; FOR OUTPUT COMPARING  IF DL < 10
    JGE LETTEROUT ; IF IT IS NOT 10 AND GREATER THEN CONVERT TO CHARACTER 'A'......'F'
    
    ADD DL,48     ; FOR OUTPUT IF IT IS NOT A LETTER THEN CONVERT IT IN '0'........'9'
    INT 21H
    JMP EXIT      ; END
    
    LETTEROUT:    ; FOR OUTPUT IF IT IS LETTER
    ADD DL,55
    INT 21H 
    
    EXIT:         ; FOR OUTPUT ENDING
    LOOP AGAIN 
    
    
    SHOW:
    MOV AH, 2
    MOV DX, 10
    INT 21H 
    
    MOV AH, 2
    MOV DX, 13
    INT 21H
    
    MOV AH, 9
    LEA DX, ASCII
    INT 21H 
    
    
    MOV CH, DL
    
    MOV AH, 2
    MOV DL, CH
    SUB DL, 48
    INT 21H
    