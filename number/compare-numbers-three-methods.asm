	;===============================================================================
	; Problem Statement:
	; Test equality of two 32-bit numbers using three different methods: TEQ,
	; EOR (exclusive OR), and subtraction with condition flags.
	;
	; Input:
	; R0 - First 32-bit number
	; R1 - Second 32-bit number
	;
	; Output:
	; R2 - Set to 1 if equal by TEQ method
	; R4 - Set to 1 if equal by EOR method
	; R6 - Set to 1 if equal by SUBS method
	;
	; Test Cases:
	; Test Case 1:
	; Input: R0 = 2, R1 = 2
	; Expected Output: R2 = 1, R4 = 1, R6 = 1
	;
	; Test Case 2:
	; Input: R0 = 3, R1 = 5
	; Expected Output: R2 unchanged, R4 unchanged, R6 unchanged
	;===============================================================================
		AREA aa,CODE,READONLY
		entry
		ldr r0,=0x00000002   ;First number
		ldr r1,=0x00000002   ;Second number
		;First method 
		teq r0,r1
		moveq r2,#0x01       ;r2 stores 1 if the number stored in r0 and in r1 are equal

		;Second method
		eor r3,r0,r1
		moveq r4,#0x01  	;r4 stores 1 if the number stored in r0 and in r1 are equal

		;Third method
		subs r5,r0,r1
		moveq r6,#0x01       ;r6 stores 1 if the number stored in r0 and in r1 are equal
	stop b stop
		end