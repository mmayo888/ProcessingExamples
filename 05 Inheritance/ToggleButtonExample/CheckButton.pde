class CheckBox extends ToggleButton {

  // Constructor  
  public CheckBox(float x, float y, float size, String label) {
    super(x, y, size, label);
  } 

  // Method to check if a point lies in this button's area
  public boolean pointInButtonRegion(float x, float y) {
    return x>=position.x && x<=position.x+size
      &&  y>=position.y && y<=position.y+size;
  }

  // Draw button method
  public void drawButton() {
    noFill();
    stroke(255);
    strokeWeight(4);
    rect(position.x, position.y, size, size);
    if (state) {
      line(position.x, position.y, position.x+size, position.y+size);
      line(position.x+size, position.y, position.x, position.y+size);
    }
  }
}

