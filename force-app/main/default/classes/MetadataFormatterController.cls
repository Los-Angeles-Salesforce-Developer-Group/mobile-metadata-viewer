public class MetadataFormatterController {
    public String  inputTextString  {get; set;}
    public Boolean hasLineNumbering {get; set;}
    
    public String getOutputTextString() {
        String output = '';
        String[] lines = inputTextString.split('\n');
        Integer lineNum = 1;
        for(String line : lines) {
            if(hasLineNumbering) {
                line = String.valueOf(lineNum++) + '\t' + line;
                output += line + '\n';
            }
        }
        return output;
    }
}