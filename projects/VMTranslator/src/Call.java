public class Call extends Statement{
    String name ;
    static int labelNr = 0;
    int nArgs;
    public Call(String sourceCode) {
        super(sourceCode);
        String[] parts = sourceCode.split(" ");
        name = parts[1];
        nArgs = Integer.parseInt(parts[2].trim());
    }

    @Override
    public String translate() {
        labelNr++;
        return "//Arg zwischenspeichern in R15\n" +
                "@ARG\n" +
                "D=M\n" +
                "@R15\n" +
                "M=D\n" +
                "//Sets ARG\n" +
                "@SP\n" +
                "D=M\n" +
                "@" + nArgs + "\n" +
                "D=D-A\n" +
                "@ARG\n" +
                "M=D\n" +
                "//return Addresse auf den Stack\n" +
                "@returnLabel"  + labelNr + "\n" +
                "D=A\n" +
                "@SP\n" +
                "A=M\n" +
                "M=D\n" +
                "@SP\n" +
                "M=M+1\n" +
                "//LCL auf Stack\n" +
                "@LCL\n" +
                "D=M\n" +
                "@SP\n" +
                "A=M\n" +
                "M=D\n" +
                "@SP\n" +
                "M=M+1\n" +
                "//ARG auf Stack\n" +
                "@R15\n" +
                "D=M\n" +
                "@SP\n" +
                "A=M\n" +
                "M=D\n" +
                "@SP\n" +
                "M=M+1\n" +
                "//THIS auf Stack\n" +
                "@THIS\n" +
                "D=M\n" +
                "@SP\n" +
                "A=M\n" +
                "M=D\n" +
                "@SP\n" +
                "M=M+1\n" +
                "//THAT auf Stack\n" +
                "@THAT\n" +
                "D=M\n" +
                "@SP\n" +
                "A=M\n" +
                "M=D\n" +
                "@SP\n" +
                "M=M+1\n" +
                "// Local auf neuen Wert setzen = SP\n" +
                "@SP\n" +
                "D=M\n" +
                "@LCL\n" +
                "M=D\n" +
                "@" + name + "\n" +
                "0;JMP\n" +
                "(returnLabel" + labelNr + ") // hier geht es weiter nach dem call von "  + name;
    }
}
