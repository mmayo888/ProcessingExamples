/*
 * MaskedImageExample
 * Author: Michael Mayo
 *
 * Demonstrates iheritance from an existing builtin class
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 1200;
public final int SKETCH_HEIGHT           = 400;

// The images
PImage normalImage;
MaskedImage maskedImage;

// Setup method
void setup() {
  // Set the size of the sketch
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Load an image
  normalImage = loadImage("golden_retriever.jpg");
  // Create a masked version of the image using a COPY of the original image
  maskedImage = new MaskedImage( normalImage.get() );
  
}

// Draw method
// Because both images are PImages, normal image drawing functions work for both
void draw() {
  // Clear the background
  background(0);
  // Draw the image
  image( normalImage, 0, 0 );
  // Draw the masked image
  image( maskedImage, normalImage.width, 0 );
}

// Mouse press event
// Update the mask of the masked image using the mouse click info
void mouseClicked() {
   // Did the mouse click occur on the masked image?
  if (mouseX>=normalImage.width && mouseX<= normalImage.width+maskedImage.width
    && mouseY>=0 && mouseY<=maskedImage.height)
    // Yes it did!
    maskedImage.applyCircularMask(mouseX-normalImage.width, mouseY, 50);
}
