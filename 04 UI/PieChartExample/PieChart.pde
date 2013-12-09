public class PieChart {

  // Collection of chart items
  private ArrayList<ChartItem> items;

  // Constructor for PieChaarts
  public PieChart() {
    // Initialize the items array
    items = new ArrayList<ChartItem>();
  }

  // Methods to add a new chart items
  public void add(String name, float amount) {
    items.add( new ChartItem(name, amount) );
  }

  // Draw method
  public void draw() {
    // First, calculate the sum of all the items so we can convert them to angles
    float sum=0;
    for (ChartItem item : items)
      sum += item.getAmount();
    // Now draw the individual wedges
    // Set the stroke to black
    stroke(0);
    // create variables to keep track of the start and end angles
    float angleStart = 0, angleEnd;
    // Iterate over the wedges in the chart
    for (ChartItem item : items) {
      // Set the fill color for the wedge
      fill( item.getColor() );
      // Compute the size of the wedge, and use it to update angleEnd
      angleEnd = angleStart + (TWO_PI * item.getAmount()/sum);
      // Draw the wedge
      arc(SKETCH_WIDTH/2, SKETCH_HEIGHT/2, SKETCH_WIDTH, SKETCH_HEIGHT, angleStart, angleEnd, PIE);
      // Draw the label in the middle of the wedge
      float angleMiddle = (angleStart+angleEnd)/2;
      PVector labelPosition = PVector.fromAngle( angleMiddle );
      labelPosition.mult(SKETCH_WIDTH/4);
      labelPosition.add(SKETCH_WIDTH/2, SKETCH_HEIGHT/2, 0);
      textSize(32);
      fill(0);
      text( item.getName(), labelPosition.x, labelPosition.y );
      // Update the start angle
      angleStart=angleEnd;
    }
  }

  // ToString method for debugging this class
  public String toString() {
    String result="";
    for (ChartItem item: items)
      result+=item+"\n";
    return result;
  }
}

