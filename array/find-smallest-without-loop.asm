;===============================================================================
; Problem Statement:
; Find the smallest number among five 32-bit numbers using direct comparisons
; without using loops or memory operations.
;
; Input:
; R0 - First number
; R1 - Second number
; R2 - Third number
; R3 - Fourth number
; R4 - Fifth number
;
; Output:
; R5 - Smallest number among the five inputs
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x00000002, R1 = 0x00000003, R2 = 0x00000001
;        R3 = 0x00000006, R4 = 0x00000005
; Expected Output: R5 = 0x00000001
;
; Test Case 2:
; Input: R0 = 0x7FFFFFFF, R1 = 0x80000000, R2 = 0x00000000
;        R3 = 0xFFFFFFFF, R4 = 0x00000001
; Expected Output: R5 = 0x80000000
;===============================================================================
	AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x00000002   ;First number
	 ldr r1,=0x00000003   ;Second number
	 ldr r2,=0x00000001   ;Third Number
	 ldr r3,=0x00000006   ;Fourth number
	 ldr r4,=0x00000005   ;Fifth number
	 mov r5,r0            ;smallest number will be stored in r5
	 cmp r1,r5
	 movle r5,r1
	 cmp r2,r5
     movle r5,r2
	 cmp r3,r5
	 movle r5,r3
	 cmp r4,r5
	 movle r5,r4   
stop b stop
     end