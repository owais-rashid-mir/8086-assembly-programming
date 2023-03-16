;lab 1b
data segment
	var1 db 'HELLOWORLD $'
data ends

code segment
	assume ds: data, cs:code
	start:
	mov ax, data
	mov ds, ax
	
	mov si, offset var1
	mov bl,'H'
	mov [si], bl
	inc si
	
	mov bl,'A'
	mov [si], bl
	inc si
	
	mov bl,'P'
	mov [si], bl
	inc si
	
	mov bl,'P'
	mov [si], bl
	inc si
	
	mov bl,'Y'
	mov [si], bl
	inc si
	
	mov bl,'E'
	mov [si], bl
	inc si
	
	mov bl,'A'
	mov [si], bl
	inc si
	
	mov bl,'R'
	mov [si], bl
	inc si
	
	mov bl,'T'
	mov [si], bl
	inc si
	
	mov bl,'H'
	mov [si], bl
	inc si
	
	mov bx, offset var1 ;taking the offset value of var1 again to get its new content displayed
	mov dx,bx
	mov ah,09
	int 21h
	
	mov ah, 4ch
	int 21h
	
code ends
end start
