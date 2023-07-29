

public class Neg extends Statement {

	public Neg(String sourceCode) {
		super(sourceCode);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String translate() {
		return "@0\r\n"
				+ "D=A\r\n"
				+ "@SP\r\n"
				+ "M=M-1\r\n"
				+ "A=M\r\n"
				+ "M=D-M\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
}
