public class Goto extends Statement {

    public Goto(String sourceCode) {
        super(sourceCode);
    }

    @Override
    public String translate() {
        String label = sourceCode.replace("goto", "").trim();
        return "@label\n".replace("label", label) +
               "0;JMP";
    }
}
