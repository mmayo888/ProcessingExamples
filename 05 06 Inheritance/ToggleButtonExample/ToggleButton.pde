abstract public class ToggleButton {

  // The (x,y) coordinate of the button on the screen
  protected PVector position;

  // The size of the button
  protected float size;

  // The state of the button
  protected boolean state;

  // Constructor that takes a position and size
  public ToggleButton(float x, float y, float size) {
    position=new PVector(x, y);
    this.size=size;
    state=false;
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
  public void mouseClicked() { 
    if (pointInButtonRegion(mouseX, mouseY)) 
      state=!state;
  }

  // Abstract method for determining if a point lies in the region
  // of this button. Ideally used for determining if a mouse click lies in
  // the button's region
  abstract public boolean pointInButtonRegion(float x, float y);

  // Abstract draw method, to be implemented by subclasses
  abstract public void draw();
}

