;===============================================================================
; Problem Statement:
; Implement multiplication by specific constants (5, 15, and 24) without using
; the MUL instruction, using only shifts and additions.
;
; Input:
; R1 - First number to multiply by 5
; R3 - Second number to multiply by 15
; R0 - Third number to multiply by 24
;
; Output:
; R0 - Result of 5 × R1
; R7 - Result of 15 × R3
; R2 - Result of 24 × R0
;
; Test Cases:
; Test Case 1:
; Input: R1 = 0x00000003, R3 = 0x00000004
; Expected Output: 
; R0 = 0x0000000F (15 in decimal, 5 × 3)
; R7 = 0x0000003C (60 in decimal, 15 × 4)
; R2 = 0x00000168 (360 in decimal, 24 × 15)
;
; Test Case 2:
; Input: R1 = 0x00000002, R3 = 0x00000003
; Expected Output:
; R0 = 0x0000000A (10 in decimal, 5 × 2)
; R7 = 0x0000002D (45 in decimal, 15 × 3)
; R2 = 0x000000F0 (240 in decimal, 24 × 10)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r1,=0x00000003   
	ldr r3,=0x00000004
	
	;(1)R0=5R1
	mov r0,r1,lsl #2
	add r0,r0,r1
	
	;R7=15R3
	mov r7,r3,lsl #4
	sub r7,r7,r3
	
	;(3) R2=24R0
	mov r2,r0,lsl #4
	mov r4,r0,lsl #3
	add  r2,r2,r4
	
	
	
stop b stop
	 end