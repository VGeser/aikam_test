import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;

public class TestJSON {

    @Test
    public void testSearchParsing() {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode listNode = null;

        try {
            listNode = mapper.readTree(new File
                    ("src/test/resources/testSearchParsing.json"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        listNode = listNode.get("criterias");
        if (!listNode.isArray()) {
            Assertions.fail();
        } else {
            for (JsonNode objNode : listNode) {
                Assertions.assertNotNull(objNode, "Array element should not be null");
                System.out.println(objNode);

                try{
                    System.out.println(objNode.get("lastName").asText());
                }catch (Exception e){
                    System.out.println("No such key");
                }
                //TODO: получаеца все критерии на трай-кетч пробовать?
                // выглядит некрасиво.
            }
            Assertions.assertTrue(true);
        }
    }
}
