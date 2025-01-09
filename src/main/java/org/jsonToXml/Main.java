package org.jsonToXml;
import org.json.JSONObject;
import org.json.XML;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws IOException {
        if (args.length == 0) {
            System.out.println("Usage: java -jar target/json-to-xml.jar input.json > output.xml");
            System.exit(1);
        }
        String input = args[0];
        Path inputPath = FileSystems.getDefault().getPath(input).toAbsolutePath();

        byte[] bytes = Files.readAllBytes(inputPath);
        String fileContent = new String (bytes);

        JSONObject json = new JSONObject(fileContent);
        String xml = XML.toString(json);
        System.out.println(xml);
    }
}