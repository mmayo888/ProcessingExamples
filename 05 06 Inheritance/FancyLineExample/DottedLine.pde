public class DottedLine extends AbstractFancyLine {

  // The radius of the dots
  private float radius;

  // The number of dots
  private int numDots;

  // Basic constructor that sets the radius and spacing to sensible defaults
  public DottedLine(float fromX, float fromY, float toX, float toY, color col) {
    super(fromX, fromY, toX, toY, col);
    this.radius = 5;
    this.numDots = (int)getLength()/20;
  }

  // Constructor that sets the all options
  public DottedLine(float fromX, float fromY, float toX, float toY, color col, float radius, int numDots) {
    super(fromX, fromY, toX, toY, col);
    this.radius = radius;
    this.numDots = numDots;
  }
  // Getters/Setters for the radius and spacing
  public float getRadius() { 
    return radius;
  }
  public int getNumDots() { 
    return numDots;
  }


  // The draw method 
  public void draw() {
    // Calculate the spacing between the dots
    PVector spacing = getTo();
    spacing.sub( getFrom() );
    spacing.div(numDots);
    // Draw each dot
    // Set the drawing colour 
    fill( getColor() );
    noStroke();
    // Start at the from position for the first dot
    PVector currentDotPosition = getFrom();
    // Iterate over the dots and draw them!
    for (int dotIndex=0; dotIndex<=numDots; dotIndex++) {
      drawDot(currentDotPosition.x, currentDotPosition.y);
      currentDotPosition.add(spacing);
    }
  }

  // A protected method for drawing individual dots
  protected void drawDot(float x, float y) {
    // Tell processing to draw ellipses from the center
    ellipseMode(CENTER);
    // Turn off strokes
    noStroke();
    // Turn on fill
    fill( getColor() );
    // Draw the dot
    ellipse(x, y, getRadius()*2, getRadius()*2);
  }

  // ToString method for debugging
  public String toString() {
    return super.toString()+" radius="+radius+" numDots="+numDots;
  }
}

