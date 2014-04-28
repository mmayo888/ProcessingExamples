class RadioButton extends ToggleButton {
  
  // The center of the circular shape that makes the radio button
  private PVector center;
  
  // The constructor
  public RadioButton(float x, float y, float size, String label) {
    super(x, y, size, label);
    center=new PVector(x+size/2, y+size/2);
  } 
  
  // Method to check if a point lies in this button's area
  public boolean pointInButtonRegion(float x, float y) {
    return PVector.dist(center, new PVector(x,y))<=size/2;
  }

  // Method to draw the button
  public void drawButton() {
    noFill();
    stroke(255);
    strokeWeight(4);
    ellipseMode(CORNER);
    ellipse(position.x, position.y, size, size);
    if (state) {
      fill(255);
      ellipse(position.x+size/4, position.y+size/4, size/2, size/2);
    }
  }
}

