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

    public void createPdf(String filename) throws IOException, DocumentException {
        // step 1
        Document document = new Document();
        // step 2
        PdfWriter.getInstance(document, new FileOutputStream(filename));
        // step 3
        document.addTitle("Hello World example");
        document.addAuthor("Bruno Lowagie");
        document.addSubject("This example shows how to add metadata");
        document.addKeywords("Metadata, iText, PDF");
        document.addCreator("My program using iText");
        document.open();
        // step 4
        document.add(new Paragraph("Hello World"));
        // step 5
        document.close();
    }
 

    public void manipulatePdf(String src, String dest) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src);
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
        Map<String, String> info = reader.getInfo();
        info.put("Title", "Hello World stamped");
        info.put("Subject", "Hello World with changed metadata");
        info.put("Keywords", "iText in Action, PdfStamper");
        info.put("Creator", "Silly standalone example");
        info.put("Author", "Also Bruno Lowagie");
        stamper.setMoreInfo(info);
        stamper.close();
        reader.close();
    }
 
    public static void main(String[] args) throws IOException, DocumentException {
        MetadataPdf metadata = new MetadataPdf();
        metadata.manipulatePdf(RESULT1, RESULT2);
    }
}
