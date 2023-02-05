.MODEL SMALL ;you intend to use the small memory model - one code segment, one data segment and one stack segment
.STACK 100H  ;this indicates the size of the memory within the stack
.DATA
    ;define your variable here
.CODE ;code segment starts here
MAIN PROC ;write all code into this block
    ;initialize all the variables
    MOV AX, @DATA
    MOV DS, AX
    
    ;write code here
    
    ;Q IS : (1+2) * (3-1)/3+3+2-(1*2)
    MOV AX, 1
    MOV BX, 2
    ADD AX, BX ; (1+2) = 3
    MOV CX, AX  
    
    
    MOV AX, 3
    MOV BX, 1
    SUB AX, BX ; (3-1) = 2  
    
    
    MUL CX ; (2*3) = 6  
    
    
    MOV BX, 3
    DIV BX ; (6/3)
    MOV CX, AX   
                 
                 
    MOV AX, 1
    MOV BX, 2
    MUL BX ; (1*2)
    NEG AX ; -(1*2) 
    
    
    
    ADD AX, 3
    ADD AX, 2
    ADD AX, CX
    
    
    
    
    
    EXIT:
    MOV AX, 4C00H
    INT 21H ;interrupt function
    MAIN ENDP
END MAIN



