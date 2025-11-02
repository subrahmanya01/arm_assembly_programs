;===============================================================================
; Problem Statement:
; Determine if a number is positive or negative using two different methods:
; 1. TST instruction to check the sign bit
; 2. Logical shift right to isolate the sign bit
;
; Input:
; R0 - First number to test using TST method
; R3 - Second number to test using shift method
;
; Output:
; R2 - Result for TST method: 1 if positive, 0 if negative
; R4 - Result for shift method: 1 if positive, 0 if negative
;
; Test Cases:
; Test Case 1 (Using TST):
; Input: R0 = 0x00000004
; Expected Output: R2 = 0x00000001 (Positive)
;
; Test Case 2 (Using Shift):
; Input: R3 = 0x80000005
; Expected Output: R4 = 0x00000000 (Negative)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000004  ;stores the number to be checked wether +ve or -ve
	mov r2,#0x00       ;Stores 1 if the number stored in r0 is +ve otherwise it will store 0
	tst r0,#0x80000000
	moveq r2,#0x01
	
	;using shift instruction
	ldr r3,=0x80000005   ;stores the number to be checked wether +ve or -ve
	mov r4,#0x00          ;Stores 1 if the number stored in r3 is +ve otherwise it will store 0
	mov r5,r3,lsr #31
	teq r5,#0x00000001
	movne r4,#0x01
	
stop b stop
	end