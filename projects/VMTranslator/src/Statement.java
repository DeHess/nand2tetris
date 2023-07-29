
public abstract class Statement {
	String sourceCode;
	public Statement (String sourceCode) {
		this.sourceCode = sourceCode;
	}
	public String AsComment() {
		return "// " + this.sourceCode;
	}
	public abstract String translate();

}
