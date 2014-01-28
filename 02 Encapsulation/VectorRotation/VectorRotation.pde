/* VectorRotation
 * Author: Michael Mayo
 *
 * This program demonstrates how to use the inbuilt processing classes.
 * Specifically, twop PVector objects are created, and the program calls methods on the objects
 * to either get values or update the objects' states.
 *
 */
 
// Constants defining the sketchpad size 
final int SKETCHPAD_WIDTH = 600;
final int SKETCHPAD_HEIGHT = 600;

// The vector objects
// Each PVector object consists of three fields: x, y and z
PVector vectorFast, vectorSlow;

/*
 * Setup method
 *
 * Sets the size of the sketchpad and creates a new vector objects
 */
 
void setup() {
  // Setup the sketchpad
  size(SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT);
  // Set a slow framerate
  frameRate(15);
  // Create the two vectors, which are initially identical
  vectorFast  = new PVector(  200, 0.0 );
  vectorSlow  = new PVector(  200, 0.0 );
}

/*
 * Draw method
 *
 * Draws the vector objects
 */

void draw() {
  // Print the vectors to the console, for debugging
  println("vectorFast = "+vectorFast+" vectorSlow="+vectorSlow);
  // Erase the sketchpad
  background(0);
  // Draw both vectors
  drawSingleVector( vectorFast, color(255,0,0) );
  drawSingleVector( vectorSlow, color(0,0,255) );
  // Get and display the angle of both vectors using the heading() method
  float headingFast = vectorFast.heading();
  float headingSlow = vectorSlow.heading();
  textSize(32);
  text("headingFast="+round(headingFast*100)/100.0, 0, 32);
  text("headingSlow="+round(headingSlow*100)/100.0, 0, 64);
  // Rotate the vectors by a small amount by calling the inbuilt method rotate()
  vectorFast.rotate( PI/16 );
  vectorSlow.rotate( PI/64 );
}

/*
 * DrawSingleVector method
 *
 * Helpful method to draw a single vector in a given colour
 */
 
void drawSingleVector(PVector vector, color col) {
  // Compute the center of the sketchpad
  int centerX = SKETCHPAD_WIDTH/2;
  int centerY = SKETCHPAD_HEIGHT/2;
  // Draw the vectors
  stroke( col );
  strokeWeight( 4 );
  line( centerX, centerY, centerX + vector.x, centerY + vector.y );
}

