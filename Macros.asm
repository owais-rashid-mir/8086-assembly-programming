; Macros

print macro p1		; print is the macro name
	mov dx, offset p1
	mov ah, 9
	int 21h
endm      ; Don't write this : 		print endm.    	 It doesn't work like that.

data segment
	msg1 db 'Hello$'
	msg2 db 'Hi$'
data ends

code segment
	assume cs:code, ds:data
	
	start:      
	mov ax, data
	mov ds, ax
	
	print msg1
	print msg2
	
	mov ah, 4ch
	int 21h
	
code ends
end start
