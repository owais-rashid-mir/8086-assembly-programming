; Program to print a string of character.

code segment
    assume cs:code

    start:
    
    mov dl, 'o'		
    mov ah, 2        
    int 21h
    
    mov dl, 'w'		
    mov ah, 2        
    int 21h
    
    mov dl, 'a'		
    mov ah, 2        
    int 21h
    
    mov dl, 'i'		
    mov ah, 2        
    int 21h
    
    mov dl, 's'		
    mov ah, 2        
    int 21h
    
    mov ah, 4ch     
    int 21h

code ends
end start
