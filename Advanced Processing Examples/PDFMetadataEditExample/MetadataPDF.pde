import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
 
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
 
public class MetadataPdf {
  
    // Set metadata
    public void setMetadata(String src, String dest, String field, String value) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src);
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
        Map<String, String> info = reader.getInfo();
        info.put(field, value);
        stamper.setMoreInfo(info);
        stamper.close();
        reader.close();
    }
}
