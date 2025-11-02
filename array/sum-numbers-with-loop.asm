;===============================================================================
; Problem Statement:
; Calculate the sum of five 32-bit numbers stored in memory using a loop
; structure for array traversal.
;
; Input:
; Memory at 0x40000000 - Array of 5 32-bit numbers
; R2 - Counter (5)
;
; Output:
; R3 - Sum of all five numbers
;
; Test Cases:
; Test Case 1:
; Input: Memory contains [0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005]
; Expected Output: R3 = 0x0000000F (15 in decimal)
;
; Test Case 2:
; Input: Memory contains [0xFFFFFFFF, 0x00000001, 0x00000002, 0x00000003, 0x00000004]
; Expected Output: R3 = 0x00000009 (with overflow ignored)
;===============================================================================
	 AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x40000000   ;storing the initial adress of the array to register r0
	 mov r2,#0x05   ;Counter
	 mov r3,#0x00   ;Stores the total sum of 5 32 bit numbers
label 
	 ldr r4,[r0],#4
	 add r3,r3,r4
	 subs r2,r2,#0x01
	 bne label
	    
stop b stop
	 end