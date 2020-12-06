.MODEL SMALL
.STACK 100H
.DATA
    ARRAY1 DB 22H, 45H, 30H, 65H, 56H
    ARRAY2 DB 5 DUP(?)

.CODE
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BX, 0        
    
    ;copy 1st element
    MOV AL, ARRAY1[BX]
    MOV ARRAY2[BX], AL
    INC BX
    
    ;copy 2nd element
    MOV AL, ARRAY1[BX]
    MOV ARRAY2[BX], AL
    INC BX
    
    ;copy 3rd element
    MOV AL, ARRAY1[BX]
    MOV ARRAY2[BX], AL
    INC BX
    
    ;copy 4th element
    MOV AL, ARRAY1[BX]
    MOV ARRAY2[BX], AL
    INC BX
    
    ;copy 5th element
    MOV AL, ARRAY1[BX]
    MOV ARRAY2[BX], AL
    
    MOV AH, 4CH
    INT 21H