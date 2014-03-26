class Slider {

  // Min and max values selectable using the slider
  // Assumes that minValue<maxValue at all times!
  public float minValue=0, maxValue=100;

  // Position (center) of the slider on the screen
  public float x, y;

  // Size (width) of the slider
  public float size = width/4;

  // Colour of the slider
  public color colour = #FFFFFF;

  // Current value of the slider
  // Note: this is private and accessible only through set/get
  // methods
  private float currentValue=50;

  // State of the slider -- is this slider being dragged?
  private boolean isBeingChanged=false;

  // Accessor methods for the slider's current value
  public float getValue() {
    return currentValue;
  }
  public void setValue(float val) {
    if (val<minValue) currentValue = minValue;
    else if (val>maxValue) currentValue = maxValue;
    else currentValue=val;
    //if (DEBUG) {
    //  println("setValue() called with val="+val+
    //    ", resulting in currentValue being set to "+currentValue);
    //}
  }


  // Helper method to compute the marker position
  private float computeMarkerPosition() {
    float markerPosition = (currentValue - minValue)/(maxValue - minValue);
    markerPosition *= size;
    markerPosition += minValue;
    markerPosition += (x - size/2);
    return markerPosition;
  }


  // Draw method
  public void draw() {
    // Set drawing parameters
    strokeWeight(4);
    stroke(colour);
    fill(colour);
    // Draw the line
    line(x - size/2, y, x + size/2, y);
    // Compute the marker position
    float markerPosition = computeMarkerPosition();
    // Draw the marker
    float markerSize = size/10;
    triangle(markerPosition, y, markerPosition-markerSize/2, y+markerSize/2, 
    markerPosition+markerSize/2, y+markerSize/2);
  }

  // Mouse events

  // If the click is close enough to the marker, then assume the user
  // wants to change value
  public void clickStart(float x, float y) {
    float markerPosition = computeMarkerPosition();  // get x position of marker
    if (x>=markerPosition-size/20 && x<=markerPosition+size/20)  // check x
      if (y>=this.y-10 && y<=this.y+10) {                        // check y
        isBeingChanged=true;
      }
  }

  // If the slider's value is being changed, then update the marker position
  // We must convert the x coordinate of the mouse to a range between min and max
  public void clickDrag(float x, float y) {
    if (isBeingChanged) {
      float minValueXCoordinate = this.x - size/2;
      float maxValueXCoordinate = this.x + size/2;
      float nextValue = (x - minValueXCoordinate)
        /(maxValueXCoordinate - minValueXCoordinate);
      nextValue *= (maxValue - minValue);
      nextValue += minValue;
      setValue(nextValue);
    }
  }

  // Ensure that the slider is no longer changing value
  public void clickEnd(float x, float y) {
    isBeingChanged = false;
  }

  // To string method
  public String toString() {
    String result = "This is a Slider";
    result+="\nminValue = "+minValue;
    result+="\nmaxValue = "+maxValue;
    result+="\ncurrentValue = "+currentValue;
    result+="\nx = "+x;
    result+="\ny = "+y;
    result+="\nsize = "+size;
    result+="\ncolour = "+colour;
    return result;
  }
}

