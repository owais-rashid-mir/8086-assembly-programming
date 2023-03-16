; Unit1Lab3a- Write a program that reads two 8-bit integers from keyboard (using INT 21H) and
; displays their sum (using INT 21H after doing necessary
; ASCII conversion).
; Doesn’t display sum with carry 

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
