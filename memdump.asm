	.LF	memdump.lst
	.TF	memdump.hex,int
*
* 1802 Membership Card U2 ROM dump program
* SB-Assembler
*
	.CR	1802
	.OR	$0000
*
START:	SEX 3		;X<-R3
	GHI 0		;D<-R0.1 $00xx
	PLO 3		;R3.0<-D=0
	LDI #$80
	PHI 3		;R3.0<-80     ; R3=$8000
LOOP1:  OUT 4		;bus=M(RX)
	LDI #$80	;wait
	PHI 2
LOOP2:	DEC 2
        GHI 2
        BNZ LOOP2
        BR LOOP1
*
	.EN
