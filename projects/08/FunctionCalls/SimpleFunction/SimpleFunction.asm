









// function SimpleFunction.test 2
(SimpleFunction.test)
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
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
// push local 1
@1
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
// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
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
// push argument 1
@1
D=A
@2  
A=D+M
D=M
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
// return
//zwischenspeichern ARG auf R13
@ARG
D=M
@R13
M=D
//ZwischenSpeichern der return address auf R14
@LCL
D=M
D=D-1
D=D-1
D=D-1
D=D-1
D=D-1
A=D //zeigen auf return address
D=M
@R14 
M=D
//return value into arg 0
@SP
A=M-1
D=M
@ARG
A=M
M=D
//restoring segment pointers
//restore THAT
@LCL
A=M-1 // zeigen auf saved THAT
D=M
@THAT
M=D
//restore THIS
@LCL
D=M
D=D-1
D=D-1
A=D //zeigen auf saved THIS
D=M
@THIS
M=D
//restore ARG
@LCL
D=M
D=D-1
D=D-1
D=D-1
A=D // zeigen auf saved ARG
D=M
@ARG
M=D
//Restore LCL
@LCL
D=M
D=D-1
D=D-1
D=D-1
D=D-1
A=D // zeigen auf saved LCL
D=M
@LCL
M=D
//sets SP for caller
@R13
D=M
D=D+1
@SP
M=D
//jumps to the return address
@R14
A=M
0;JMP

