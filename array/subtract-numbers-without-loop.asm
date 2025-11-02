;===============================================================================
; Problem Statement:
; Subtract four numbers from a first number using direct subtraction
; instructions (no loops or memory operations).
;
; Input:
; R0 - First number (minuend)
; R1 - Second number (subtrahend 1)
; R2 - Third number (subtrahend 2)
; R3 - Fourth number (subtrahend 3)
; R4 - Fifth number (subtrahend 4)
;
; Output:
; R5 - Result after R0 - R1 - R2 - R3 - R4
;
; Test Cases:
; Test Case 1:
; Input: R0 = 10, R1 = 1, R2 = 4, R3 = 1, R4 = 3
; Expected Output: R5 = 1 (10-1-4-1-3 = 1)
;
; Test Case 2:
; Input: R0 = 20, R1 = 5, R2 = 5, R3 = 5, R4 = 4
; Expected Output: R5 = 1 (20-5-5-5-4 = 1)
;===============================================================================
    AREA aa,CODE,READONLY
 	entry
 	ldr r0,=0x0000000A    ;First number
 	ldr r1,=0x00000001    ;Second number
 	ldr r2,=0x00000004    ;Third number
 	ldr r3,=0x00000001    ;Fourth number
 	ldr r4,=0x00000003    ;Fifth number
 	mov r5,r0          ;R5 stores the total sum of 5 32 bit numbers
 	sub r5,r5,r1
 	sub r5,r5,r2
 	sub r5,r5,r3
 	sub r5,r5,r4
 stop b stop
     end