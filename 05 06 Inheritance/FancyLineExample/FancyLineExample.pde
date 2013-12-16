/*
 * FancyLinesExample
 * Author: Michael Mayo
 *
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;

// Some fancy lines
DottedLine d1, d2;

// Setup method
void setup() {
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create some objects
  d1=new DottedLine(50, 50, 200, 200, #63AF0E);
  d2=new DottedLine(200, 200, 500, 50, #A1289E, 20, 5);

  // Debug the objects
  println(d1);
  println(d2);
}

// Draw method
void draw() {
  // Draw the lines
  d1.draw();
  d2.draw();  
}

