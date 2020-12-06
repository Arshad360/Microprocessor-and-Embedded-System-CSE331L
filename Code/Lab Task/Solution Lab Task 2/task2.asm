.MODEL SMALL
.STACK 100H
.CODE  

;task 2.a)
MOV AH, 1
INT 21H 
MOV BL, AL      ;1st input in bl
INT 21H
MOV CL, BL      ;2nd input in cl      

;task 2.b)
MOV AH, 2
MOV DL, 20H     ;ASCII OF SPACE IS 20H
INT 21H                               

;task 2.c)
MOV DL, BL
INT 21H
MOV DL, CL
INT 21H 

MOV AH, 4CH
INT 21H