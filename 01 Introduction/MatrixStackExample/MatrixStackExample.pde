/*
 * MatrixStackExample
 * Author: Michael Mayo
 *
 * Demonstrates how to use a matrix stack
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;
public final String MESSAGE              = "Matrix Stack Example";

// Setup method
void setup() {
  // Size the sketch
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
}

// Method to draw a rectangle containing a message
// The message is drawn with a fixed size 32 font, at point 0,0
// on the screen
void drawMessage() {
  // Draw the rectangle
  noStroke();
  fill(#63AF0E);
  rect(0,0,textWidth(MESSAGE),36);
  // Draw the text
  fill(0);
  textSize(30);
  text(MESSAGE, 0, 30);
}

// Draw method
void draw() {
  // Clear background
  background(128);
  // Draw the message using the default coordinate frame
  drawMessage();
  
  // Create a new coordinate frame that is shifted +100, +100 to 
  // the right and left, and rotated by PI/4 radians
  pushMatrix();
  translate(100,100);
  rotate(PI/4);
  // Draw the message in the new coordinate frame
  drawMessage();
  // Restore the original coordinate frame
  popMatrix();
  
  // Create another coordinate frame that is shifted -100, +300
  // and is scaled to 2x along x axis
  pushMatrix();
  translate(-100,300);
  scale(2.0, 1.0);
  // Draw the message
  drawMessage();
  // Pop the matrix
  popMatrix();
   
}

