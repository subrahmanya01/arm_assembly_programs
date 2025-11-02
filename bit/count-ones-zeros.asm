;===============================================================================
; Problem Statement:
; Count the number of 1's and 0's in a 32-bit number using bit rotation and
; the carry flag.
;
; Input:
; R0 - 32-bit number to analyze
; R1 - Counter (32)
;
; Output:
; R2 - Number of 1's in the input
; R3 - Number of 0's in the input
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x11111111 (four 1's in each byte)
; Expected Output: R2 = 0x00000008 (8 ones), R3 = 0x00000017 (23 zeros)
;
; Test Case 2:
; Input: R0 = 0xFFFFFFFF (all ones)
; Expected Output: R2 = 0x00000020 (32 ones), R3 = 0x00000000 (0 zeros)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x11111111     ;Stores the number
	mov r1,#32             ;loop counter
	mov r2,#0x00           ;stores the number of ones
	mov r3,#0x00           ;stores number of zeros
	mov r4,#0x1F
label
     movs r0,r0,rrx
	 addcs r2,r2,#1
	 subs r1,r1,#1
	 bne label
	 sub r3,r4,r2
stop b stop
    end