

public abstract class StackOperation extends Statement {
	String segment;
	int address;
	public StackOperation (String sourceCode) {
		super (sourceCode);
		String[] parts = sourceCode.split(" ");
		segment = parts[1];
		address = Integer.parseInt(parts[2]);
	}

	
}
