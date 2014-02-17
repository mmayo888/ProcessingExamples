// The abstract superclass of all fancy lines
// A line at an absolute minimum must have two points: from and to,
// and a colour

abstract public class AbstractFancyLine {

  // Start and end location of the line
  private PVector from, to;

  // Colour of the line
  private color col;

  // Precalculated value for the length of the line
  private float length;

  // Getter for the properties
  public PVector getFrom() { 
    return from.get();
  }
  public PVector getTo() { 
    return to.get();
  }
  public color getColor() { 
    return col;
  }
  public float getLength() {
    return length;
  }

  // A basic constructor for setting the from/to/color properties
  public AbstractFancyLine(float fromX, float fromY, 
                           float toX, float toY, 
                           color col) 
  {
    // Copy the from and to points
    from = new PVector(fromX, fromY);
    to=new PVector(toX, toY);
    // Copy the colour
    this.col=col;
    // Calculate the length of the line
    length = from.dist(to);
  }

  // The draw method, which all abstract fancy lines must implement
  abstract public void draw();

  // ToString method for debugging
  public String toString() {
    return "from="+from+ " to="+to+" col="+col+" length="+length ;
  }
}

