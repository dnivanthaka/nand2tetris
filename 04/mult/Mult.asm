// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// DO R2 = R1 + R2 UNTIL R1 = R1 - 1 = 0

(LOOP)
@R0
D=M         //Storing R0 value in D
@R2         //Setting R2 value as R2 + D
M=M+D
@R1         //Counter to end when reached zero
M=M-1
D=M
@END
D;JEQ       //Goto END if the R1 - 1 becomes zero
@LOOP
0;JMP
(END)
@END
0;JMP


