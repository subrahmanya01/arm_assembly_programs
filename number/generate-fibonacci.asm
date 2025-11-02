	;===============================================================================
	; Problem Statement:
	; Generate the first 10 Fibonacci numbers and store them sequentially in memory.
	; Sequence starts with 0, 1, 1, 2, ...
	;
	; Input:
	; R0 - First Fibonacci number (0)
	; R1 - Second Fibonacci number (1)
	; R2 - Counter (number of additional elements after the first stored one)
	; R3 - Destination base address (0x40000000)
	;
	; Output:
	; Memory at R3 - Contains the Fibonacci sequence
	;
	; Test Cases:
	; Test Case 1:
	; Expected Output: [0,1,1,2,3,5,8,13,21,34]
	;
	; Test Case 2:
	; For smaller counter R2=3 expect [0,1,1,2]
	;===============================================================================
	AREA AA,CODE,READONLY
		ENTRY
		LDR R0 ,=0X00000000	;FIRST NUMBER
		LDR R1 ,=0X00000001  ;SECOND NUMBER
		LDR R2 ,=0X00000009	;COUNTER
		LDR R3 ,=0X40000000	;ADRESS
		STR R0,[R3],#4
		BL FBS
	STOP B STOP

	FBS	STR R1,[R3],#4
		MOV R4,R1
		ADD R1,R1,R0
		MOV R0,R4
		SUBS R2,R2,#0X01
		BNE FBS
		MOV PC,LR
		END