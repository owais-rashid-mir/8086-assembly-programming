; Unit1Lab2b - Write a program that declares and initializes a String array(byte array), and uses
; INT 21H display service to displays all elements individually.


data segment
	arr db 'abc$'
data ends

code segment
	assume cs:code, ds:data
	start:
	
	mov ax, data
	mov ds, ax
	
	; Source Index register used as a pointer to access array
	mov si, offset arr
	
	; Printing first element of array
	mov dx, [si]	; [si] = value at address 
	mov ah,2		; int 21h function 2 to print a character.
	int 21h
	
	; Printing 2nd element of array
	inc si	; or, mov dx, [si+1]
	mov dx, [si]
	mov ah, 2
	int 21h
	
	; Printing 3rd and last element of array
	inc si	
	mov dx, [si]
	mov ah, 2
	int 21h
	
	mov ah, 4ch        ; Terminating
	int 21h

code ends
end start
