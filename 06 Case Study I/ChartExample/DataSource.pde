class DataSource{
 
  // A 2D table of the data for drawing the graph
  private Table data; 
  
  // The sum of the frequencies, used for normalization
  private float sum;
  
  // Constructor
  public DataSource(String filename){
      // Get the data
      data = loadTable(filename, "header");
      // Compute the sum of the frequencies
      sum=0;
      for (TableRow row : data.rows()) 
         sum+=row.getFloat("frequency");
      
  }
  
  // Method to get the number of categories in the data
  public int getNumCategories() {
     return data.getRowCount(); 
  }
  
  // Method to get the name of a particular category
  public String getName(int rowIndex) {
     return data.getString(rowIndex, "fruit");
  }

  // Method to get the frequency of a particular category
  public float getFrequency(int rowIndex) {
     return data.getFloat(rowIndex, "frequency");
  }  
  
  // Method to get the frequency of a particular category
  public float getNormalizedFrequency(int rowIndex) {
     return data.getFloat(rowIndex, "frequency")/sum;
  }
  
  
  
  
  
  
  
}
