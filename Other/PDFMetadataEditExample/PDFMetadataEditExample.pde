void setup() {

  // Load the students
  Table table = loadTable("/Users/admin/work/ProcessingExamples/Assignment/students.csv", "header");


  // Generate the individual versions of the assignment

  for (int index=0; index<table.getRowCount(); index++) {

    // Get the students details
    TableRow row = table.getRow(index); 

    // Generate the filename for the new pdf
    String filename = "/Users/admin/work/ProcessingExamples/Assignment/Individual/Assignment_"
      +row.getString("Surname")+"_"+row.getString("ID number")+".pdf";

    // Generate a PDF for this student
    MetadataPdf mpdf = new MetadataPdf();
    try {
      mpdf.setMetadata("/Users/admin/work/ProcessingExamples/Assignment/Assignment.pdf", 
      filename, "Keywords", row.getString("Surname"));
    } 
    catch (Exception e) {
      println(e);
    }

  }
}

