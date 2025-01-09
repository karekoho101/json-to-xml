# json-to-xml
Convert JSON to XML

## Usage
### Compile and install
`mvn clean package`
### Run
`java -jar target/json-to-xml.jar input.json > output.xml`


## Converting SonarQube report from JSON to HTML table
1. Run **json-to-xml** as the report JSON as input and redirect output XML to a file, as in the above example.
2. Copy **report.template.xml** to **report.xml**
3. Copy the output xml from step 2 and paste it inside the **<report/>** element in **report.xml**
4. Install https://github.com/ritwickdey/vscode-live-server-plus-plus to VS code.
5. Run Live Server from the icon in the bottom right and select **report.xml**
6. You should now see the SonarQube report formatted as HTML table.
7. Now you can also print the html page as PDF.



