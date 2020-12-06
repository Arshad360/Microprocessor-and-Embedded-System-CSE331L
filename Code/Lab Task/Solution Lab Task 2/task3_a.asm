.MODEL SMALL
.STACK 100H
.CODE  

;task 3.a)
MOV AH, 1
INT 21H 
MOV BL, AL      ;1st input in bl
INT 21H
MOV CL, AL      ;2nd input in cl  

MOV AH, 2
MOV DL, CL      ;2ND ONE FIRST
INT 21H
MOV DL, BL      ;1ST ONE LAST & THUS REVERSED
INT 21H    

MOV AH, 4CH
INT 21H