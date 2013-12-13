abstract public class ToggleButton {

  // The (x,y) coordinate of the button on the screen
  protected PVector position;

  // The size of the button
  protected float size;

  // The state of the button
  protected boolean state;

  // The optional label for the button; leave as null for no label
  protected String label;

  // Constructor that takes a position and size
  public ToggleButton(float x, float y, float size, String label) {
    // Copy the initial parameters
    position=new PVector(x, y);
    this.size=size;
    this.label=label;
    // Set the initial state to false
    state=false;
  }  

  // Alternative constructor that does not require a label to be passed
  public ToggleButton(float x, float y, float size) {
    this(x, y, size, null);
  }


  // Getters and setters
  public boolean get() { 
    return state;
  }
  public void set() { 
    state=true;
  }
  public void unSet() { 
    state=false;
  }

  // Method to be called whenever there is a mouse click
  // Method reurns true if the mouse click caused a state change
  // to this button
  public boolean mouseClicked() { 
    if (pointInButtonRegion(mouseX, mouseY)) { 
      state=!state;
      return true;
    }
    return false;
  }

  // Abstract method for determining if a point lies in the region
  // of this button. Ideally used for determining if a mouse click lies in
  // the button's region
  abstract public boolean pointInButtonRegion(float x, float y);

  // Abstract drawButton method, to be implemented by subclasses
  abstract public void drawButton();

  // drawLabel method, to draw the label next to the button
  public void drawLabel() {
    textSize(size);
    text(label, position.x+size+size/4, position.y+size);
  }

  // Draw method
  public void draw() {
    drawButton();
    if (label!=null) drawLabel();
  }
}

