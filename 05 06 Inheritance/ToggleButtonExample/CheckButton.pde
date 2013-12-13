public class CheckBox extends ToggleButton {
  
  public CheckBox(float x, float y, float size) {
    super(x, y, size);
  } 

  public boolean pointInButtonRegion(float x, float y) {
    return x>=position.x && x<=position.x+size
      &&  y>=position.y && y<=position.y+size;
  }

  public void draw() {
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

