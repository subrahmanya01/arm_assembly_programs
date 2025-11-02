;===============================================================================
; Problem Statement:
; Set specific bits (2nd, 4th, and 8th bits) in a register using bitwise OR
; operation, regardless of their current state.
;
; Input:
; R4 - Initial value
; R0 - Bit mask (0x8A = 1000 1010 in binary, representing bits 8,4,2)
;
; Output:
; R4 - Result with bits 2, 4, and 8 set to 1
;
; Test Cases:
; Test Case 1:
; Input: R4 = 0x00011111 (0000 0000 0001 0001 0001 0001 0001)
;        R0 = 0x0000008A (0000 0000 0000 0000 0000 1000 1010)
; Expected Output: R4 = 0x0001119B (bits 2,4,8 set)
;
; Test Case 2:
; Input: R4 = 0x00000000 (all zeros)
;        R0 = 0x0000008A
; Expected Output: R4 = 0x0000008A (only bits 2,4,8 set)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r4,=0x00011111  ;storing the number 
	ldr r0,=0x0000008A  
	orr r4,r4,r0        ;r4 stores the result after setting the 2,4,8th bit
	
stop b stop
	end