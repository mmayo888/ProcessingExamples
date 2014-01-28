public class PulsatingLabel extends Label {

  // Number of frames for a complete pulsation cycle
  private int cycleLength;

  // Current position in cycle
  private int cyclePosition;

  // Storage for the initial colour
  private color initialColor;

  // Constructor -- copies the cycleLength and then calls the super constructor
  public PulsatingLabel(String text, float size, float x, float y, int align, color col, int cycleLength) {
    // Call superclass constructor
    super(text, size, x, y, align, col);
    // Save the cycle length parameter
    this.cycleLength=cycleLength;
    // Initialize the cycle position to 0
    this.cyclePosition=0;
    // Save the original color so we can modify it without losing it
    this.initialColor=col;
  }

  // Draw method -- work out which color to use, then call the super class' draw method
  public void draw() {
    // Modify the colour -- we want to interpolate between initialCol and white,
    // and set col to this
    col=lerpColor(initialColor, #FFFFFF, cyclePosition/(float)(cycleLength-1));
    // Draw the label
    super.draw(); 
    // increment the cycle position
    cyclePosition = (cyclePosition + 1) % cycleLength;
  }
}

