public class LabelDeclaration extends Statement  {

    public LabelDeclaration(String sourceCode) {
        super(sourceCode);
    }

    @Override
    public String translate() {
        String label = sourceCode.replace("label", "").trim();
        return  "(" + label + ")";
    }
}
