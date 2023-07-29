

public class Or extends Statement {

	public Or(String sourceCode) {
		super(sourceCode);
		// TODO Auto-generated constructor stub
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
				+ "M=D|M\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
}
