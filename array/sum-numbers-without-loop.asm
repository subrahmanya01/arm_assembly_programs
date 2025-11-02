;===============================================================================
; Problem Statement:
; Calculate the sum of five 32-bit numbers using direct addition operations
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
; R5 - Sum of all five numbers
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x00000002, R1 = 0x00000003, R2 = 0x00000004
;        R3 = 0x00000005, R4 = 0x00000006
; Expected Output: R5 = 0x00000014 (20 in decimal)
;
; Test Case 2:
; Input: R0 = 0xFFFFFFFF, R1 = 0x00000001, R2 = 0x00000002
;        R3 = 0x00000003, R4 = 0x00000004
; Expected Output: R5 = 0x00000009 (with overflow ignored)
;===============================================================================
    AREA aa,CODE,READONLY
	entry
	ldr r0,=0x00000002    ;First number
	ldr r1,=0x00000003    ;Second number
	ldr r2,=0x00000004    ;Third number
	ldr r3,=0x00000005    ;Fourth number
	ldr r4,=0x00000006    ;Fifth number
	mov r5,#0x00          ;R5 stores the total sum of 5 32 bit numbers
	add r5,r5,r0
	add r5,r5,r1
	add r5,r5,r2
	add r5,r5,r3
	add r5,r5,r4
stop b stop
    end