

import java.io.FileWriter;
import java.io.IOException;

public class CodeWriter {
	FileWriter myWriter;
	int lineNr =0;
	public CodeWriter (String outputFile) throws IOException {
		this.myWriter = new FileWriter(outputFile);
		
	}

	public void writeStatement(Statement s) throws IOException {
		if(s==null)
		{
			myWriter.write("");
			return;
		}
		
		myWriter.write(s.AsComment() + "\r\n");
		String code = s.translate() + "\r\n";
		myWriter.write(adornLineNumbers(code) );
	}

	private String adornLineNumbers(String code) {
		String adorned = "";


		String [] lines = code.split("\\r?\\n");
		for (int i=0; i<lines.length; i++){
			String currentLine = lines[i];
			if(!(currentLine.startsWith("(") || currentLine.startsWith("//")))
			{
				currentLine = currentLine + "                                                           ";
				currentLine = currentLine.substring(0, 60);
				currentLine = currentLine + "//  " + lineNr;
				lineNr++;

			}
			adorned = adorned + currentLine + "\r\n";
		}
		return adorned;
	}

	public void writeInit() throws IOException {
		myWriter.write(adornLineNumbers("//SP=256\n" +
				"@256\n" +
				"D=A\n" +
				"@SP\n" +
				"M=D\n" +
				"// call sys.init 0\n" +
				"//Arg zwischenspeichern in R15\n" +
				"@ARG\n" +
				"D=M\n" +
				"@R15\n" +
				"M=D\n" +
				"//Sets ARG\n" +
				"@SP\n" +
				"D=M\n" +
				"@0\n" +
				"D=D-A\n" +
				"@ARG\n" +
				"M=D\n" +
				"//return Addresse auf den Stack\n" +
				"@returnLabel1\n" +
				"D=A\n" +
				"@SP\n" +
				"A=M\n" +
				"M=D\n" +
				"@SP\n" +
				"M=M+1\n" +
				"//LCL auf Stack\n" +
				"@LCL\n" +
				"D=M\n" +
				"@SP\n" +
				"A=M\n" +
				"M=D\n" +
				"@SP\n" +
				"M=M+1\n" +
				"//ARG auf Stack\n" +
				"@R15\n" +
				"D=M\n" +
				"@SP\n" +
				"A=M\n" +
				"M=D\n" +
				"@SP\n" +
				"M=M+1\n" +
				"//THIS auf Stack\n" +
				"@THIS\n" +
				"D=M\n" +
				"@SP\n" +
				"A=M\n" +
				"M=D\n" +
				"@SP\n" +
				"M=M+1\n" +
				"//THAT auf Stack\n" +
				"@THAT\n" +
				"D=M\n" +
				"@SP\n" +
				"A=M\n" +
				"M=D\n" +
				"@SP\n" +
				"M=M+1\n" +
				"// Local auf neuen Wert setzen = SP\n" +
				"@SP\n" +
				"D=M\n" +
				"@LCL\n" +
				"M=D\n" +
				"@Sys.init\n" +
				"0;JMP\n" +
				"(returnLabel1) // hier geht es weiter nach dem call von sys.init\n"));
	}

	public void Close() throws IOException {
		this.myWriter.close();
	}

}
