;===============================================================================
; Problem Statement:
; Write an ARM assembly program to add two 32-bit numbers and store the result
; in a register.
;
; Input:
; R0 - First 32-bit number
; R1 - Second 32-bit number
;
; Output:
; R2 - Sum of the two numbers
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x12345678, R1 = 0x00000002
; Expected Output: R2 = 0x1234567A
;
; Test Case 2:
; Input: R0 = 0xFFFFFFFF, R1 = 0x00000001
; Expected Output: R2 = 0x00000000 (with carry flag set)
;===============================================================================
    AREA aa,CODE,READONLY
    entry
	ldr r0,=0x12345678
	ldr r1,=0x00000002
	add r2,r0,r1
stop b stop
	end