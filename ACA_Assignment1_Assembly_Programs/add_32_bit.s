;1. Implement a 32-bit addition. Assume data is present in code memory. 
	
	AREA RESET, CODE, READONLY
	ENTRY

Main
	LDR	R0, =Value1		; Load the address of first value
	LDR	R1, [R0]		; Load what is at that address
	LDR R0, =Value2     ; Load the address of first value
	LDR	R2, [R0, #4]	; Load what is at the new addr
	ADD	R1, R1, R2		; ADD together
	LDR	R0, =Result		; Load the storage address
	LDR R3,[R0]         ; Load the address of the result
	STR	R1,[R3]			; Store the result
	SWI	&11			    ; All done
	
Value1	DCD	&37E3C123		; First value
Value2	DCD	&367402AA		; Second value
Result	DCD	&40000000		; Space to store result

	END