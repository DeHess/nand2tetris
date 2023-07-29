public class Function extends Statement{
    String name ;
    int nVars;
    public Function(String sourceCode) {
        super(sourceCode);
        String[] parts = sourceCode.split(" ");
        name = parts[1];
        nVars = Integer.parseInt(parts[2].trim());
    }


    @Override
    public String translate() {
        return this.getLabel() +"\n"
                + this.getSegmentInit();

    }

    private String getSegmentInit() {
        String r = "";
        for (int i= 0; i<nVars; i++) {
            r = r + "@SP\n" +
                    "A=M\n" +
                    "M=0\n" +
                    "@SP\n" +
                    "M=M+1\n";
        }
        return r;
    }

    private String getLabel() {
        return "(" + name + ")";
    }
}
