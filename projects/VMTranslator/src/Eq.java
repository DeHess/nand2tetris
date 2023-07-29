

public class Eq extends Statement {
	private static int labelCounter;
	public Eq(String sourceCode) {
		super(sourceCode);
		
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
				+ "@Equal_X\r\n".replace("X", Integer.toString(labelCounter))
				+ "D;JEQ\r\n"
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=0\r\n"
				+ "@End_Equal_X\r\n".replace("X", Integer.toString(labelCounter))
				+ "0;JMP\r\n"
				+ "(Equal_X)\r\n".replace("X", Integer.toString(labelCounter))
				+ "@0\r\n"		//vorher leer
				+ "D=A\r\n"		//vorher leer
				+ "@SP\r\n"
				+ "A=M\r\n"
				+ "M=D-1\r\n" //vorher: M=1
				+ "(End_Equal_X)\r\n".replace("X", Integer.toString(labelCounter))
				+ "@SP\r\n"
				+ "M=M+1";
	}
	
}