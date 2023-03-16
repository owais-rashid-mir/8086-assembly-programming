; Unit1Lab2a - Write a program that reads an integer value fromkeyboardusingINT21Hkeyboardservice
; ,stores itinmemory,anddisplaysitusingINT21HdisplayserviceafterdoingnecessaryASCII
; conversion

data segment
	num1 db 0
	
	mes1 db "Enter a single digit number : $"
	newLine db 13,10,'$'      ; 13 and 10 for newline and carriage return.
	mes3 db "Displaying the number : $"
data ends

code segment
	assume cs: code , ds: data
	start:
	
	mov ax, data
	mov ds, ax
	
	; Displaying mes1
	mov dx, offset mes1
	mov ah,09
	int 21h
	
	; Reading a number
	mov ah, 01
	int 21h
	
	; ASCII conversion
	sub al, 48
	mov num1, al
	add num1, 48     ; Reconverting to Ascii- for use in dx
	
	; Inserting new line
	mov dx, offset newLine
	mov ah, 9
	int 21h
	
	; Displaying mes3
	mov dx, offset mes3
	mov ah, 09
	int 21h
	
	; Printing the character
	mov dl, num1
	mov ah,02
	int 21h
	
	; Terminating
	mov ah, 4ch
	int 21h     
code ends
end start
