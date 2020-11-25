.MODEL SMALL
.MODEL 100H
.DATA
    V1 DB "rakib$" 
    V2 DB 10 DUP('$')
    
.CODE        
    
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH, 09H
    LEA DX, V1
    INT 21H
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA SI, V1
    LEA DI, V2
    
  UP:  
    MOV AL, [SI]
    CMP AL, '$'
    JE EX
    
    SUB AL, 20H
    MOV [DI], AL
    INC SI
    INC DI
    
    JMP UP          
   
        
       
     
  EX:  
    MOV AH, 09H
    LEA DX, V2
    INT 21H
        
    MOV AH, 4CH
    INT 21H






