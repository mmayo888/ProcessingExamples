// Reference to an object
PImage fireImage, fireImageProcessed;

// Setup method
void setup() {
  // Sketch size
  size(600, 300);
  // Load the fire image
  fireImage=loadImage("fire.jpg");
  fireImage.resize(300, 0);
  // Process a copy of the image
  fireImageProcessed=processImage(fireImage);
}

// Method to process an image
PImage processImage(PImage image) {
  int w=image.width, h=image.height;
  PImage result = createImage(w, h, image.format);
  result.copy(image, 0, 0, w, h, 0, 0, w, h);
  result.filter(GRAY);
  result.filter(BLUR);
  return result;
}

// Erroneous method to process an image
PImage __processImage(PImage image) {
  image.filter(GRAY);
  image.filter(BLUR);
  return image;
}

// Draw method
void draw() {
  background(0);
  image(fireImage, 0, 0);
  image(fireImageProcessed, 300, 0);
}


