public class Pop extends StackOperation {
	public Pop (String sourceCode) {
		super (sourceCode);
	}

	@Override
	public String translate() {
		switch (segment) {
	
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
	
	private String fixed() {
		int baseAddress = 0;
		switch (segment) {
		case "pointer":
			baseAddress = 3;
			break;
		case "temp":
			baseAddress = 5;
			break;

		}
		
		int finalAddress = baseAddress + address;
		return  "@SP\r\n"
				+ "A=M-1\r\n"
				+ "D=M\r\n"
				+ "@" + finalAddress +"\r\n"
				+ "M=D\r\n"
				+ "@SP\r\n"
				+ "M=M-1";
	}

	private String staticVar() {


		return  "@SP\r\n"
				+ "A=M-1\r\n"
				+ "D=M\r\n"
				+ "@static" + CurrentFile.FileName + address +"\r\n"
				+ "M=D\r\n"
				+ "@SP\r\n"
				+ "M=M-1";
	}
	
	private String dynamic() {
		
	String codeTemplate = "@%ba\r\n"
			+ "D=M\r\n"
			+ "@%a\r\n"
			+ "D=D+A \r\n"
			+ "@SP\r\n"
			+ "A=M\r\n"
			+ "M=D\r\n"
			+ "@SP\r\n"
			+ "A=M-1\r\n"
			+ "D=M \r\n"
			+ "@SP\r\n"
			+ "A=M\r\n"
			+ "A=M\r\n"
			+ "M=D\r\n"
			+ "@SP\r\n"
			+ "M=M-1";
		
		
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
