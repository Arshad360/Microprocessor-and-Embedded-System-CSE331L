.MODEL SMALL
.STACK 100H
.DATA
    str db "Enter two digits:$"

.CODE
    MOV AX, @DATA
    MOV DS, AX
    
    lea dx, str
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al  ;1st input in bh
    int 21h
    mov ch, al  ;2nd input in ch
    
    add bh, ch  ;add them
    sub bh, 30h
    
    mov dl, 20h
    mov ah, 2
    int 21h     ;print a space
    
    mov dl, bh
    int 21h
    
    MOV AH, 4CH
    INT 21H