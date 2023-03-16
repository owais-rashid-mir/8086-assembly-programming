; Unit2Lab3a  - Write a program that uses a Macro to exchange the values of two 16-bit integer
; variables.

exchange macro
	mov cx, ax
	mov ax, bx
	mov bx, cx
endm

data segment
	num1 dw 1456
	num2 dw 1254
	spa db 13,10,"-------------------------------- ",13,10,'$'
	mes db " before swapping " , 13,10,'$'
	mes2 db "After swapping " ,13,10,'$'
	mes3 db " $"
data ends

code segment
	assume cs: code, ds:data
	
	MAIN PROC FAR
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
	CALL PRINT
	
	lea dx, mes3
	mov ah,09
	int 21h
	
	mov ax,num2
	CALL PRINT
	
	;printing numbers after swapping
	lea dx, spa
	mov ah,09
	int 21h
	
	lea dx, mes2
	mov ah,09
	int 21h
	
	mov ax, num1
	mov bx, num2
	
	EXCHANGE ; calling macromov num2,bx
	
	CALL PRINT
	lea dx, mes3
	mov ah,09
	int 21h
	
	mov ax, num2
	call print
	
	MOV AH,4CH
	INT 21H
	
	MAIN ENDP
	
	; procedure for printing the multi digit number stored in ax
	print proc
	mov cx, 0
	mov dx, 0
	label1:
	cmp ax, 0
	je print1
	mov bx, 10
	div bx
	push dx
	inc cx
	xor dx, dx
	jmp label1
	print1:cmp cx,0
	je exit
	pop dx
	add dx,48
	mov ah,02h
	int 21h
	dec cx
	jmp print1
	exit:
	ret
	print endp
code ends
End main
