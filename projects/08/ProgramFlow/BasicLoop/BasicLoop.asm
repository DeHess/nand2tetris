















// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop local 0
@1
D=M
@0
D=D+A 
@SP
A=M
M=D
@SP
A=M-1
D=M 
@SP
A=M
A=M
M=D
@SP
M=M-1
// label LOOP_START
(LOOP_START)
// push argument 0
@0
D=A
@2  
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local 0
@0
D=A
@1  
A=D+M
D=M
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
// pop local 0
@1
D=M
@0
D=D+A 
@SP
A=M
M=D
@SP
A=M-1
D=M 
@SP
A=M
A=M
M=D
@SP
M=M-1
// push argument 0
@0
D=A
@2  
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
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
// pop argument 0
@2
D=M
@0
D=D+A 
@SP
A=M
M=D
@SP
A=M-1
D=M 
@SP
A=M
A=M
M=D
@SP
M=M-1
// push argument 0
@0
D=A
@2  
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
// if-goto LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START
D;JNE
// push local 0
@0
D=A
@1  
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
