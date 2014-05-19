
Image8Bit imageOriginal, imageModified;

void setup() {
  // Create two identical images
  imageOriginal = new Image8Bit("lenna.png");
  //imageOriginal = new Image8Bit("dog.jpg");
  imageModified = new Image8Bit(imageOriginal);
  // Size the sketch
  size(imageOriginal.w()*2, imageOriginal.h());
  // Modify one of the images
  for (int index=0; index<imageModified.numPixels(); index++){
    int val = imageModified.get(index);
    imageModified.set(index, val & 254); // unset lsb
  }
  // Ensure that modifications are displayed
  imageModified.clearToPImageBuffer();
  // Display Info
  println("Image has has "+imageModified.numPixels()+" pixels");
  println("MSE after unsetting LSB: "+imageOriginal.calcMeanSquaredError(imageModified));
  println("PNSR after unsetting LSB: "+imageOriginal.calcPeakSignalToNoiseRatio(imageModified));
}

void draw() {
  image(imageOriginal.toPImage(), 0, 0);
  image(imageModified.toPImage(), imageOriginal.w(), 0);
}

