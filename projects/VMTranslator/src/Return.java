public class Return extends Statement{
    public Return(String sourceCode) {
        super(sourceCode);
    }

    @Override
    public String translate() {
        return "//zwischenspeichern ARG auf R13\n" +
                "@ARG\n" +
                "D=M\n" +
                "@R13\n" +
                "M=D\n" +
                "//ZwischenSpeichern der return address auf R14\n" +
                "@LCL\n" +
                "D=M\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "A=D //zeigen auf return address\n" +
                "D=M\n" +
                "@R14 \n" +
                "M=D\n" +
                "//return value into arg 0\n" +
                "@SP\n" +
                "A=M-1\n" +
                "D=M\n" +
                "@ARG\n" +
                "A=M\n" +
                "M=D\n" +
                "//restoring segment pointers\n" +
                "//restore THAT\n" +
                "@LCL\n" +
                "A=M-1 // zeigen auf saved THAT\n" +
                "D=M\n" +
                "@THAT\n" +
                "M=D\n" +
                "//restore THIS\n" +
                "@LCL\n" +
                "D=M\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "A=D //zeigen auf saved THIS\n" +
                "D=M\n" +
                "@THIS\n" +
                "M=D\n" +
                "//restore ARG\n" +
                "@LCL\n" +
                "D=M\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "A=D // zeigen auf saved ARG\n" +
                "D=M\n" +
                "@ARG\n" +
                "M=D\n" +
                "//Restore LCL\n" +
                "@LCL\n" +
                "D=M\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "D=D-1\n" +
                "A=D // zeigen auf saved LCL\n" +
                "D=M\n" +
                "@LCL\n" +
                "M=D\n" +
                "//sets SP for caller\n" +
                "@R13\n" +
                "D=M\n" +
                "D=D+1\n" +
                "@SP\n" +
                "M=D\n" +
                "//jumps to the return address\n" +
                "@R14\n" +
                "A=M\n" +
                "0;JMP\n";
    }
}
