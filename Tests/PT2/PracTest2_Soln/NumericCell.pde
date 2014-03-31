class NumericCell extends AbstractCell {

  // Value of the cell
  public float value;

  // Number of decimal places
  public int numDP;

  // Draw method for the cell
  public void draw(float cellX, float cellY, float cellWidth, float cellHeight) {
    // Draw the frame
    super.draw(cellX, cellY, cellWidth, cellHeight);
    // Draw the text
    textAlign(CENTER, TOP);
    textSize(textSize);
    fill(0);
    text(nf(value,2,numDP), cellX+cellWidth/2, cellY);
  }
}
