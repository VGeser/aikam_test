package pet.test;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class OutputWriter {
    private final String filename;
    BufferedWriter writer;

    public OutputWriter(String filename) {
        this.filename = filename;
        try {
            writer = new BufferedWriter(new FileWriter(filename));
        } catch (IOException e) {
            System.out.println("Can't write to file");
        }
    }

    public void write(String text){
        try {
            writer.write(text);
        } catch (IOException e) {
            System.out.println("Can't write to file");
        }
    }
}
