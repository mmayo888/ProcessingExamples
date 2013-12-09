public class Label {

  // The text of the label
  private String text;

  // The size of the label
  private float size; 

  // The position of the label
  private PVector position;

  // The alignment of the label
  private int align;

  // The color of the label
  private color col;

  // A constructor that takes the text, font and size
  public Label(String text, float size, float x, float y, int align, color col) {
    // Copy the constructor's parameters
    this.text=text;
    this.size=size;
    this.position=new PVector( x, y );
    this.align=align;
    this.col=col;
  }

  // Another constructor that uses default values for many parameters
  public Label(String text, float x, float y) {
    this(text, 16, x, y, LEFT, #FFFFFF);
  }

  // Getter methods
  public float getX() {
     return position.x; 
  }
  public float getY() {
     return position.y; 
  }
  public float getHeight() {
    return size;
  }
  public color getColor() {
     return col; 
  }

  // Helpful method to get the width of the label in pixels
  public float getWidth() {
    textSize(size);
    return textWidth(text);
  }



  // Method to draw the label
  public void draw() {
    textAlign(align);
    textSize(size);
    fill(col);
    noStroke();
    text(text, position.x, position.y);
  }
}

