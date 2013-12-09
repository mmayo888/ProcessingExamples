public class Button {

  // The label containing the text for the button
  private Label label;

  // Constructor that takes a label
  public Button(Label label) {
    this.label = label;
  }

  // Constructors that do not require a label to be created
  public Button(String text, float size, float x, float y, color col) {
    this(new Label(text, size, x, y, CENTER, col));
  }

  public Button(String text, float x, float y) {
    this(text, 16, x, y, #FFFFFF);
  }

  // Method to check to see if the the mouse is over the button
  public boolean mouseIsOver() {
    if (mouseX>= label.getX() - label.getWidth()/2 && mouseX<=label.getX() + label.getWidth()/2
      && mouseY>=label.getY() - label.getHeight() && mouseY<=label.getY()+2)
      return true;
    else return false;
  }

  // Draw method that draws the button
  public void draw() {
    // Draw the label
    label.draw(); 
    // Draw a rectangle around the button
    noFill();
    stroke( label.getColor() );
    rect( label.getX() - label.getWidth()/2, label.getY() - label.getHeight(), 
    label.getWidth(), label.getHeight()+2 );
  }
}

