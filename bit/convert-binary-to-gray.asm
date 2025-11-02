;===============================================================================
; Problem Statement:
; Convert between binary and Gray code representations of numbers using bit
; operations. Program demonstrates both binary-to-Gray and Gray-to-binary
; conversions.
;
; Input:
; R0 - Binary number to convert to Gray code
; R4 - Gray code number to convert to binary
;
; Output:
; R3 - Gray code result from binary input
; R7 - Binary result from Gray code input
;
; Test Cases:
; Test Case 1 (Binary to Gray):
; Input: R0 = 0x00000123
; Expected Output: R3 = 0x00000135
;
; Test Case 2 (Gray to Binary):
; Input: R4 = 0x000001B2
; Expected Output: R7 = 0x000001A1
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	
    ;Binary to gray convertion
	ldr r0,=0x00000123
	add r1,r0,r0
	eor r2,r1,r0
	mov r3,r2,lsr #1
	
	;Gray to binary conversion
	ldr r4,=0x000001B2
	mov r5,r4, lsl #1
	add r6,r5,r5
	mov r7,r6,lsr #1
	
stop b stop
    end
	