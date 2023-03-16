; Checking whether 2 numbers are equal ot not, using Jump

data segment
	msg1 db 'Numbers are equal$'
	msg2 db 'Numbers are not equal$'
data ends

code segment
	assume cs:code, ds:data
	
	start:
	mov ax, data
	mov ds, ax
	
	; Initialize dl with 3. Put 3 in quotes because this way ASCII will be matched and no conversion will be required.
	mov dl, '3'
	
	; Take 2nd num from user
	mov ah, 1
	int 21h
	
	cmp al, dl
	
	je l1      ; l1 is the label. If 2 nums are equal, jump to label l1. If not, execute the below statements.
	mov dx, offset msg2	
	mov ah, 9
	int 21h
		
	mov ah, 4ch
	int 21h
		
	l1:
	mov dx, offset msg1
	mov ah, 9
	int 21h
	
	mov ah, 4ch
	int 21h
	
code ends
end start
