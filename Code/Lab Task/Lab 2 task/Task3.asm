.MODEL SMALL
.STACK 100H

.CODE
    MOV AH, 1    ;SINGLE-KEY INPUT
    
    INT 21H  
    MOV BH, AL
    
    INT 21H
    MOV CH, AL
        
    
    MOV AH, 2    ;SINGLE KEY OUTPUT
    
    MOV DL, CH   ;
    INT 21H
    
    
    MOV DL, BH
    INT 21H 
    
    
    MOV DL, 0AH  ;ASCII of new line as i separate 3b from 3a with a new line
    INT 21H
    MOV DL, 0DH  ;ASCII of cret  
    INT 21H  
    
    
    MOV AH, 1   ;SINGLE-KEY INPUT
    
    INPUT:
    INT 21H  
    MOV BH, AL ;1ST INPUT IN BH
    
    INT 21H
    MOV CH, AL ;2ND INPUT IN CH 
    
    INT 21H
    MOV DH, AL ;3RD INPUT IN DH
                              
    OUTPUT:
    MOV AH, 2
    
    MOV DL, 20H ;displays the space
    INT 21H 
    
    MOV DL, DH  ;displays the 3rd input
    INT 21H
    
    MOV DL, CH  ;displays the 2nd input
    INT 21H
    
    MOV DL, BH  ;displays the 1st input
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
                       
    

