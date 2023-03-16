; Program to subtract 2 single digit numbers

code segment
    assume cs:code

    start:
    
    ; Move 2 values to any 2 registers
    mov bl, 6
	mov cl, 2	
    
    sub bl, cl		; Subtracting 6 and 2
	
	; The computed difference will be in ASCII. Convert it to decimal by adding 48(ASCII of 0)
	add bl, 48	       
    
    mov dl, bl
    
    mov ah, 2
    int 21h
    
    mov ah, 4ch     
    int 21h

code ends
end start
