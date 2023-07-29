// // This file is part of www.nand2tetris.org

// // and the book "The Elements of Computing Systems"

// // by Nisan and Schocken, MIT Press.

// // File name: projects/07/MemoryAccess/BasicTest/BasicTest.vm

// // Executes pop and push commands using the virtual memory segments.

// push constant 10
@10
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
