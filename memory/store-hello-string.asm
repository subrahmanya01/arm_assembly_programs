;===============================================================================
; Problem Statement:
; Store the string "hello" in memory by first storing 'H' at a specific memory
; location and then defining the rest of the string in data area.
;
; Input:
; R0 - Memory address (0x40000000) where 'H' will be stored
; R1 - ASCII value of 'H' (0x48)
;
; Output:
; Memory at 0x40000000 - Contains 'H'
; Memory at array - Contains "hello" followed by CR
;
; Test Cases:
; Test Case 1:
; Input: Memory write to 0x40000000
; Expected Output: Memory at 0x40000000 contains 'H' (0x48)
;
; Test Case 2:
; Input: Reading from array
; Expected Output: Memory contains "hello" followed by CR
;===============================================================================
cr equ 0x0d
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000
	ldr r1,=0x48
	strb r1,[r0]
	
array dcb "hello",cr
    end