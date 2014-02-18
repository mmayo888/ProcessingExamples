abstract class Chart {

  // The datasource for the chart
  protected DataSource dataSource;

  // Position/size of the chart
  protected PVector position, size;

  // The colors used to fill in the individual bars
  protected color[] fillColors;

  // Constructors
  public Chart(String filename, float x, float y, float w, float h) {
    // Load the data
    dataSource = new DataSource(filename);
    // Set a default position
    position = new PVector(x,y);
    size = new PVector(w,h);
    // Generate some random fill colours
    fillColors = new color[ dataSource.getNumCategories() ];
    for (int index=0; index<dataSource.getNumCategories(); index++) 
       fillColors[ index ] = color(random(255),random(255),random(255)); 
  }
  public Chart(String filename){
     this(filename,0,0,width,height); 
  }
  
  
  // Method to draw the chart
  abstract public void draw();
}

