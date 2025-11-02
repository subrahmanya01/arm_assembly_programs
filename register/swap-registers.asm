	;===============================================================================
	; Problem Statement:
	; Swap the contents of two registers using three different methods: temporary
	; register, arithmetic sequence (add/sub), and XOR swap.
	;
	; Input:
	; R0 - First register value
	; R1 - Second register value
	;
	; Output:
	; R0, R1 - Values swapped so R0 contains original R1 and R1 contains original R0
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 0x00011234, R1 = 0x00002123
	; Expected Output after swap: R0 = 0x00002123, R1 = 0x00011234
	;
	; Test Case 2:
	; Input: R0 = 0x00000000, R1 = 0xFFFFFFFF
	; Expected Output after swap: R0 = 0xFFFFFFFF, R1 = 0x00000000
	;===============================================================================
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00011234
		ldr r1,=0x00002123
		;First way of swapping
		mov r2,r1
		mov r1,r0
		mov r0,r2
		;Second way of swapping
		ldr r0,=0x00011234
		ldr r1,=0x00002123
		add r0,r0,r1
		sub r1,r0,r1
		sub r0,r0,r1
		;Third way of swapping
		ldr r0,=0x00011234
		ldr r1,=0x00002123
		eor r0,r0,r1
		eor r1,r0,r1
		eor r0,r0,r1

	stop b stop
	    end