public class Label {

  // The label's text
  public String text;

  // The label's font
  public PFont font;

  // The label's colour
  public color col;

  // Constructor -- set default values for the fields
  public Label() {
    text="-- put text here --";
    font=createFont("SansSerif", 32);
    col = #FFFFFF;
  }

  // Method to draw the label
  public void draw(float x, float y) {
    // Draw the text
    if (font != null) textFont(font);
    fill(col);
    textAlign(CENTER, CENTER);
    text(text, x, y);
  }
}

