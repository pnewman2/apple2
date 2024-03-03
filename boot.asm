	.SEGMENT "ZEROPAGE"
pointer:
	.word 0

	.SEGMENT "HEADER"
sectors:
	.byte 1

	.CODE
start:
	SEI

	LDA	#<testbuffer
	STA	pointer
	LDA	#>testbuffer
	STA	pointer+1
	LDA	#$aa
	LDY	#0
	STA	(pointer),y
	JMP	*

	.BSS
testbuffer:
	.res 100
