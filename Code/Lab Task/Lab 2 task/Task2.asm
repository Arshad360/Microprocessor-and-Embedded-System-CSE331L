.MODEL SMALL
.STACK 100H

.CODE
    INPUT:
    MOV AH, 1    ;SINGLE-KEY INPUT
    
    INT 21H  
    MOV BH, AL   ;1st input into BH
    
    INT 21H
    MOV CH, AL   ;2nd input into CH
    
    OUTPUT:
    MOV AH, 2 
    
    MOV DL, 20H  ;space
    INT 21H    
    
    MOV AH, 2    ;SINGLE KEY OUTPUT
    
    MOV DL, BH   ;displays 1st input
    INT 21H
    
    MOV AH, 2
    MOV DL, CH   ;displays 2nd input
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
                       
    

