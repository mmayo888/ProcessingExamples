// Constants
final int SKETCH_WIDTH = 600;
final int SKETCH_HEIGHT = 600;

// List of points defining the current line
ArrayList<PVector> points;

// Setup method
void setup() { 
  // Set the size of the sketch
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Initialize the list of points
  points = new ArrayList<PVector>();
}

// Draw method -- use the points list to draw a line defined
// by a mouse drag
void draw() {
  // Clear background
  background(0);
  // Draw nothing if the list contains less than two points
  if (points.size()<2) return;
  // Draw the line defined by the list of points
  for (int index=1; index<points.size(); index++) {
    PVector fromPt = points.get(index-1);
    PVector toPt = points.get(index);
    line(fromPt.x, fromPt.y, toPt.x, toPt.y);
  }
}

void mousePressed() {
  println("mousePressed @ "+mouseX+","+mouseY);
  // Clear the list of points so that a new line will be started
  points.clear();
  // Set the drawing color randomly
  float red=random(255), green=random(255), blue=random(255);
  fill(color(red,green,blue));
  noStroke();
  
}

void mouseDragged() {
  println("mouseDragged @ "+mouseX+","+mouseY); 
  points.add( new PVector( mouseX, mouseY ) );
}

void mouseReleased() {
  println("mouseReleased @ "+mouseX+","+mouseY);
}

void mouseClicked() {
  println("mouseClicked @ "+mouseX+","+mouseY);
}

void keyTyped() {
  println("keyTyped "+key);
}

void keyPressed() {
  println("keyPressed "+key);
}

void keyReleased() {
  println("keyReleased "+key);
}

