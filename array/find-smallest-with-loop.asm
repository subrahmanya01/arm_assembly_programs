;===============================================================================
; Problem Statement:
; Find the smallest number from an array of five 32-bit numbers stored in memory
; using a loop structure for traversal.
;
; Input:
; Memory at 0x40000000 - Array of 5 32-bit numbers
; R2 - Size of array (5)
;
; Output:
; R3 - Smallest number found in the array
;
; Test Cases:
; Test Case 1:
; Input: Memory contains [0x00000005, 0x00000002, 0x00000003, 0x00000004, 0x00000001]
; Expected Output: R3 = 0x00000001
;
; Test Case 2:
; Input: Memory contains [0x7FFFFFFF, 0x80000000, 0x00000000, 0xFFFFFFFF, 0x00000001]
; Expected Output: R3 = 0x80000000 (Most negative two's complement number)
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	ldr r0,=0x40000000      ;starting adress of array
    mov r2,#0x05            ;Size of the array
	ldr r3,[r0]             ;stores the Final result(smallets of 5 numbers in array)
label
     ldr r4,[r0],#4
     cmp r4,r3
	 movle r3,r4
	 subs r2,r2,#0x01
	 bne label
stop b stop
    end