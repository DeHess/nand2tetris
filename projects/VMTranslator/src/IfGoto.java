public class IfGoto extends Statement {


    public IfGoto(String sourceCode) {
        super(sourceCode);
    }

    @Override
    public String translate() {
        String label = sourceCode.replace("if-goto", "").trim();
        return "@SP\n" +
                "M=M-1\n" +
                "A=M\n" +
                "D=M\n" +
                "@label\n".replace("label", label) +
                "D;JNE";
    }
}
