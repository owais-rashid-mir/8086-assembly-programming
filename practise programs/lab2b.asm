data segment
	n1 db 'owais$'
data ends

code segment
	assume cs:code, ds:data
	start:
	mov ax, data
	mov ds, ax
	
	mov si, offset n1
	mov dl, [si]
	mov ah, 02
	int 21h
	inc si
	
	mov dl, [si]
	mov ah, 02
	int 21h
	inc si
	
	mov dl, [si]
	mov ah, 02
	int 21h
	inc si
	
	mov dl, [si]
	mov ah, 02
	int 21h
	inc si
	
	mov dl, [si]
	mov ah, 02
	int 21h
	
	mov ax, 4c00h
	int 21h
	
code ends
end start
