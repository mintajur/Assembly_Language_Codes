.MODEL SMALL
.STACK 100H
.DATA 
CF DB 0
INPUT DB 'ENTER BINARY NUMBER: $'
OUTPUT DB 0AH,0DH, 'YOU HAVE ENTERED :    $'  
ONE DB 0AH,0DH,'NUMBER OF 1S BITS: $'
TWO DB 0AH,0DH, 'NUMBER OF 0S BITS: $'
A DB 30H
B DB 30H
.CODE 


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    
    
    
;FOR TAKING INPUT IN BINARY 

   
    MOV AH,9
    LEA DX,INPUT
    INT 21H
    
    
    
    XOR BL,BL     
    MOV AH,1   
    
 FOR:    
    INT 21H
    
    CMP AL, 0DH   
    JE END_FOR
    SUB AL, 48
    JMP SHIFT
    
    SHIFT:
    SHL BL, 1    
    OR BL,AL 
    INC CF     
    JMP FOR
    
 END_FOR:
 
 
 
 
 ;FOR SHOWING THE HEX OUTPUT 
 
 
 MOV AH, 9
 LEA DX, OUTPUT
 INT 21H
 

    MOV CX,2      ; FOR OUTPUT DO 4 TIMES
    MOV AH,2
    
    AGAIN:    
    MOV DL,BL     ; FOR OUTPUT MOVE BH TO DL
    SHR DL,4      ; FOR OUTPUT SHIFT DL 4 TIMES TO THE RIGHT
    ROL BL, 4     ; FOR OUTPUT ROTATE BX LEFT FOR 4 TIMES
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
    
   

;FOR NUMBER OF ONES AND ZEROES COUNT

    MOV CX,8
    PRINT:
    ROL BL,1
    JNC ZERO 


    INC A
    JMP NEXT 

 

    ZERO:
    INC B                                                                                                                     

 

    NEXT:
    LOOP PRINT 

 

    MOV AH,9
    LEA DX,ONE
    INT 21H

 

    MOV AH,2
    MOV DL,A   ;1
    INT 21H

 

    MOV AH,9
    LEA DX,TWO
    INT 21H

 

    MOV AH,2
    MOV DL,B   ;0
    INT 21H     
    
    
    
    


MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN   