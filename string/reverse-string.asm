;===============================================================================
; Problem Statement:
; Reverse a string by first finding its end (CR), then copying characters
; backwards into a new memory location.
;
; Input:
; Memory at 'array' - Input string terminated with CR (0x0D)
; R0 - Pointer to input string
; R2 - Destination address (0x40000000) for reversed string
;
; Output:
; Memory at 0x40000000 - Reversed string
; R1 - Current character being processed
;
; Test Cases:
; Test Case 1:
; Input: "HELLO"
; Expected Output: "OLLEH"
;
; Test Case 2:
; Input: "ARM"
; Expected Output: "MRA"
;===============================================================================
cr EQU 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=array
	ldr r2,=0x40000000
	ldr r3,=array
golast
    ldrb r1,[r0],#1
	cmp r1,#cr
	bne golast
    
	ldrb r1,[r0],#-2
	
main
    ldrb r1,[r0],#-1
	strb r1,[r2],#1
	cmp r1,r3
	beq stop
	bal main
	
	
	
stop b stop
array DCB "HELLO",cr
	end	