; printing array elementss using loop

data segment
	arr db 'a', 'b', 'c'
data ends

code segment
	assume cs:code, ds:data
	
	start:
	
	mov ax, data
	mov ds, ax
	
	mov si, offset arr
	mov cx, 3	; counter register. There are 3 elements in array
	
	l1:
		mov dx, [si]
		
		mov ah, 2
		int 21h
		
		inc si
	loop l1
	
	mov ah, 4ch 
	int 21h

code ends
end start
