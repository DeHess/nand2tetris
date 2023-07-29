// // This file is part of www.nand2tetris.org

// // and the book "The Elements of Computing Systems"

// // by Nisan and Schocken, MIT Press.

// // File name: projects/07/MemoryAccess/PointerTest/PointerTest.vm

// // Executes pop and push commands using the 

// // pointer, this, and that segments.

// push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 0
@SP
A=M-1
D=M
@3
M=D
@SP
M=M-1
// push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 1
@SP
A=M-1
D=M
@4
M=D
@SP
M=M-1
// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop this 2
@3
D=M
@2
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
// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 6
@4
D=M
@6
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
// push pointer 0
@3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push pointer 1
@4
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
// push this 2
@2
D=A
@3  
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
// push that 6
@6
D=A
@4  
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
