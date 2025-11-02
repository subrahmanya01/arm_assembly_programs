	;===============================================================================
	; Problem Statement:
	; Generate the first 10 even numbers and store them sequentially in memory.
	;
	; Input:
	; R0 - Starting even number (typically 0)
	; R1 - Counter (10)
	; R2 - Destination base address in memory (0x40000000)
	;
	; Output:
	; Memory at R2 - Contains the sequence of the first 10 even numbers
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 0, R1 = 10
	; Expected Output: Memory contains [0,2,4,6,8,10,12,14,16,18]
	;
	; Test Case 2:
	; Input: R0 = 2, R1 = 5
	; Expected Output: Memory contains [2,4,6,8,10]
	;===============================================================================
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00000000    ;First even number
		ldr r1,=0x0000000A    ;Counter
		ldr r2,=0x40000000    ;Starting adress of the array
		BL even
	stop b stop
	even
	     str r0,[r2],#4
		 add r0,r0,#0x02
		 subs r1,r1,#0x01
		 bne even
		mov pc,lr

	    end