;===============================================================================
; Problem Statement:
; Write an ARM assembly program to subtract two 64-bit numbers using the
; borrow propagation method with SUBS and SBC instructions.
;
; Input:
; R0 - Lower byte of first number
; R1 - Higher byte of first number
; R2 - Lower byte of second number
; R3 - Higher byte of second number
;
; Output:
; R4 - Lower byte of result
; R5 - Higher byte of result
;
; Test Cases:
; Test Case 1:
; Input: First number = 0x20000001F2345678, Second number = 0x0000002200000012
; Expected Output: R4:R5 = 0x1FFFFFFDF2345666
;
; Test Case 2:
; Input: First number = 0x0000000100000000, Second number = 0x0000000000000001
; Expected Output: R4:R5 = 0x00000000FFFFFFFF
;===============================================================================
	AREA aa,CODE,READONLY
    entry
	ldr r0,=0xF2345678;Lower byte of 1st number
	ldr r1,=0x20000001;Higher byte of 1st number
	ldr r2,=0x00000012;Lower byte of 2nd number
	ldr r3,=0x00000022;Higher byte of 2nd number
	subs r4,r1,r0     ;r4 stores the lower byte of answer
	sbc r5,r2,r3      ;r5 stores the higher byte of answer
stop b stop
    end