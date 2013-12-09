public class Button {

  // Constants specific to the Button class
  public final int NORMAL_STATE=0;
  public final int MOUSE_OVER_STATE=1;
  public final int MOUSE_PRESSED_STATE=2;

  // The label containing the text for the button
  private Label label;

  // The rectangle bounds of the button
  private PVector position;
  private PVector size;

  // The state of the button (NORMAL_STATE, MOUSE_OVER_STATE, MOUSE_PRESSED_STATE)
  private int state;

  // Constructor that takes an id, string, text size, and a rectanglular bound
  // for the button
  public Button(String text, float size, float x, float y, float w, float h) {
    // Create a centered label
    this.label = new Label(text, size, x, y+size/2, CENTER, #FFFFFF);
    // Store the rectangular bound
    this.position = new PVector( x, y );
    this.size = new PVector( w, h );
    // Set the initial state to normal
    this.state=NORMAL_STATE;
  }

  // Draw method that draws the button
  public void draw() {
    // Draw the rectangular frame
    rectMode(CENTER);
    // Apply settings dependent on the state of the button
    switch (state) {
    case NORMAL_STATE:
      noFill();
      strokeWeight(1);
      stroke(#0000FF);
      break;
    case MOUSE_OVER_STATE:
      noFill();
      strokeWeight(4);
      stroke(#0000FF);
      break;
    case MOUSE_PRESSED_STATE:
      fill(#0000FF);
      strokeWeight(4);
      stroke(#0000FF);
      break;
    default:; // Should never get here!
    }
    // Draw the rectangle with curved corners
    rect( position.x, position.y, size.x, size.y, 5 );
    // Draw the label
    label.draw();
  }

  // Method to tell you if a point lies inside the bounds of this button
  public boolean pointInRect(float x, float y) {
    return x>=position.x-size.x/2 && x<=position.x+size.x/2
      && y>=position.y-size.y/2 && y<=position.y+size.y/2;
  }



  // Method to update the state of the button based on the action of the mouse
  // Returns true if the button was pressed
  public boolean updateState() {
    // If the mouse hovers over the button, change the button's state to MOUSE_OVER_STATE
    if (state==NORMAL_STATE && pointInRect(mouseX, mouseY))
      state=MOUSE_OVER_STATE;
    // If the mouse is no longer hovering, change the button state back
    if (state==MOUSE_OVER_STATE && !pointInRect(mouseX, mouseY))
      state=NORMAL_STATE;
    // If the mouse is hovering, and the button is pressed, change the state to MOUSE_PRESSED_STATE
    if (state==MOUSE_OVER_STATE && mousePressed)
      state=MOUSE_PRESSED_STATE;
    // If the mouse was pressed, but is no longer, change back to the hovering state
    // This also constitutes a completed mouse click
    if (state==MOUSE_PRESSED_STATE && !mousePressed) {
      state=MOUSE_OVER_STATE;
      return true;
    }
    return false;
  }
}

