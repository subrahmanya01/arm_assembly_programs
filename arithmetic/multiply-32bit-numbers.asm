;===============================================================================
; Problem Statement:
; Write an ARM assembly program to multiply two 32-bit numbers using the MUL
; instruction and store the result in a register.
;
; Input:
; R0 - First 32-bit number
; R1 - Second 32-bit number
;
; Output:
; R2 - Product of the two numbers
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x00000123, R1 = 0x00000003
; Expected Output: R2 = 0x00000369
;
; Test Case 2:
; Input: R0 = 0x00010000, R1 = 0x00000010
; Expected Output: R2 = 0x00100000
;===============================================================================
    AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000123  ;first operand
	ldr r1,=0x00000003  ; Second operand
	mul r2,r0,r1      ; r2 stores the result of multiplication
stop b stop
    end