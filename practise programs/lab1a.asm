;lab 1a
data segment
	mes db "old values: $ "
	var1 db '25'
	mes1 db " new values: $"
data ends

code segment
	assume cs: code, ds:data
	start:
	
	mov ax, data
	mov ds, ax
	
	lea dx, mes
	mov ah, 09
	int 21h
	
	mov ah, 02
	mov si, offset var1
	mov dl, [si]
	;add dl, 48
	int 21h
	inc si
	
	mov dl, [si]
	mov ah, 02
	int 21h
	
	lea dx, mes1
	mov ah, 09
	int 21h
	
	mov si, offset var1
	mov bl, 3
	mov [si], bl
	inc si
	
	mov bl, 7
	mov [si], bl
	
	mov ah, 02
	mov si, offset var1
	mov dl, [si]
	add dl, 48
	int 21h
	inc si
	
	mov dl, [si]
	add dl, 48
	mov ah, 02
	int 21h
	
	mov ah, 4ch
	int 21h
	
code ends

end start
