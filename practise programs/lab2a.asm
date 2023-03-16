; program that reads integer value from keyboard and then displays it

data segment
	var1 db ?
data ends

code segment
	assume cs:code, ds:data
	start:
	mov ax, data
	mov ds, ax
	mov ah, 01
	int 21h
	
	lea bx, var1
	mov bx, ax
	mov dx,bx
	mov ah, 02
	int 21h
	
	mov ah, 4ch
	int 21h
code ends

end start
