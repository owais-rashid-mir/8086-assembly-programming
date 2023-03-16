; Program to print a single character.

code segment
    assume cs:code

    start:
    mov dl, 'a'		; move character 'a' to dl register
    
    mov ah, 2        ; int 21h function 2 for reading a character
    int 21h
    
    mov ah, 4ch     ; int 21h function 4ch for terminating the program
    int 21h

code ends
end start
