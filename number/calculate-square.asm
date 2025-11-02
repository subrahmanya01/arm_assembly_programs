	;===============================================================================
	; Problem Statement:
	; Compute the square of a number without using the MUL instruction. The
	; program uses repeated addition to compute n*n.
	;
	; Input:
	; R0 - Input number n
	;
	; Output:
	; R2 - n * n (square of the input)
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 8
	; Expected Output: R2 = 64
	;
	; Test Case 2:
	; Input: R0 = 5
	; Expected Output: R2 = 25
	;===============================================================================
		AREA aa,CODE,READONLY
		entry
		mov r0,#08  ;Stores the input number 
		mov r1,r0
		add r2,#00   ;Stores the squire of the given number
	main  
	    add r2,r2,r0
		subs r1,r1,#1
		bne main
	stop b stop
		end