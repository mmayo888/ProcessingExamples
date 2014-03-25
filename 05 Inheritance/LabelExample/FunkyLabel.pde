public class FunkyLabel extends Label {

  // Fields specific to FunkyLabel
  public color foreCol;

  // Constructor -- set default values for the fields
  public FunkyLabel() {
    super();
    foreCol = #FFFFFF;
  }

  // Method to draw the funky label
  public void draw(float x, float y) {
    // Draw the text
    super.draw(x++,y++);
    for (float lerpAmount=0.1; lerpAmount<=1.0; lerpAmount+=0.1) {
      fill( lerpColor(col, foreCol, lerpAmount) );
      text(text, x++, y++);
    }
  }
}

