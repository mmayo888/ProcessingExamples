class BarChart extends Chart {

  // Maximum value for the bar chart
  public float maxValue=100;

  // Constructors
  public BarChart(String filename, float x, float y, float w, float h) {
    super(filename, x, y, w, h);
  }
  public BarChart(String filename) {
    this(filename, 0, 0, width, height);
  }

  // Draw method
  public void draw() {
    // Calculate the width of each bar
    float barWidth = size.x / dataSource.getNumCategories();
    // Draw the bar chart
    // Iterate over the categories
    for (int index=0; index<dataSource.getNumCategories(); index++) {
      // Set the colors for the bar
      fill(fillColors[index]);
      strokeWeight(3);
      // Get the frequency for the category
      float freq = dataSource.getFrequency(index);
      // Calculate the bar height
      float barHeight =  freq/maxValue * size.y;
      rect(position.x+index*barWidth, position.y + size.y - barHeight, barWidth, barHeight);
      // Draw the label
      // Set up parameters for drawing
      fill(#000000);
      String name = dataSource.getName(index);
      textAlign(CENTER);
      textSize(size.y/25);
      // Rotate and position the text
      pushMatrix();
      translate(position.x+index*barWidth+barWidth/2, position.y+size.y+50);
      rotate(-PI/4);
      text(name, 0,0);
      popMatrix();
    }

    // Draw the labels
  }
}

