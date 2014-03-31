// Abstract cell class
abstract class AbstractCell {

  // Text size property
  public float textSize;
  
  // Draw method
  public void draw(float cellX, float cellY, float cellWidth, float cellHeight) {
    stroke(0);
    strokeWeight(1);
    noFill();
    rect(cellX, cellY, cellWidth, cellHeight);
  }
  
}

