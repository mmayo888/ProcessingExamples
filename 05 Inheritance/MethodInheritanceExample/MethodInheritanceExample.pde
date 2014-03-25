/*
 * MethodInheritanceExample
 *
 * Demonstrates the inheritance of methods from class PImage to class PGraphics
 */
 
// References to image
PImage originalImage, greyImage, blurredImage;

// References to graphics objects
PGraphics originalGraphics, greyGraphics, blurredGraphics;

// Setup method
void setup() {
  // Size the sketch
  size(960, 480);
  // Load the image
  originalImage = loadImage("egypt.jpg");
  // Copy the image and change it to greyscale
  greyImage = originalImage.get();
  greyImage.filter(GRAY);
  // Copy the image and change it to greyscale
  blurredImage = greyImage.get();
  blurredImage.filter(BLUR);
  // Create a PGraphics object and draw on it
  originalGraphics = createGraphics(320, 240);
  originalGraphics.beginDraw();
  originalGraphics.background(0);
  originalGraphics.stroke(#E1579E);
  originalGraphics.strokeWeight(4);
  originalGraphics.line(50, 50, 270, 190);
  originalGraphics.stroke(#1172A1);
  originalGraphics.textSize(32);
  originalGraphics.text("test", 0, 32);
  originalGraphics.endDraw();
  // Use the same image processing operations on the PGraphics
  // object to demonstrate that it is derived from PImage
  // Note that copying PGraphics objects is slightly different to copying
  // PImage objects
  greyGraphics = copyGraphics( originalGraphics );
  greyGraphics.filter(GRAY);    // Inherited method
  blurredGraphics = copyGraphics ( greyGraphics );
  blurredGraphics.filter(BLUR); // Inherited method
}

// Helper function to copy a PGraphics object
PGraphics copyGraphics(PGraphics source) {
  PGraphics dest = createGraphics(source.width, source.height);
  dest.loadPixels(); 
  arrayCopy(source.pixels, dest.pixels); 
  dest.updatePixels(); 
  return dest;
}

// Draw method
void draw() {
  // Display the images
  image(originalImage, 0, 0);
  image(greyImage, 320, 0);
  image(blurredImage, 640, 0);
  // Display the graphics
  image(originalGraphics, 0, 240);
  image(greyGraphics, 320, 240);
  image(blurredGraphics, 640, 240);
}

