package pet.test;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class CommandParser {
    private Connection connection;
    private OutputWriter outputWriter;

    CommandParser(OutputWriter writer){
        this.outputWriter=writer;
        connect();
    }

    private void connect() {
        String url = "jdbc:postgresql://localhost:5432/aikom";
        Properties parameters = new Properties();
        parameters.put("user", "postgres");
        parameters.put("password", "1234");
        try {
            connection = DriverManager.getConnection(url, parameters);
            if (connection == null) {
                System.out.println("Invalid connection");
                outputWriter.write("Invalid connection");
            }
        } catch (SQLException e) {
            System.out.println("Can't connect to database");
            outputWriter.write("Can't connect to database");
        }
    }

    private ResultSet makeQuery(){
        String selectQuery = "SELECT * FROM customers";
        Statement statement;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectQuery);
            return resultSet;
        } catch (SQLException e) {
            System.out.println("Can't execute query");
            outputWriter.write("Can't execute query");
        }
        //TODO: solve this?????
        return null;
    }

    public void search(String fileIn) {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode jsonNode = null;
        try {
            jsonNode = mapper.readTree(new File(fileIn));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        JsonNode listNode = jsonNode.get("criterias");

        //TODO: make a switch of json

    }

    public void stat(String fileIn) {

    }
}
