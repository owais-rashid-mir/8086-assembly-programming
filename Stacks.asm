;Stacks
; Doesn't work. Check how to add stack segment etc.

code segment
	assume cs:code
	start:
	
	mov ax, 2
	push ax
	
	pop ax
	
	mov dx, ax
	
	mov ah, 2
	int 21h
	
	mov ah, 4ch
	int 21h

code ends
end start
