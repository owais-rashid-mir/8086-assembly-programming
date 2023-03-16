; Printing 0-9 using a loop  .

code segment
	assume cs:code
	
	start:
	
	; COuntet register. Upto 10 characters will be printed.
	mov cx, 10
	
	; move 48(ASCII of 0) to dx. Loop will start from 0
	mov dx, 48
	
	; Label. Label name can be anything but must follow identifier rules.
	l1:
		mov ah, 2
		int 21h
		
		inc dx	; or, add dx, 1
	loop l1		; Loop ends here.
	
	mov ah, 4ch
	int 21h
	
code ends
end start
