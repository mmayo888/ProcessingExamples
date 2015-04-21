class FunkyLabel extends Label {

  // Fields specific to FunkyLabel
  public color foreCol;

  // Constructor -- set default values for the fields
  public FunkyLabel() {
    super();
    foreCol = #FFFFFF;
  }

  // Method to draw the funky label
  // This method overrides the draw method from Label
  public void draw(float x, float y) {
    if (font != null) textFont(font); 
    fill(col);                        
    textAlign(CENTER, CENTER);        
    for (float lerpAmount=0.0; lerpAmount<=1.0; lerpAmount+=0.1) {
      fill( lerpColor(col, foreCol, lerpAmount) );
      text(text, x++, y++);
    }
  }
}

