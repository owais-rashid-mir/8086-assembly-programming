;Lab 3a
data segment
	mes1 db "Enter the first number : $"
	mes2 db " Enter the second number : $"
	mes3 db " sum is : $ "
	mes4 db " difference is : $ "
data ends

code segment
	assume cs: code, ds: data
	start:
	
	mov ax, data
	mov ds, ax
	
	lea dx, mes1
	mov ah, 09
	int 21h
	
	mov ah, 01
	int 21h
	mov bl,al
	sub bl, 48
	mov ch, bl
	lea dx, mes2
	mov ah, 09
	int 21h
	
	mov ah, 01
	int 21h
	mov bh, al
	sub bh, 48
	mov cl, bh
	
	lea dx, mes3
	mov ah, 09
	int 21h
	
	add bl, bh
	add bl, 48
	
	MOV AH, 2
	MOV DL, BL
	INT 21H
	
	lea dx, mes4
	mov ah, 09
	int 21h
	
	sub ch, cl
	add ch, 48
	MOV AH, 2
	MOV DL, ch
	INT 21H
	
	mov ah, 4ch
	int 21h
	
code ends

end start
