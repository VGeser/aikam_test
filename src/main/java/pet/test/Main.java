package pet.test;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        if(args.length != 3){
            System.out.println("Usage: <command> <input file> <output file>");
        }
        CommandParser parser = new CommandParser();
        if(args[0].equals("search")){
            parser.search(args[1], args[2]);
        } else if (args[0].equals("stat")) {
            parser.stat(args[1], args[2]);
        }else {
            System.out.println("Unknown command");
            try {
                BufferedWriter writer = new BufferedWriter(new FileWriter(args[2]));
                writer.write("Unknown command");
                writer.flush();
                writer.close();
            } catch (IOException e) {
                //throw new RuntimeException(e);
                System.out.println("Can't write to file");
            }

        }
    }
}