;===============================================================================
; Problem Statement:
; Subtract successive elements of an array from the first element and store the
; running difference. The array contains five 32-bit numbers in memory.
;
; Input:
; Memory at 0x40000000 - Array of 5 32-bit numbers
; R2 - Counter (4 after loading first element)
;
; Output:
; R3 - Resulting difference after subtracting remaining elements from the
;      first element
;
; Test Cases:
; Test Case 1:
; Input: Memory = [10,1,2,3,4]
; Expected Output: R3 = 0x00000000 (10-1-2-3-4 = 0)
;
; Test Case 2:
; Input: Memory = [20,5,5,5,4]
; Expected Output: R3 = 0x00000001 (20-5-5-5-4 = 1)
;===============================================================================
	 AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x40000000   ;storing the initial adress of the array to register r0
	 mov r2,#0x04   ;Counter
	 mov r3,#0x00   ;Stores the difference  of 5 32 bit numbers
	 ldr r3,[r0],#4
label 
	 ldr r4,[r0],#4
	 sub r3,r3,r4
	 subs r2,r2,#0x01
	 bne label
	    
stop b stop
	 end