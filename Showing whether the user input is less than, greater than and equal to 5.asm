.model small
.stack 100h

.data
msg1 db "Enter a Number: ", "$" 
msg2 db "Greater than 5 ", "$"   
msg3 db "Equal to 5 ", "$"
msg4 db "Smaller to 5 ", "$"
number db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg1
    mov ah, 09h
    int 21h

    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov cl, 35h
    
    cmp bl, cl
    je print2
    jg print
    jmp print3
    
       
    print2:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    lea dx, msg3
    mov ah, 09h
    int 21h
    jmp exit
    
    print:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    lea dx, msg2
    mov ah, 09h
    int 21h
    jmp exit
    
    print3:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    lea dx, msg4
    mov ah, 09h
    int 21h
    jmp exit
    
    exit:
    mov ah, 04ch
    int 21h
    main endp
end main