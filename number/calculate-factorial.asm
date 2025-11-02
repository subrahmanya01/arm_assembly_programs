;===============================================================================
; Problem Statement:
; Calculate the factorial of a given number using iterative multiplication.
; Factorial n! is the product of all positive integers less than or equal to n.
;
; Input:
; R0 - Number to calculate factorial for
; R1 - Counter (initialized to input number)
;
; Output:
; R0 - Final factorial result
; R2 - Intermediate multiplication result
;
; Test Cases:
; Test Case 1:
; Input: R0 = 0x00000005 (5)
; Expected Output: R0 = 0x00000078 (120 = 5!)
;
; Test Case 2:
; Input: R0 = 0x00000003 (3)
; Expected Output: R0 = 0x00000006 (6 = 3!)
;===============================================================================
		AREA aa,CODE,READONLY
		 entry
		 ldr r0,=0x00000005          ;Loading the number
		 mov r1,r0
label  
		 subs r1,r1,#0x01            ;Decrementing  a number by 1
		 mul r2,r0,r1                ;multiplying previous result by decremented number
		 mov  r0,r2
		 teq r1,#0x01
		 bne label
	 
stop    b stop                      ;At final result will be stored in r0
	     end