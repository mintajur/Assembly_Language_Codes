.MODEL SMALL
.STACK 100H
.DATA
 
 
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, 00H
    INT 21H  
    
    MOV AH, 2
    MOV DL, 01H
    INT 21H
    
    MOV AH, 2
    MOV DL, 02H
    INT 21H
    
    MOV AH, 2
    MOV DL, 03H
    INT 21H
    
    MOV AH, 2
    MOV DL, 04H
    INT 21H
    
    MOV AH, 2
    MOV DL, 05H
    INT 21H
    
    MOV AH, 2
    MOV DL, 06H
    INT 21H
    
    MOV AH, 2
    MOV DL, 07H
    INT 21H
    
    MOV AH, 2
    MOV DL, 08H
    INT 21H
    
    MOV AH, 2
    MOV DL, 09H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 10H
    INT 21H
    
    MOV AH, 2
    MOV DL, 11H
    INT 21H
    
    MOV AH, 2
    MOV DL, 12H
    INT 21H
    
    MOV AH, 2
    MOV DL, 13H
    INT 21H
    
    MOV AH, 2
    MOV DL, 14H
    INT 21H
    
    MOV AH, 2
    MOV DL, 15H
    INT 21H
    
    MOV AH, 2
    MOV DL, 16H
    INT 21H
    
    MOV AH, 2
    MOV DL, 17H
    INT 21H
    
    MOV AH, 2
    MOV DL, 18H
    INT 21H
    
    MOV AH, 2
    MOV DL, 19H
    INT 21H
    
    MOV AH, 2
    MOV DL, 1AH
    INT 21H  
    
    MOV AH, 2
    MOV DL, 1BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 1CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 1DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 1EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 1FH
    INT 21H  
    
    
    ;SPACE
    MOV AH, 2
    MOV DL, 20H
    INT 21H  
    
    MOV AH, 2
    MOV DL, 21H
    INT 21H
    
    MOV AH, 2
    MOV DL, 22H
    INT 21H
    
    MOV AH, 2
    MOV DL, 23H
    INT 21H
    
    MOV AH, 2
    MOV DL, 24H
    INT 21H
    
    MOV AH, 2
    MOV DL, 25H
    INT 21H
    
    MOV AH, 2
    MOV DL, 26H
    INT 21H
    
    MOV AH, 2
    MOV DL, 27H
    INT 21H
    
    MOV AH, 2
    MOV DL, 28H
    INT 21H
    
    MOV AH, 2
    MOV DL, 29H
    INT 21H
    
    MOV AH, 2
    MOV DL, 2AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 2BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 2CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 2DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 2EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 2FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 30H
    INT 21H
    
    MOV AH, 2
    MOV DL, 31H
    INT 21H
    
    MOV AH, 2
    MOV DL, 32H
    INT 21H
    
    MOV AH, 2
    MOV DL, 33H
    INT 21H
    
    MOV AH, 2
    MOV DL, 34H
    INT 21H
    
    MOV AH, 2
    MOV DL, 35H
    INT 21H
    
    MOV AH, 2
    MOV DL, 36H
    INT 21H
    
    MOV AH, 2
    MOV DL, 37H
    INT 21H
    
    MOV AH, 2
    MOV DL, 38H
    INT 21H
    
    MOV AH, 2
    MOV DL, 39H
    INT 21H
    
    MOV AH, 2
    MOV DL, 3AH
    INT 21H  
    
    MOV AH, 2
    MOV DL, 3BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 3CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 3DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 3EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 3FH
    INT 21H 
    
    
    ;A TO Z
    MOV AH, 2
    MOV DL, 41H
    INT 21H
    
    MOV AH, 2
    MOV DL, 42H
    INT 21H
    
    MOV AH, 2
    MOV DL, 43H
    INT 21H
    
    MOV AH, 2
    MOV DL, 44H
    INT 21H
    
    MOV AH, 2
    MOV DL, 45H
    INT 21H
    
    MOV AH, 2
    MOV DL, 46H
    INT 21H
    
    MOV AH, 2
    MOV DL, 47H
    INT 21H
    
    MOV AH, 2
    MOV DL, 48H
    INT 21H
    
    MOV AH, 2
    MOV DL, 49H
    INT 21H
    
    MOV AH, 2
    MOV DL, 4AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 4FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 50H
    INT 21H
    
    MOV AH, 2
    MOV DL, 51H
    INT 21H
    
    MOV AH, 2
    MOV DL, 52H
    INT 21H
    
    MOV AH, 2
    MOV DL, 53H
    INT 21H
    
    MOV AH, 2
    MOV DL, 54H
    INT 21H
    
    MOV AH, 2
    MOV DL, 55H
    INT 21H
    
    MOV AH, 2
    MOV DL, 56H
    INT 21H
    
    MOV AH, 2
    MOV DL, 57H
    INT 21H
    
    MOV AH, 2
    MOV DL, 58H
    INT 21H
    
    MOV AH, 2
    MOV DL, 59H
    INT 21H
    
    MOV AH, 2
    MOV DL, 5AH
    INT 21H 
    
    
    MOV AH, 2
    MOV DL, 5BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 5CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 5DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 5EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 5FH
    INT 21H
    
    
    
    
    
    
    
    
        MOV AH, 2
    MOV DL, 60H
    INT 21H
    
    MOV AH, 2
    MOV DL, 61H
    INT 21H
    
    MOV AH, 2
    MOV DL, 62H
    INT 21H
    
    MOV AH, 2
    MOV DL, 63H
    INT 21H
    
    MOV AH, 2
    MOV DL, 64H
    INT 21H
    
    MOV AH, 2
    MOV DL, 65H
    INT 21H
    
    MOV AH, 2
    MOV DL, 66H
    INT 21H
    
    MOV AH, 2
    MOV DL, 67H
    INT 21H
    
    MOV AH, 2
    MOV DL, 68H
    INT 21H
    
    MOV AH, 2
    MOV DL, 69H
    INT 21H
    
    MOV AH, 2
    MOV DL, 6AH
    INT 21H  
    
    MOV AH, 2
    MOV DL, 6BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 6CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 6DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 6EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 6FH
    INT 21H 
    
    
    ;a TO z
    MOV AH,2
    MOV DL, 70H
    INT 21H    
    
    MOV AH, 2
    MOV DL, 71H
    INT 21H
    
    MOV AH, 2
    MOV DL, 72H
    INT 21H
    
    MOV AH, 2
    MOV DL, 73H
    INT 21H
    
    MOV AH, 2
    MOV DL, 74H
    INT 21H
    
    MOV AH, 2
    MOV DL, 75H
    INT 21H
    
    MOV AH, 2
    MOV DL, 76H
    INT 21H
    
    MOV AH, 2
    MOV DL, 77H
    INT 21H
    
    MOV AH, 2
    MOV DL, 78H
    INT 21H
    
    MOV AH, 2
    MOV DL, 79H
    INT 21H
    
    MOV AH, 2
    MOV DL, 7AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 7BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 7CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 7DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 7EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 7FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 80H
    INT 21H
    
    MOV AH, 2
    MOV DL, 81H
    INT 21H
    
    MOV AH, 2
    MOV DL, 82H
    INT 21H
    
    MOV AH, 2
    MOV DL, 83H
    INT 21H
    
    MOV AH, 2
    MOV DL, 84H
    INT 21H
    
    MOV AH, 2
    MOV DL, 85H
    INT 21H
    
    MOV AH, 2
    MOV DL, 86H
    INT 21H
    
    MOV AH, 2
    MOV DL, 87H
    INT 21H
    
    MOV AH, 2
    MOV DL, 88H
    INT 21H
    
    MOV AH, 2
    MOV DL, 89H
    INT 21H
    

    MOV AH, 2
    MOV DL, 8AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 8BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 8CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 8DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 8EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 8FH
    INT 21H
    
    
    
    
    MOV AH,2
    MOV DL, 90H
    INT 21H    
    
    MOV AH, 2
    MOV DL, 91H
    INT 21H
    
    MOV AH, 2
    MOV DL, 92H
    INT 21H
    
    MOV AH, 2
    MOV DL, 93H
    INT 21H
    
    MOV AH, 2
    MOV DL, 94H
    INT 21H
    
    MOV AH, 2
    MOV DL, 95H
    INT 21H
    
    MOV AH, 2
    MOV DL, 96H
    INT 21H
    
    MOV AH, 2
    MOV DL, 97H
    INT 21H
    
    MOV AH, 2
    MOV DL, 98H
    INT 21H
    
    MOV AH, 2
    MOV DL, 99H
    INT 21H
    
    MOV AH, 2
    MOV DL, 9AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 9BH
    INT 21H
    
    MOV AH, 2
    MOV DL, 9CH
    INT 21H
    
    MOV AH, 2
    MOV DL, 9DH
    INT 21H
    
    MOV AH, 2
    MOV DL, 9EH
    INT 21H
    
    MOV AH, 2
    MOV DL, 9FH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A0H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A1H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A2H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A3H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A4H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A5H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A6H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A7H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A8H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0A9H
    INT 21H
    

    MOV AH, 2
    MOV DL, 0AAH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0ABH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0ACH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0ADH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AEH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AFH
    INT 21H  
    
    
    
    
    
    
    
    
        MOV AH,2
    MOV DL, 0B0H
    INT 21H    
    
    MOV AH, 2
    MOV DL, 0B1H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B2H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B3H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B4H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B5H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B6H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B7H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B8H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0B9H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BAH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BBH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BCH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BDH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BEH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0BFH
    INT 21H
    
    
    
    ;START FROM C0
    
    MOV AH,2
     MOV DX,0C0H
     INT 21H
     
      MOV AH,2
     MOV DX,0C1H
     INT 21H 
     
      MOV AH,2
     MOV DX,0C2H
     INT 21H
     
      MOV AH,2
     MOV DX,0C3H
     INT 21H 
     
      MOV AH,2
     MOV DX,0C4H
     INT 21H 
     
      MOV AH,2
     MOV DX,0C5H
     INT 21H
     
      MOV AH,2
     MOV DX,0C6H
     INT 21H
     
      MOV AH,2
     MOV DX,0C7H
     INT 21H 
     
      MOV AH,2
     MOV DX,0C8H
     INT 21H
     
      MOV AH,2
     MOV DX,0C9H
     INT 21H 
     
      MOV AH,2
     MOV DX,0CAH
     INT 21H 
     
      MOV AH,2
     MOV DX,0CBH
     INT 21H
     
      MOV AH,2
     MOV DX,0CCH
     INT 21H
     
      MOV AH,2
     MOV DX,0CDH
     INT 21H 
     
      MOV AH,2
     MOV DX,0CEH
     INT 21H
     
      MOV AH,2
     MOV DX,0CFH
     INT 21H 
     
      MOV AH,2
     MOV DX,0D0H
     INT 21H 
     
      MOV AH,2
     MOV DX,0D1H
     INT 21H
     
      MOV AH,2
     MOV DX,0D2H
     INT 21H
     
      MOV AH,2
     MOV DX,0D3H
     INT 21H 
     
      MOV AH,2
     MOV DX,0D4H
     INT 21H
     
      MOV AH,2
     MOV DX,0D5H
     INT 21H 
     
      MOV AH,2
     MOV DX,0D6H
     INT 21H 
     
      MOV AH,2
     MOV DX,0D7H
     INT 21H
     
      MOV AH,2
     MOV DX,0D8H
     INT 21H
     
      MOV AH,2
     MOV DX,0D9H
     INT 21H 
     
      MOV AH,2
     MOV DX,0DAH
     INT 21H
     
      MOV AH,2
     MOV DX,0DBH
     INT 21H 
     
      MOV AH,2
     MOV DX,0DCH
     INT 21H 
     
      MOV AH,2
     MOV DX,0DDH
     INT 21H
     
      MOV AH,2
     MOV DX,0DEH
     INT 21H
     
      MOV AH,2
     MOV DX,0DFH
     INT 21H 
     
      MOV AH,2
     MOV DX,0E0H
     INT 21H
     
      MOV AH,2
     MOV DX,0E1H
     INT 21H 
     
      MOV AH,2
     MOV DX,0E2H
     INT 21H 
     
      MOV AH,2
     MOV DX,0E3H
     INT 21H
     
      MOV AH,2
     MOV DX,0E4H
     INT 21H
     
      MOV AH,2
     MOV DX,0E5H
     INT 21H 
     
      MOV AH,2
     MOV DX,0E6H
     INT 21H
     
      MOV AH,2
     MOV DX,0E7H
     INT 21H 
     
      MOV AH,2
     MOV DX,0E8H
     INT 21H 
     
      MOV AH,2
     MOV DX,0E9H
     INT 21H
     
      MOV AH,2
     MOV DX,0EAH
     INT 21H
     
      MOV AH,2
     MOV DX,0EBH
     INT 21H 
     
      MOV AH,2
     MOV DX,0ECH
     INT 21H
     
      MOV AH,2
     MOV DX,0EDH
     INT 21H 
     
      MOV AH,2
     MOV DX,0EEH
     INT 21H 
     
      MOV AH,2
     MOV DX,0EFH
     INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    MOV AH, 2
    MOV DL, 0F0H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F1H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F2H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F3H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F4H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F5H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F6H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F7H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F8H
    INT 21H
    
    MOV AH, 2
    MOV DL, 0F9H
    INT 21H
    

    MOV AH, 2
    MOV DL, 0FAH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FBH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FCH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FDH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FEH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0FFH
    INT 21H
    
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN