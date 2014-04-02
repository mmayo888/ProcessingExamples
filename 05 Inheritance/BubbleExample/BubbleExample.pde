
// Declare reference to a bubble
Bubble bubble;

// Setup method
void setup() {
  // Size the sketch
  size(600, 600);
  // Ensure that bubble is null
  bubble = null;
}

// Draw method
void draw() { 
  // Yellow background
  background(#FAEA35);
  // Do think with the bubble if there is one
  if (bubble!=null) {
    // Draw the bubble
    bubble.draw();
    // Shrink the bubble
    bubble.shrink();
    // Detect if the bubble is gone
    if (bubble.bubbleWidth<0 || bubble.bubbleHeight<0)
     bubble=null;
  }
}

// Mouse click method
void mousePressed() {
  // Create a single bubble
  //bubble = new SquashingBubble();
  bubble = new Bubble();
  bubble.x = mouseX;
  bubble.y = mouseY;
}

