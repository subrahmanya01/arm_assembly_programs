;===============================================================================
; Problem Statement:
; Calculate the Greatest Common Divisor (GCD) of two numbers using the
; subtraction method. GCD is the largest number that divides both numbers
; without a remainder.
;
; Input:
; R0 - First number
; R1 - Second number
;
; Output:
; R1 - GCD of the two numbers
;
; Test Cases:
; Test Case 1:
; Input: R0 = 30, R1 = 45
; Expected Output: R1 = 15 (GCD of 30 and 45)
;
; Test Case 2:
; Input: R0 = 24, R1 = 36
; Expected Output: R1 = 12 (GCD of 24 and 36)
;===============================================================================
	  AREA gcdcalc, CODE, READONLY
       ENTRY
       MOV	R0,#30 ; number 1
       MOV R1,#45 ; number 2   (finally it stores the gcd of 2 32 bit numbers)
gcd
while  CMP R0,R1
       BEQ endw
       BGT cond1
       B cond2
cond1  SUB R0,R0,R1
       B gcd
cond2  SUB R1,R1,R0
       B gcd
       B while
endw
stop   B stop
       END