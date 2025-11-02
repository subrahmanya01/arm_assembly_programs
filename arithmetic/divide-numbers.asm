;===============================================================================
; Problem Statement:
; Write an ARM assembly program to divide two 32-bit numbers using repeated
; subtraction method and store both quotient and remainder.
;
; Input:
; R0 - Divisor (b)
; R1 - Dividend (a)
;
; Output:
; R3 - Quotient
; R2 - Remainder
;
; Test Cases:
; Test Case 1:
; Input: R1 = 0x0000000F (15), R0 = 0x00000002 (2)
; Expected Output: R3 = 0x00000007 (7), R2 = 0x00000001 (1)
;
; Test Case 2:
; Input: R1 = 0x00000009 (9), R0 = 0x00000003 (3)
; Expected Output: R3 = 0x00000003 (3), R2 = 0x00000000 (0)
;===============================================================================
	 AREA aa,CODE,READONLY
	  entry
	  ldr r0,=0x00000002   ;divider (b)
	  ldr r1,=0x0000000F   ;dividend (a)
	  mov r2,r1            ;reminder
	  mov r3,#00           ;quotiont
	  
loop  cmp r2,r0
      blt stop
	  add r3,r3,#1
	  sub r2,r2,r0
	  bal loop
	  
	  
stop  b stop
      end