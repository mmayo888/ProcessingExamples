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
InteractiveDottedLine i1, i2;
WaveyLine w1, w2;

// Setup method
void setup() {
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Draw a diamond using fancy lines
  d1=new DottedLine(300, 50, 550, 300, #63AF0E);
  d2=new DottedLine(550, 300, 300, 550, #A1289E, 10, 5);
  i1=new InteractiveDottedLine(300, 550, 50, 300, #63AF0E);
  i2=new InteractiveDottedLine(50, 300, 300, 50, #A1289E, 10, 5);
  w1=new WaveyLine(50, 300, 550, 300, #289E29, 20.0, 10.0);
  w2=new WaveyLine(300, 50, 300, 550, #289E29, 10.0, 20.0);

  // Debug the objects
  println(d1);
  println(d2);
  println(i1);
  println(i2);
  println(w1);
  println(w2);
}

// Draw method
void draw() {
  background(0);
  // Draw the lines
  d1.draw();
  d2.draw(); 
  i1.draw();
  i2.draw(); 
  w1.draw();
  w2.draw();  
}

