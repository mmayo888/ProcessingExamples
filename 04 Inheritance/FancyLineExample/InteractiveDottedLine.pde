public class InteractiveDottedLine extends DottedLine {
  
  // Constructors are identical to superclass
  // Basic constructor that sets the radius and spacing to sensible defaults
  public InteractiveDottedLine(float fromX, float fromY, float toX, float toY, color col) {
    super(fromX, fromY, toX, toY, col);
  }

  // Constructor that sets the all options
  public InteractiveDottedLine(float fromX, float fromY, float toX, float toY, color col, float radius, int numDots) {
    super(fromX, fromY, toX, toY, col, radius, numDots);
  }
  
 // A protected method for drawing individual dots
  protected void drawDot(float x, float y) {
    // Call the super class drawDot method
    super.drawDot(x,y);
    // Draw the extras
    // Set the stroke to white
    stroke(255);
    // Get the center dot's center in PVector format
    PVector center = new PVector(x,y);
    // Get the mouse location in PVector format
    PVector mouse = new PVector(mouseX, mouseY);
    // Subtract the center from the mouse
    mouse.sub(center);
    // Scale the mouse location so that its length is equal to the dot radius
    mouse.mult( getRadius()/mouse.mag() );
    // Add the center back
    mouse.add( center );
    // Draw a line from center to mouse
    line(center.x, center.y, mouse.x, mouse.y);
  } 
}
