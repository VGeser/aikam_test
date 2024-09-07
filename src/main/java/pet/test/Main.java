package pet.test;

public class Main {
    public static void main(String[] args) {
        if (args.length != 3) {
            System.out.println("Usage: <command> <input file> <output file>");
        }
        OutputWriter writer = new OutputWriter(args[2]);
        CommandParser parser = new CommandParser(writer);
        if (args[0].equals("search")) {
            parser.search(args[1]);
        } else if (args[0].equals("stat")) {
            parser.stat(args[1]);
        } else {
            System.out.println("Unknown command");
            writer.write("Unknown command");
        }
    }
}