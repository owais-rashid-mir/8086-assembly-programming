; Variables and strings

data segment
	var1 db '1'
	var2 db 'Hello World$'     ; $ to terminate the string.
data ends

code segment
	assume cs:code, ds:data
	
	start:
	
	;Initilizing the data segment
	mov ax, data
	
	; moves data address to ds so that data segment gets initialized
	; as heap memory to access variables fast.
	mov ds, ax
	
	;Initializing 1st variable.
	; You can't move var1 to dx. var1 is declared as db(8 bits) and dl is also 8 bits. Both should be compatible. Or you can use Byteptr
	mov dl, var1
	mov ah, 2
	int 21h
	
	
	;Initializing 2nd variable.
	mov dl, var2
	; If we don't move the offset address of var3 to dx, then only 1 character of string will be printed.
	; Offset is 16 bits, so use dx
	; Instead of below offset instruction, you can write: lea dx, var2
	mov dx, offset var2
 	    
	mov ah, 9	;Printing string fxn
	int 21h
	
	mov ah, 4ch
	int 21h

code ends
end start
