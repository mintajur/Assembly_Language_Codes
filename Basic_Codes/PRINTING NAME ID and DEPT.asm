.MODEL SMALL 
.STACK 100H
.DATA
A DB "NAME        : MD. MINTAJUR RAHMAN EMON.$"
B DB 0AH, 0DH,"ID          : 20-43870-2.$"
C DB 0AH, 0DH,"DEPARTMENT  : CSE.$"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
