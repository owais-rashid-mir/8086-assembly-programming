; Unit2Lab1a - Write to program reads two integers from keyboard (using INT 21H) and displays
;the result ofthe AND, OR, XOR, CMP and TEST operation (using INT 21H after
;doing necessary ASCII conversion).

data segment
	mes db 13,10,"result of AND operation := $"
	mes1 db 13,10,"result of OR operation := $"
	mes2 db 13,10,"result of XOR operation := $"
	mes3 db 13,10,"result of CMP operation := $"
	mes5 db "not equal : $"
	mes6 db "numbers are equal $"
data ends

code segment
	assume cs: code, ds: data
	start:
	
	mov ax, data
	mov ds, ax
	
	;--------------------------------------------------------
	;performing AND operation
	;--------------------------------------------------------
	mov al,05 ;00000101
	mov bl,03 ;00000011
	AND al,bl ;00000001 output should be 1
	
	lea dx,mes
	mov ah, 09
	int 21h
	
	add al, 48
	mov dl, al
	
	mov ah,02
	int 21h
	
	;---------------------------------------------------------
	;performing OR operation
	;---------------------------------------------------------
	mov al,05 ;00000101
	mov bl,03 ;00000011
	OR al,bl ;00000111 output should be 7
	
	lea dx,mes1
	mov ah, 09
	int 21h
	
	add al, 48
	mov dl, al
	
	mov ah,02
	int 21h
	
	;---------------------------------------------------------
	;performing XOR operation
	;---------------------------------------------------------
	mov al,05 ;00000101
	mov bl,03 ;00000011
	XOR al,bl ;00000110 output should be 6
	
	lea dx,mes2
	mov ah, 09
	int 21h
	
	add al, 48
	mov dl, al
	
	mov ah,02
	int 21h
	
	;---------------------------------------------------------
	;performing CMP operation
	;---------------------------------------------------------
	lea dx,mes3
	mov ah, 09
	int 21h
	
	mov al,05
	mov bl,04
	CMP al,bl ; output should be NOT Equal
	
	jne notequal
	lea dx,mes6
	mov ah, 09
	int 21h
	
	notequal: 
	lea dx,mes5
	mov ah, 09
	int 21h
	
	;--------------------------------------------
	; TEST is same as AND operation , the only difference is AND manipulates the
	operands
	;while as TEST only manipulates the flag registers
	;--------------------------------------------------
	
	mov ah, 4ch
	int 21h
	
code ends
end start
