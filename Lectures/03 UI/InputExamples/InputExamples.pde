
// Setup
void setup() {
  // Size the sketch
  size(600, 600);
  // Set background to black
  background(0);
}

// Draw method
void draw() {
  // Set stroke to white
  stroke(255);
  // Set line thickness to reasonably thick
  strokeWeight(4);
  // Draw a line if the left mouse button is pressed
  if (mousePressed && (mouseButton == LEFT))
    line(pmouseX, pmouseY, mouseX, mouseY);
}

// Mouse press event
void mousePressed() {
   println("mouse pressed"); 
}

// Mouse release event
void mouseReleased() {
   println("mouse released"); 
}

// Key press event
void keyPressed() {
   println("a key was pressed, and it has code "+keyCode); 
}


