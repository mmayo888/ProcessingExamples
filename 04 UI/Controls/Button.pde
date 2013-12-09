public class Button {

  // Constants specific to the Button class
  public final int NORMAL_STATE=0;
  public final int MOUSE_OVER_STATE=1;
  public final int MOUSE_PRESSED_STATE=2;

  // A unique identifier for the button
  private int id;

  // The label containing the text for the button
  private Label label;

  // The rectangle bounds of the button
  private PVector position;
  private PVector size;

  // The state of the button (NORMAL_STATE, MOUSE_OVER_STATE, MOUSE_PRESSED_STATE)
  private int state;

  // Constructor that takes an id, string, text size, and a rectanglular bound
  // for the button
  public Button(int id, String text, float size, float x, float y, float w, float h) {
    // Save the ID
    this.id=id;
    // Create a centered label
    this.label = new Label(text, size, x, y+size/2,CENTER, #FFFFFF);
    // Store the rectangular bound
    this.position = new PVector( x, y );
    this.size = new PVector( w, h );
    // Set the initial state to normal
    this.state=NORMAL_STATE;
  }

  // Getter methods
  public int getID() {
    return id;
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

  // Methods to tell the button about state changes
  public void mouseIsOver() {
    if (state==NORMAL_STATE)
      state=MOUSE_OVER_STATE;
  }
  public void mouseIsNotOver() {
    if (state==MOUSE_OVER_STATE)
      state=NORMAL_STATE;
  }
  public void mouseIsPressed() {
    if (state==MOUSE_OVER_STATE)
      state=MOUSE_PRESSED_STATE;
  }
  public void mouseIsReleased() {
    if (state==MOUSE_PRESSED_STATE) {
      state=MOUSE_OVER_STATE;
      mouseClick();
    }
  }


  // This method is the handler for mouse clicks on the button
  // Fill it in with whatever you want done
  public void mouseClick() {
    switch(id) {
    case BUTTON_OK_ID:
      println("ok button pressed");
      break;
    case BUTTON_CANCEL_ID:
      println("cancel button pressed");
      break;
    default:
      println("unknown button pressed");
      break;
    }
  }
}

