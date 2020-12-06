.MODEL SMALL
.STACK 100H
.CODE  

;task 1.a)
MOV AH, 1
INT 21H 
MOV BL, AL      

;task 1.b)
MOV AH, 2
MOV DL, 20H     ;ASCII OF SPACE IS 20H
INT 21H                               

;task 1.c)
MOV DL, BL
INT 21H 

MOV AH, 4CH
INT 21H