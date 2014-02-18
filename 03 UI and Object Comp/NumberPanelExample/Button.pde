class Button {

  // Constants defining states that this button can be in
  public final int STATE_NORMAL=0, STATE_CLICKED=1;

  // Position and size of the button
  private PVector position, size;

  // Text for the button
  public String text="OK";

  // Colors for the button
  public color strokeColor=#FFFFFF, // white
  fillColor=#2222FF,                // blueish
  textColor=#000000;                // black

  // Stroke weight for the frame
  public int strokeWeight=4;

  // Size of the text to use
  public float textSize;

  // A private variable storing the state of the button
  private int state;

  // The number panel containing this button
  public NumberPanel panel=null;

  // Constructor
  public Button(float x, float y, float w, float h) {
    // Set PVectors for the position and size of the button
    position=new PVector(x, y);
    size=new PVector(w, h);
    // Set an appropriate default text size to 80% of
    // button height
    textSize = h*0.8;
    // Set the default state to normal
    state=STATE_NORMAL;
  }

  // Draw method
  public void draw() {
    // Draw the frame, which is thicker if the button 
    // is being clicked
    rectMode(CENTER);
    stroke(strokeColor);
    switch(state) {
    case STATE_CLICKED:
      strokeWeight(2*strokeWeight); 
      break;
    case STATE_NORMAL:
      strokeWeight(strokeWeight); 
      break;
    }
    fill(fillColor);
    rect(position.x, position.y, size.x, size.y);
    // Draw the text
    fill(textColor);
    textSize(textSize);
    textAlign(CENTER, CENTER);
    text(text, position.x, position.y-0.1*size.y);
  }

  // Helper method to determine if a point (x,y) lies inside
  // this control
  private boolean pointInRegion(float x, float y) {
    return x>=position.x-size.x/2 && x<=position.x+size.x/2
      && y>=position.y-size.y/2 && y<=position.y+size.y/2;
  }

  // Click start
  public void clickStart(float x, float y) {
    // If its a click to this button, set the state to clicked...
    if (pointInRegion(x, y))
      state=STATE_CLICKED;
  }

  // Click end
  public void clickEnd(float x, float y) {
    // Process the event
    if (state==STATE_CLICKED) 
      if (panel!=null)
        panel.buttonClicked(this);
    // Set the state to normal
    state=STATE_NORMAL;
  }
}

