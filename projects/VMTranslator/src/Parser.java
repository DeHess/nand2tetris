

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Parser {
	String nextLine;
	BufferedReader bufferedReader;
public Parser (String vmFile) throws IOException {
	
	try {
		this.bufferedReader = new BufferedReader(new FileReader(vmFile)); 
		nextLine = this.bufferedReader.readLine();

		
		
		
	}
	catch (FileNotFoundException e) {
		System.out.println("file not found, source file:" + vmFile + " could not be found.");
	}	
	
	
}

public boolean hasMoreStatements() {
	return nextLine != null;
}
public Statement getNextStatement() throws Exception {

	if (nextLine.contains("//")) {
		nextLine = nextLine.split("//")[0];
	}
	nextLine = nextLine.trim();
	Statement statement=null;
	if (nextLine.startsWith("pop")) {
		statement = new Pop(nextLine);
	} 
	if (nextLine.startsWith("push")) {
		statement = new Push(nextLine);
	} 
	if (nextLine.startsWith("add")) {
		statement = new Add(nextLine);
	} 
	if (nextLine.startsWith("sub")) {
		statement = new Sub(nextLine);
	} 
	if (nextLine.startsWith("neg")) {
		statement = new Neg(nextLine);
	} 
	if (nextLine.startsWith("eq")) {
		statement = new Eq(nextLine);
	} 
	if (nextLine.startsWith("gt")) {
		statement = new Gt(nextLine);
	} 
	if (nextLine.startsWith("lt")) {
		statement = new Lt(nextLine);
	} 
	if (nextLine.startsWith("and")) {
		statement = new And(nextLine);
	} 
	if (nextLine.startsWith("or")) {
		statement = new Or(nextLine);
	} 
	if (nextLine.startsWith("not")) {
		statement = new Not(nextLine);
	}
	if (nextLine.startsWith("label")) {
		statement = new LabelDeclaration(nextLine);
	}
	if (nextLine.startsWith("if-goto")) {
		statement = new IfGoto(nextLine);
	}
	if (nextLine.startsWith("goto")) {
		statement = new Goto(nextLine);
	}
	if (nextLine.startsWith("function")) {
		statement = new Function(nextLine);
	}
	if (nextLine.startsWith("return")) {
		statement = new Return(nextLine);
	}
	if (nextLine.startsWith("call")) {
		statement = new Call(nextLine);
	}

	if (nextLine.startsWith("//")) {
		statement = new NullStatement(nextLine);
	} 
	if (nextLine.length()==0) {
		statement = new NullStatement(nextLine);
	} 



	if(statement==null){
		throw new Exception("statement not recognized:" + nextLine);
	}
	
	nextLine = this.bufferedReader.readLine();
	return statement;
}





}
