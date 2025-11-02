	;===============================================================================
	; Problem Statement:
	; Find the smaller of two 32-bit numbers using conditional execution.
	;
	; Input:
	; R0 - First 32-bit number
	; R1 - Second 32-bit number
	;
	; Output:
	; R2 - Smallest number between R0 and R1
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 0x00000005, R1 = 0x00000006
	; Expected Output: R2 = 0x00000005
	;
	; Test Case 2:
	; Input: R0 = 0xFFFFFFFF, R1 = 0x00000000
	; Expected Output: R2 = 0xFFFFFFFF
	;===============================================================================
	AREA aa,CODE,READONLY
	 entry
	 ldr r0,=0x00000005     ;First number
	 ldr r1,=0x00000006     ;second number
	 cmp r0,r1
	 movle r2,r0
	 cmp r1,r0
	 movle r2,r1            ;Final result will be stores in r2
stop b stop
	 end