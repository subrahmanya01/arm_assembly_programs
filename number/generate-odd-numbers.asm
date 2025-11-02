	;===============================================================================
	; Problem Statement:
	; Generate the first 10 odd numbers and store them sequentially in memory.
	;
	; Input:
	; R0 - Starting odd number (typically 1)
	; R1 - Counter (10)
	; R2 - Destination base address in memory (0x40000000)
	;
	; Output:
	; Memory at R2 - Contains the sequence of the first 10 odd numbers
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 1, R1 = 10
	; Expected Output: Memory contains [1,3,5,7,9,11,13,15,17,19]
	;
	; Test Case 2:
	; Input: R0 = 5, R1 = 3
	; Expected Output: Memory contains [5,7,9]
	;===============================================================================
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00000001    ;First odd number
		ldr r1,=0x0000000A    ;Counter
		ldr r2,=0x40000000    ;Starting adress of the array
		BL odd
	stop b stop
	odd
	     str r0,[r2],#4
		 add r0,r0,#0x02
		 subs r1,r1,#0x01
		 bne odd
		 mov pc,lr

	    end
	   