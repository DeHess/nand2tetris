

public class Push extends StackOperation {
	public Push(String sourceCode) {
		super (sourceCode);
	}

	@Override
	public String translate() {
		switch (segment) {
		
		case "constant":
			return constant();
			
		case "pointer":
		case "temp":

			return fixed();

		case "local":
		case "argument":
		case "this":
		case "that":
			return dynamic();
		case "static":
			return staticVar();
		
		}
		
		
		return "ungueltiges Segment:" + segment;
	}
	
	private String constant() {
		return  "@" + address + "\r\n"
				+ "D=A\r\n"
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=D\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}

	private String staticVar() {
		return    "@static" + CurrentFile.FileName + address +"\r\n"
				+ "D=M\r\n"
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=D\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
	private String fixed() {
		int baseAddress = 0;
		switch (segment) {
		case "pointer":
			baseAddress = 3;
			break;
		case "temp":
			baseAddress = 5;
			break;
		case "static":
			baseAddress = 16;
			break;
		}
		
		
		return  "@" + (address+baseAddress) + "\r\n"
				+ "D=M\r\n"
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=D\r\n"
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
	private String dynamic() {
		
	String codeTemplate = "@%a\r\n"
			+ "D=A\r\n"
			+ "@%ba  \r\n"
			+ "A=D+M\r\n"
			+ "D=M\r\n"
			+ "@SP\r\n"
			+ "A=M\r\n"
			+ "M=D\r\n"
			+ "@SP\r\n"
			+ "M=M+1";
		
		
		int baseAddress = 0;
		switch (segment) {
		case "local":
			baseAddress = 1;
			break;
		case "argument":
			baseAddress = 2;
			break;
		case "this":
			baseAddress = 3;
			break;
		case "that":
			baseAddress = 4;
			break;
		}
		return codeTemplate.replace("%a", Integer.toString(address)).replace("%ba", Integer.toString(baseAddress));
	}
	

}
