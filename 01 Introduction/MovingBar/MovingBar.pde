/* MovingBar
 *
 * This program demonstrates how to use constants and if/then to create a simple animation.
 * A vertical bar is moved from left to right across the sketchpad. When it reaches the right edge,
 * it reverses direction. When it reaches the left edge, it reverses again, and so on.
 */

// Constants defining the width and height of the sketchpad
final int SKETCHPAD_WIDTH   = 300;
final int SKETCHPAD_HEIGHT  = 100;

// Constants defining the width and appearance of the bar
final int BAR_WIDTH         = 20;
final int BAR_CORNER_RADIUS = 7;
final int BAR_COLOUR        = #E31515;

// Global variables
int barPosition, barVelocity;

/* Setup method
 *
 * Inititializes the bar to the center of the sketchpad, and sets the initial velocity.
 */

void setup(){
  // Set the sketchpad resolution 
  size(SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT);
  // Set the initial values for global variables
  barPosition = SKETCHPAD_WIDTH/2;
  barVelocity = 1;
}


/* Draw method
 *
 * Draws the bar, updates its position for the next frame, and checks to ensure that it is
 * still within the bounds of the sketchpad.
 */

void draw(){
  // Erase the sketchpad
  background(200);
  // Draw the bar
  noStroke();          // Turn off outlines
  fill(BAR_COLOUR);    // Set the fill colour
  rect(barPosition, 0, BAR_WIDTH, SKETCHPAD_HEIGHT, BAR_CORNER_RADIUS);
  // Move the bar for the next frame
  barPosition = barPosition + barVelocity;
  // Check to see if the bar has gone off the right-hand edge of the sketchpad
  if (barPosition+BAR_WIDTH>=SKETCHPAD_WIDTH)
    barVelocity = -1;
  // Else check to see if the bar has gone off the left-hand edge instead
  else if (barPosition<=0)
    barVelocity = 1;
  // Draw method is done!
}
