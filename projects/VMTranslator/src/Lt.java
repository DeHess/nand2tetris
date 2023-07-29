

public class Lt extends Statement {
	private static int labelCounter;
	public Lt(String sourceCode) {
		super(sourceCode);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String translate() {
	labelCounter++;
		return "@SP\r\n"
				+ "M=M-1\r\n"
				+ "A=M\r\n"
				+ "D=M\r\n"
				+ "@SP\r\n"
				+ "M=M-1\r\n"
				+ "A=M\r\n"
				+ "D=D-M\r\n"
				+ "@Lesser_X\r\n".replace("X", Integer.toString(labelCounter))
				+ "D;JGT\r\n"
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=0\r\n"
				+ "@End_Lesser_X\r\n".replace("X", Integer.toString(labelCounter))
				+ "0;JMP\r\n"
				+ "(Lesser_X)\r\n".replace("X", Integer.toString(labelCounter))
				+ "@0\r\n"		//vorher leer
				+ "D=A\r\n"		//vorher leer
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=D-1\r\n" //vorher leer
 				+ "(End_Lesser_X)\r\n".replace("X", Integer.toString(labelCounter))
				+ "@SP\r\n"
				+ "M=M+1";

	}
	
}
