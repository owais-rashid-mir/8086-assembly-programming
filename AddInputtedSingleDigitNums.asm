; Read single digit numbers and add them.
; Once the program runs, enter a number, followed by 2nd num. DON'T press the enter key 
; to input 2nd number.

code segment
    assume cs:code

    start:
    
    ; Input 1st number
    mov ah,1
    int 21h
    
    ; The first inputted number is in al register. Move it to bl(or any other register) so 
    ; the value in al is not overwritten by 2nd inputted number,
    mov bl, al
    
    ; Input 2nd number
    mov ah, 1	
	int 21h 
	
	add bl, al		; Adding
	
	sub bl, 48		; Converting to ASCII
	
	mov dl, bl
	
	mov ah, 2
	int 21h
	
	mov ah, 4ch
	int 21h 
    
    

code ends
end start
