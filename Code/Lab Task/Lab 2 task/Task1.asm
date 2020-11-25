.MODEL SMALL
.STACK 100H

.CODE
    INPUT:
    MOV AH, 1    ;SINGLE-KEY INPUT
    INT 21H
    
    MOV BL, AL   ;INPUT MOVED TO BL 
    
    
    OUTPUT:
    MOV AH, 2    ;SINGLE-KEY OUTPUT
    
    MOV DL, 20H  ;OUTPUT TO DL
    INT 21H      ;DISPLAYS SPACE 
   
    MOV DL, BL   ;DISPLAYS THE CHARACTER STORED IN BL
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
                       
    

