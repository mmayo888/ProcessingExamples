public class ToggleButton {

  // The position of the top-left corner of the toggle button
  private PVector position;

  // The images to be used to denote the "on" and "off" states
  private PImage onStateImage, offStateImage;

  // The state (true or false) of the button
  private boolean state;

  // A contructor that takes the position, size, and images
  // to be used to build the toggle button
  public ToggleButton(float buttonTop, float buttonLeft,
                      PImage buttonOn, PImage buttonOff) {
    // Initialize the size of the button
    position = new PVector( buttonTop, buttonLeft );
    // Initialize the images to null
    onStateImage = buttonOn;
    offStateImage = buttonOff;
    // Initialize the state to off
    state=false;
  }

  // A method to process a click event
  public void mouseClicked(float x, float y) {
    // Determine which image is currently being displayed
    PImage currentImage;
    if (state) currentImage=onStateImage;
    else currentImage=offStateImage;
    // Flip the state if the mouse click is within the bounds
    // of the image
    if (x>=position.x && x<=position.x+currentImage.width
      && y>=position.y && y<=position.y+currentImage.height)
      state = !state;
  }

  // A method to get the state of the button
  public boolean getState() {
    return state;
  }

  // A method to draw the toggle button
  public void draw() {
    if (state)
      image(onStateImage, position.x, position.y);
    else 
      image(offStateImage, position.x, position.y);
  }
}

