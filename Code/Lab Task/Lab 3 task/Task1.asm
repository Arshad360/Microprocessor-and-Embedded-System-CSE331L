.MODEL SMALL
.MODEL 100H
.DATA
    V1 DB 41H, 42H, 43H, 44H, 45H, '$'
    V2 DB 5 DUP (?), '$'
.CODE        
    MOV AX, @DATA
    MOV DS, AX  
    
    LEA SI, V2
        
             
    MOV AL, V1[0]  
      
    MOV [SI], AL
      
    INC SI 
    
    
    MOV AL, V1[1]
        
    MOV [SI], AL 
    INC SI  
    
    MOV AL, V1[2]
    
    MOV [SI], AL
    INC SI
    
    MOV AL, V1[3]
      
    MOV [SI], AL  
    INC SI
    
    MOV AL, V1[4]
    
    MOV [SI], AL
              
   
        
    MOV AH, 9
    LEA DX, V2
    INT 21H   
     
EXIT:      
    MOV AH, 4CH
    INT 21H



