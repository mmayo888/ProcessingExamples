class PieChart extends Chart {

  // Constructors
  public PieChart(String filename, float x, float y, float w, float h) {
    super(filename, x, y, w, h);
  }
  public PieChart(String filename) {
    this(filename, 0, 0, width, height);
  }

  // Draw method
  public void draw() {
    // Draw the pie chart
    // Calculate the center of the area for the chart
    PVector center = new PVector(position.x+size.x/2, position.y+size.y/2);
    // Calculate an initial angle for drawing the wedges
    float angle=0;
    // Iterate over the categories
    for (int index=0; index<dataSource.getNumCategories(); index++) {
       // Get the name and frequency for the category
      String name = dataSource.getName(index);
      float normFreq = dataSource.getNormalizedFrequency(index); 
      // Calculate the size of the wedge in radians
      float wedgeAngle = TWO_PI * normFreq;
      // Set the fill and stroke for the arc
      strokeWeight(1);
      fill( fillColors[ index ] );
      // Draw an appropriate arc
      arc(center.x, center.y, size.x, size.y, angle, angle+wedgeAngle, PIE);
      // Draw the label
      // Calculate the label position
      float labelX = center.x+size.x/3*cos( angle+wedgeAngle/2 );
      float labelY = center.y+size.y/3*sin( angle+wedgeAngle/2 );
      // Draw the label
      fill(#000000);
      textAlign(CENTER, CENTER);
      textSize(size.y/15);
      text(name, labelX, labelY);
      // Increment the angle
      angle+=wedgeAngle;
    }
    
  }
  
}

