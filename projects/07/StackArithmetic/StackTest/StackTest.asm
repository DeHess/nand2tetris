// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Equal_1
D;JEQ
@SP
A=M
M=0
@End_Equal_1
0;JMP
(Equal_1)
@0
D=A
@SP
A=M
M=D-1
(End_Equal_1)
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Equal_2
D;JEQ
@SP
A=M
M=0
@End_Equal_2
0;JMP
(Equal_2)
@0
D=A
@SP
A=M
M=D-1
(End_Equal_2)
@SP
M=M+1
// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Equal_3
D;JEQ
@SP
A=M
M=0
@End_Equal_3
0;JMP
(Equal_3)
@0
D=A
@SP
A=M
M=D-1
(End_Equal_3)
@SP
M=M+1
// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Lesser_1
D;JGT
@SP
A=M
M=0
@End_Lesser_1
0;JMP
(Lesser_1)
@0
D=A
@SP
A=M
M=D-1
(End_Lesser_1)
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Lesser_2
D;JGT
@SP
A=M
M=0
@End_Lesser_2
0;JMP
(Lesser_2)
@0
D=A
@SP
A=M
M=D-1
(End_Lesser_2)
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Lesser_3
D;JGT
@SP
A=M
M=0
@End_Lesser_3
0;JMP
(Lesser_3)
@0
D=A
@SP
A=M
M=D-1
(End_Lesser_3)
@SP
M=M+1
// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Greater_1
D;JLT
@SP
A=M
M=0
@End_Greater_1
0;JMP
(Greater_1)
@0
D=A
@SP
A=M
M=D-1
(End_Greater_1)
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Greater_2
D;JLT
@SP
A=M
M=0
@End_Greater_2
0;JMP
(Greater_2)
@0
D=A
@SP
A=M
M=D-1
(End_Greater_2)
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@Greater_3
D;JLT
@SP
A=M
M=0
@End_Greater_3
0;JMP
(Greater_3)
@0
D=A
@SP
A=M
M=D-1
(End_Greater_3)
@SP
M=M+1
// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1
// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
M=M-1
A=M
D=M
@SP
M=M+1
A=M
D=D-M
@SP
M=M-1
A=M
M=D
@SP
M=M+1
// neg
@0
D=A
@SP
M=M-1
A=M
M=D-M
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1
// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1
// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
