;===============================================================================
; Problem Statement:
; Demonstrate four different methods to clear (set to zero) the contents of a
; register in ARM assembly. Compare the efficiency of different approaches.
;
; Input:
; R5 - Register to be cleared, initially set to 0x12345678
;
; Output:
; R5 - Should be 0x00000000 after each method
;
; Algorithm:
; Method 1: Using AND with zero
; - AND register with immediate value 0
;
; Method 2: Using BIC (Bit Clear)
; - Clear all bits using BIC with all 1's
;
; Method 3: Using Subtraction
; - Subtract register from itself
;
; Method 4: Using Logical Shift Right
; - Shift all bits out of the register
;
; Test Cases:
; Initial value for all tests: R5 = 0x12345678
;
; Test Case 1 (AND method):
; Expected Output: R5 = 0x00000000
;
; Test Case 2 (BIC method):
; Expected Output: R5 = 0x00000000
;
; Test Case 3 (SUB method):
; Expected Output: R5 = 0x00000000
;
; Test Case 4 (LSR method):
; Expected Output: R5 = 0x00000000
;
; Notes:
; - Method 1 (AND): Most straightforward, commonly used
; - Method 2 (BIC): Alternative approach using bit clear
; - Method 3 (SUB): Uses arithmetic operation
; - Method 4 (LSR): Uses shift operation, may be slower
;===============================================================================
	AREA aa,CODE,READONLY
	entry
	;first method 
	ldr r5,=0x12345678
	and r5,r5,#0x00000000
	
	;second method
	ldr r5,=0x12345678
	bic r5,r5,#0xffffffff
	
	;third method 
	ldr r5,=0x12345678
	sub r5,r5,r5
	
	;fourth method
	ldr r5,=0x12345678
	mov r5,r5,lsr #32
	
	
stop b stop
    end