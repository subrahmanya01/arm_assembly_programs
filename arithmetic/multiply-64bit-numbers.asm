;===============================================================================
; Problem Statement:
; Write an ARM assembly program to multiply two 64-bit numbers using multiple
; 32-bit multiplications and accumulate operations.
;
; Input:
; R0 - Higher word of first number
; R1 - Lower word of first number
; R2 - Higher word of second number
; R3 - Lower word of second number
;
; Output:
; R4 - Lower word of result
; R5 - Higher word of result
;
; Test Cases:
; Test Case 1:
; Input: First number = 0x0000000500000000, Second number = 0x0000000500000000
; Expected Output: R4:R5 = 0x0000001900000000 (25 followed by 8 zeros in hex)
;
; Test Case 2:
; Input: First number = 0x0000000100000001, Second number = 0x0000000200000002
; Expected Output: R4:R5 = 0x0000000300000004
;===============================================================================
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00000005 ;higher word of first number
		ldr r1,=0x00000000   ;lower word of first number
		ldr r2,=0x00000005   ;higher word of second number
		ldr r3,=0x00000000   ;lower word of second number
	
	    mul r3,r0,r3
		mla r3,r2,r1,r3
		umull r4,r5,r0,r2
		add r5,r3,r5          ;result will be stored in r4 and r5
		
stop    b stop
	    end