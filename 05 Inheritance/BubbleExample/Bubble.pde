class Bubble {

  // Position of the bubble
  public float x=0, y=0;

  // Size of the bubble
  public float bubbleWidth=width/5, bubbleHeight=width/5;

  // Colours of the bubble
  public color strokeColour=#000000, fillColour=#35E8FA;

  // Strokeweight for the outline of the bubble
  public int strokeWeight=4;

  // Draw method
  public void draw() {
    fill(fillColour);
    stroke(strokeColour);
    strokeWeight(strokeWeight);
    ellipse(x, y, bubbleWidth, bubbleHeight);
  }

  // Shrink method
  public void shrink() {
    bubbleWidth--;
    bubbleHeight--;
  }
}

