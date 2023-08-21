.model small
.stack 100h
.data
M1  db "Please Enter a String: $"
R1 db 0ah, 0dh, "Reversed order: $"

.code
main proc
  mov ax, @data
  mov ds, ax
       
  call procedure1
   
  print:
  call procedure2
    
        

  mov ah, 4ch
  int 21h
  main endp
  
  procedure1 proc
                 
    mov ah, 9
  lea dx, M1
  int 21h
   
  xor cx, cx 
  input:
  mov ah, 1
  int 21h
  cmp al, 0dh
  je br_input 
  xor ah, ah
  push ax
  inc cx
  jmp input
  
  br_input: 
  cmp cx, 0
  je print

  mov bx, 50h
  
  reverse:
  pop dx
  xchg bx, sp
  push dx
  xchg bx, sp
  loop reverse
                          
                             
  ret
  procedure1 endp 
  
  procedure2 proc
    mov ah, 9
  lea dx, R1
  int 21h             
  
  xchg bx, sp
  mov ah, 2
  
  while:
  xor cx, cx  
    
  word: 
  cmp sp, 50h
  jge br_word
  pop dx
  cmp dx, 20h
  je br_word
      
  xchg bx, sp
  push dx
  inc cx
  xchg bx, sp 
      
  jmp word
      
  br_word:
    
  xchg bx, sp
    
  print_word:    
  pop dx
      
  int 21h
  loop print_word
  xchg bx, sp
    
  cmp sp, 50h
  jge br_while
  mov dl, 20h
  int 21h 
    
  jmp while   
  br_while: 
               
                             
  ret
  procedure2 endp
  
end main