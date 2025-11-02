	;===============================================================================
	; Problem Statement:
	; Perform conditional arithmetic based on a comparison. If R0 > R1 compute
	; R2 = R0 + (R1 << 2). Otherwise compute R3 = R1 * R4 and set R2 = R0 + R3.
	;
	; Input:
	; R1 - First number
	; R0 - Second number
	; R4 - Multiplier used when R0 <= R1
	;
	; Output:
	; R2 - Result for the > and <= cases (final result stored here)
	; R3 - Temporary product when R0 <= R1
	;
	; Test Cases:
	; Test Case 1:
	; Input: R1 = 2, R0 = 1, R4 = 7
	; Since R0 (1) <= R1 (2) => R3 = 2 * 7 = 14, R2 = 1 + 14 = 15
	;
	; Test Case 2:
	; Input: R1 = 1, R0 = 5, R4 = 7
	; Since R0 (5) > R1 (1) => R2 = 5 + (1 << 2) = 5 + 4 = 9
	;===============================================================================
		AREA AA,code,readonly
		entry 
		LDR R1 ,=0x00000002    ;First number
		LDR R0 ,=0x00000001    ;Second number
		LDR R4 ,=0x00000007 
		CMP R0,R1 
		ADDGT R2,R0,R1,LSL #2   ;r0 greater than the r1 then r0 stores the result
		MULLE R3,R1,R4          
		ADDLE R2,R0,R3         ;lesser or equal tor1 then r2 stores the computed result
	stop b stop
		END