
// The dimensions of the sketch
public final int SKETCH_WIDTH = 600;
public final int SKETCH_HEIGHT = 600;

// The graphics context which will be 10x larger than the sketch
PGraphics pg;

// A coordinate indicating the portion of the graphics context
// to display
int x;

// Setup method
void setup() {
  // Setup the sketch window with a 2D renderer
  size(SKETCH_WIDTH, SKETCH_HEIGHT, P2D);
  // Create a graphics context larger than the sketch
  pg = createGraphics(SKETCH_WIDTH * 3, SKETCH_HEIGHT);
  // Draw some text to the graphics context
  // Note: this is done only once, and we subsequently scroll the 
  // context around in the main window
  pg.beginDraw();
  pg.background(0);
  pg.textSize(500);
  pg.text("Testing", 0, 500);
  pg.endDraw();
  // Initialize x
  x = 0;
}

// Draw method
void draw() {
  // Display a portion of the graphics context on screen
  image(pg,-1*x,0);
  // If the mouse is pressed, scroll the image for the next frame
  if (mousePressed)
    x = (x + 2) % (pg.width - SKETCH_WIDTH);
}

