.MODEL SMALL
.STACK 100H
.DATA
    str db "ASSEMBLY$"

.CODE
    MOV AX, @DATA
    MOV DS, AX
    
    LEA SI, STR
    ADD [SI], 20H   ;convert A
    INC SI       
    ADD [SI], 20H   ;convert S
    INC SI       
    ADD [SI], 20H   ;convert S
    INC SI       
    ADD [SI], 20H   ;convert E
    INC SI       
    ADD [SI], 20H   ;convert M
    INC SI       
    ADD [SI], 20H   ;convert B
    INC SI       
    ADD [SI], 20H   ;convert L
    INC SI       
    ADD [SI], 20H   ;convert Y
    
    LEA DX, STR
    MOV AH, 9
    INT 21H
    
    MOV AH, 4CH
    INT 21H