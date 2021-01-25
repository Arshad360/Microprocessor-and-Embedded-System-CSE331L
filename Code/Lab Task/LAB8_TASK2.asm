INCLUDE EMU8086.INC

.MODEL SMALL
.STACK 100H
 
.DATA
SUM DB 0
MAX DB 0
MIN DB 9

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    MOV CX, 8
    
    INPUT:
    INT 21H
    MOV BL, AL 
    PUTC 20H
    
    ;---if user inputs the space then the program should be----;
    
    ;MOV CX, 16
    ;INPUT:
    ;INT 21H
    ;MOV BL, AL
    ;INT 21H    ;(THIS SHOULD BE THE SPACE)
    ;----------------------------------------------------------;
    
    ;CONVERT
    SUB BL, 30H
    ADD SUM, BL 
    
    ;COMPARE HIGHEST
    CALL HIGHEST 
    ;COMPARE LOWEST
    CALL LOWEST
    
    LOOP INPUT 
    
    AVERAGE:
    MOV CX, 3
    SHR SUM, CL
    
    DISPLAY_AVG: 
    
    PRINTN
    PRINT "Average: "
    
    XOR AX, AX
    ;MOV AX, 0
    ;SUB AX, AX
    MOV AL, SUM
    CALL PRINT_NUM
    
    DISPLAY_HIGHEST:
    
    PRINTN
    PRINT "Highest: "
    MOV AL, MAX
    CALL PRINT_NUM  
    
    DISPLAY_LOWEST:
    
    PRINTN
    PRINT "Lowest: "
    MOV AL, MIN
    CALL PRINT_NUM
    
    EXIT:
    MOV AH, 4CH
    INT 21H    
    
MAIN ENDP 

HIGHEST PROC
    
    CMP BL, MAX
    JA HIGH  
    RET
    
    HIGH: 
    MOV MAX, BL 
    RET 
    
HIGHEST ENDP 

LOWEST PROC
    
    CMP BL, MIN
    JB LOW  
    RET
    
    LOW: 
    MOV MIN, BL 
    RET 
    
LOWEST ENDP
    

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
