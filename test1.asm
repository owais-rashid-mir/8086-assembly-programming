data segment
	
	var2 db '22$'     ; $ to terminate the string.
	var3 db '11$'
data ends

code segment
	assume cs:code, ds:data
	
	start:
	
	;Initilizing the data segment
	mov ax, data
	
	; moves data address to ds so that data segment gets initialized
	; as heap memory to access variables fast.
	mov ds, ax

	
	;Initializing variable.
	mov dl, var2
	; If we don't move the offset address of vae=r3 to dx, then only 1 character of string will be printed.
	; Offset is 16 bits, so use dx
	; Instead of below offset instruction, you can write: lea dx, var2
	mov dx, offset var2
	
	;Initializing 2nd variable.
	mov bl, var3
	mov bx, offset var3
 	    
	mov ah, 9	;Printing string fxn
	int 21h
	
	
	
	mov ah, 4ch
	int 21h
	
	
	mov ah, 4ch
	int 21h

code ends
end start
