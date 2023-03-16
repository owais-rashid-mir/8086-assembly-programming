; Procedures (like functions)

code segment
	assume cs:code
	start:
	
	
 	call my_proc  	; Procedure call. 
	
	
	my_proc proc
		mov dx, '1'
		
		mov ah, 2
		int 21h
		
		mov ah, 4ch
		int 21h
		
		ret		;return
	my_proc endp	
	
code ends
end start   
