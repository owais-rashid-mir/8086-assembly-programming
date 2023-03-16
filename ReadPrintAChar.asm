; Program to read and print a single character.

code segment
    assume cs:code

    start:
    
    mov ah, 1		; int 21h function 1 to read a character.
	int 21h 	
    
    ; Input is taken by accumulator register al. We have to move it to data register dl.
    mov dl, al		       
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch     
    int 21h

code ends
end start
