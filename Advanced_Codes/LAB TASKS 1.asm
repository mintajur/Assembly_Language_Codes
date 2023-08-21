;TASK1
    MOV BL, 0   ; BL REGISTER FOR STORING AND DIPLAYING 
   	MOV CX,255 ;HOW MANY TIMES THE VALUE WILL SHOW 
   	
   	
   	PRINT:
   	MOV AH, 2 
   	MOV DL, BL
   	INT 21H

   INC BL
    
   LOOP PRINT 
   
   
   
   ;TASK 2
   
   
   MOV CX ,50
   MOV DX, 0
   MOV AX, 1
   
   
   SUM:
   
   ADD DX, AX
   ADD AX, 4
   
   LOOP SUM
   
   
   ;TASK3
   
   MOV AX, 0
   MOV BX, 100
   MOV CX, 20
   
   SUM:
   ADD AX, BX 
   SUB BX, 5
   
   LOOP SUM
