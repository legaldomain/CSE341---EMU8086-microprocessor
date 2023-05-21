;Input a word and check whether the word is palindrome or not

data segment
    ; add your data here!
    m db 'm', 'a', 'd', 'a', 'm'
    n db "Palindrome$"
    o db "Not a Palindrome$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here
    mov cx, 5
    mov si, 0
    
    begin:
    mov dl, m[si]
    mov dh, 0
    push dx
    inc si
    loop begin
    
    
    mov cx, 5
    mov si, 0
    
    begin2:
    pop dx       
    mov dh, 0
    cmp m[si], dl
    jne disp
    inc si
    loop begin2
    
    
    
    mov ah, 9
    lea dx, n
    int 21h 
    jmp exit
     
    
    disp:
    mov ah, 9
    lea dx, o
    int 21h 
    
    exit:
    
    
    ; exit to operating system.
    
ends

end start 