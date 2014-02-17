public class RadioButton extends ToggleButton {
  
  private PVector center;
  
  public RadioButton(float x, float y, float size) {
    this(x, y, size, null);
  } 
  
  public RadioButton(float x, float y, float size, String label) {
    super(x, y, size, label);
    center=new PVector(x+size/2, y+size/2);
  } 
  public boolean pointInButtonRegion(float x, float y) {
    return PVector.dist(center, new PVector(x,y))<=size/2;
  }

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

