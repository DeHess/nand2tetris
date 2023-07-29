
public class Add extends Statement {
	public Add(String sourceCode) {
		super(sourceCode);
	}

	@Override
	public String translate() {
		return "@SP\r\n"
				+ "M=M-1\r\n"
				+ "A=M\r\n"
				+ "D=M\r\n"
				+ "@SP\r\n"
				+ "M=M-1\r\n"
				+ "A=M\r\n"
				+ "M=D+M\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
}
