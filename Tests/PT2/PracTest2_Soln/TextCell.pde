// Text cell class

class TextCell extends AbstractCell {
  
  // Value of the cell 
  public String value;
  
  // Whether or not the text should be underlined
  public boolean isUnderlined;
  
  // Draw method for the cell
  public void draw(float cellX, float cellY, float cellWidth, float cellHeight) {
    // Draw the frame
    super.draw(cellX, cellY, cellWidth, cellHeight);
    // Draw the text
    textAlign(CENTER, TOP);
    fill(0);
    textSize(textSize);
    text(value, cellX+cellWidth/2, cellY);
    // Draw the underline
    if (isUnderlined) {
      stroke(0);
      strokeWeight(4);
      float textWidth = textWidth(value);
      line(cellX + cellWidth/2 - textWidth/2, cellY + textSize, 
           cellX + cellWidth/2 + textWidth/2, cellY + textSize);
    }
  }
}
