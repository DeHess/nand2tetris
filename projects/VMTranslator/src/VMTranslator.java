import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.*;
import java.io.File;
import java.util.Locale;

public class VMTranslator {

	public static void main(String[] args) throws Exception {
		System.out.println("VMTranslator");

		if (args.length != 1) {
			System.out.println("Usage: java -jar VMTrtanslator.jar <*.asm>");
			System.out.println("         <*.vm> file to translate");
			System.out.println("         this will generate a *.asm file");
			return;
		}
		Path path = Paths.get(args[0]);
		if (Files.isDirectory(path)) {
			translateDirectory(args[0]);
		} else {
			translateFile(args[0]);
			return;
		}
	}

	private static void translateFile(String arg) throws Exception {
		String sourceFile = arg;
		String outputFile = sourceFile.replace(".vm", ".asm");
		CodeWriter codeWriter = new CodeWriter(outputFile);
		Parser parser = new Parser(sourceFile);
		while (parser.hasMoreStatements()) {
			codeWriter.writeStatement(parser.getNextStatement());
		}

		codeWriter.Close();


	}

	private static void translateDirectory(String directory) throws Exception {
		File dir = new File(directory);
		File asmFile = new File(dir, dir.getName()+".asm");

		CodeWriter codeWriter = new CodeWriter(asmFile.getAbsolutePath());
		codeWriter.writeInit();
		File[] directoryListing = dir.listFiles();
		if (directoryListing != null) {
			for (File child : directoryListing) {
				if(child.getName().toLowerCase().endsWith(".vm")) {
					CurrentFile.FileName = child.getName();
					System.out.println(child);
					Parser parser = new Parser(child.toString());
					while (parser.hasMoreStatements()) {

						codeWriter.writeStatement(parser.getNextStatement());
					}

				}
			}

		}
		codeWriter.Close();


	}
}