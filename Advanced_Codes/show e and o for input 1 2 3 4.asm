MOV AH, 1
INT 21H


CMP AL, 31H
JE ODD_  

CMP AL, 32H
JE EVEN_ 



CMP AL, 33H
JE ODD_


CMP AL, 34H
JE EVEN_  

ODD_: 
MOV AH, 2
MOV DL, 10
int 21h  
MOV AH, 2
MOV DL, 13
int 21h
MOV AH, 2
MOV DL, "o"
int 21h
JMP END_CASE


EVEN_:
MOV AH, 2
MOV DL, 10
int 21h  
MOV AH, 2
MOV DL, 13
int 21h
MOV AH, 2
MOV DL, "e"
int 21h

END_CASE: