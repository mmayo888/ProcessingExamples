// Reference to an object
PImage fireImage, fireImageProcessed;

// Setup method
void setup() {
  // Load the fire image
  fireImage=loadImage("fire.jpg");
  fireImage.resize(300, 0);
  // Sketch size
  size(fireImage.width * 2, fireImage.height);
  // Process a copy of the image
  fireImageProcessed=processImage(fireImage);
}

// Method to copy and process an image
PImage processImage(PImage image) {
  int w=image.width, h=image.height;
  PImage result = createImage(w, h, image.format);
  result.copy(image, 0, 0, w, h, 0, 0, w, h);
  result.filter(GRAY);
  result.filter(BLUR);
  return result;
}

// Erroneous method to copy and process an image that fails
// to copy the image first
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


