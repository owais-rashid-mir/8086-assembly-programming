code SEGMENT
    ASSUME cs:code

    start:
    mov dl, 'z'
    
    mov ah,2
    int 21h
    
    mov ah, 4ch
    int 21h

code ENDS
END start
