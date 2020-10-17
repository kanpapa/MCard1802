	.LF	countup.lst
	.TF	countup.hex,int
*
* 1802 Membership Card Count up program
* SB-Assembler
*
	.CR	1802
	.OR	$0000
*
START:	SEX 3     X<-R3
	GHI 0     D<-R0.1 (D<-zero)
	PHI 3     R3.0<-0
	LDI #$0D
	PLO 3     R3.0<-$0D
LOOP1:	GHI 4     R4 is counter
	STR 3
	OUT 4
	DEC 3
	INC 4
	BR LOOP1
*
	.EN
