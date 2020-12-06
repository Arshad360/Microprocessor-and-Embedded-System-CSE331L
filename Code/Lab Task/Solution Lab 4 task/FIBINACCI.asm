.MODEL SMALL
.STACK 100H
.CODE

MOV BL, 30H     ;BL=0
MOV BH, 31H     ;BH=1
MOV DL, BL      ;DL=0    
MOV CX, 7       ;TOTAL 7 DIGITS WILL BE PRINTED   

MOV AH, 2       ;single key output function

_LOOP:
          
INT 21H         ;start with printing 0 and then with each iteration print the fibonacci

XCHG BL, BH     ;each time exchange the data
ADD BL, BH      ;then add them    
SUB BL, 30H     ;keep the rangle in 30h-39h
MOV DL, BL      ;move the sum to dl to print using function#2
    
LOOP _LOOP 

MOV AH, 4CH
INT 21H