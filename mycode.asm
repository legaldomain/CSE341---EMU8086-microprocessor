.MODEL SMALL 

;CSE341 LAB 1 SOLVE BY - SADAF M. ANIS
 
.STACK 100H

.DATA  
a db 5
b db 20  
c db 30
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Data types: DB = define byte, DW = define word 






;TASK 01 Take input in the register AX, and then move it to BX using the MOV instruction.

; MOV AX, 10
; MOV BX,AX   
 
 
 
;TASK 02 Swap two numbers, using a maximum of 3 registers.

;MOV AX, 20
;MOV BX, 5
;MOV CX, BX
;MOV BX, AX
;MOV AX, CX   

;TASK 03   add two numbers using 2 registers

;MOV AX, 10
;MOV BX, 20
;ADD AX,BX

;TASK 04 subtract two numbers using two registers.

;MOV AX, 6
;MOV BX, 3
;SUB AX,BX

;TASK 05 swap two numbers using add/sub instructions only

;MOV AL, 11
;MOV BL, 4
;ADD AL,BL 
;MOV AL, 5
;MOV BL, 3
;SUB AL,BL  

;TASK 6 (A = B-A)  
;MOV AL, A
;MOV BL, B 
;SUB BL,AL  

;( A =-(A+1))
 ;MOV AL,A  
 ;INC AL
 ;NEG AL 
 
;C =A+(B+1)
;MOV AL, A
;MOV BL, B
;MOV CL, C 
;INC BL
;ADD AL,BL
;MOV CL,AL  
  

;MULTIPLICATION - BYTE AND WORD MULTIPLICATION

;BYTE multiplication 8 bit - 

;one MUST be in AL
; one value in source (any) 
; result should be in AX


;WORD multiplication 16 bit - 
;one need to be in the source
; one needs to be in the AX
;Result higher DX & LOWER AX   


;MOV AL, 12H       ;12H = 18 SO 18*18 = 324 IN AX

;MOV BL, 12H

;MUL BL ;AX = AL * BL --> 01 44 

;TASK 07

;X * Y

;MOV AL, 5 ;X
;MOV BL, 5 ;Y
;MUL BL  

;DIVISION - 2 types

;(1) BYTE division - 
;divisor 8 bit register/memory location
;dividend 16bit & SHOULD BE IN AX
;result /quatient 8 bit in AL
;reminder in AH

    
;MOV AX, 301
;MOV BL, 5
;DIV BL ;AX / BL,resultAL = 3CH(60D),remainder,AH = 01H(1D)

;(2) WORD division - 

;divisor 16 bit in any registor
;dividend in 32 bit store as DX:AX (higher 16 bit in DX, LOWER 16 bit in AX)
;result in AX 16 bit, remainder DX 16 bit
;MOV DX, 1122H
;MOV AX, 3344H
;MOV BX, 0FFFFH
;DIV BX   

;X/Y

;MOV AX,10
;MOV BL, 5
;DIV BL

;Task 11 Perform the following arithmetic operation:
; (1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2)  

;MOV AX,1
;MOV BX,2
;MOV CX,3
;MOV DX,5 

;ADD AX,BX
;MOV DI,AX ; AX VALUE NEW IN DI
;SUB CX,AX 
;MOV SI,CX ; CX VALUE NEW IN SI
;MUL SI


;Perform the following arithmetic operation:
; (5 + 6) * (4 + 1) / 3 + 2 + 1 - (6 * 5) 

MOV AL,5
MOV BL,6
ADD AL,BL

MOV CL, 4
MOV DL, 1
ADD CL,DL
MUL CL ;SO currently CL er moddhe bam diker shob value store ase

MOV BL, 3
DIV BL

MOV BL, 2
ADD AL,BL 

MOV BL,1
ADD AL,BL

MOV CX,AX
SUB AX,AX
MOV AL,6
MOV BL,5
MUL BL
SUB CL,AL

;Task 11 : (1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2) 

MOV AL, 1
MOV BL, 2
ADD AL,BL  ;this value stored in AL

MOV CL,3
MOV DL,1
SUB CL,DL  ;this value stored in CL

MOV BL,CL
MUL BL

MOV BL,5
DIV BL

MOV BL,3
ADD AL,BL

MOV BL, 2
ADD AL,BL

MOV CL,AL

MOV AL,1
MOV BL,2
MUL BL

MOV DX,AX
MOV AX,CX
MOV BX,DX
SUB AX,BX

;approach 2 (USING 2 REGISTER, AND DX)
 
;Task 11 : (1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2)






    














 
 
 





 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN





