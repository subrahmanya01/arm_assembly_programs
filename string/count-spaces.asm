;===============================================================================
; Problem Statement:
; Count the number of spaces (ASCII 0x20) in a given string that is terminated
; with a carriage return.
;
; Input:
; Memory at 'array' - Input string terminated with CR (0x0D)
; R0 - Pointer to input string
; R3 - Space character (0x20)
;
; Output:
; R1 - Count of spaces in the string
;
; Test Cases:
; Test Case 1:
; Input: "A A A A"
; Expected Output: R1 = 0x00000003 (3 spaces)
;
; Test Case 2:
; Input: "Hello World Program"
; Expected Output: R1 = 0x00000002 (2 spaces)
;===============================================================================
cr  EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	mov r1,#0x00   ;stores the count of blank spaces in the string
	mov r3,#0x20

main
     ldrb r2,[r0],#1
	 cmp r2,#cr
	 beq stop
	 cmp r2,r3
	 addeq r1,r1,#1
	 bal main
stop b stop
array DCB "A A A A",cr
	end
		