; Unit2Lab3a  - Write a program that uses a Macro to exchange the values of two 16-bit integer
; variables.

; NOT WORKING

exchange macro
	xchg ax, bx
endm

data segment
	num1 dw 1
	num2 dw 2
	spa db 13,10,"-------------------------------- ",13,10,'$'
	mes db " before swapping " , 13,10,'$'
	mes2 db "After swapping " ,13,10,'$'
	mes3 db " $"
data ends

code segment
	assume cs: code, ds:data
	start:
	
	MOV AX, DATA
	MOV DS, AX
	
	; printing numbers before swapping
	lea dx, spa
	mov ah,09
	int 21h
	
	lea dx, mes
	mov ah,09
	int 21h
	
	mov ax, num1
	mov ah, 2
	int 21h
	
	mov bx, num2
	mov ah, 2
	int 21h
	
	exchange
	
	; printing numbers after swapping
	lea dx, spa
	mov ah,09
	int 21h
	
	lea dx, mes2
	mov ah,09
	int 21h
	
	mov dx, num1
	mov ah, 2
	int 21h
	
	mov dx, num2
	mov ah, 2
	int 21h
	
	mov ah, 4ch
	int 21h
code ends
End start
