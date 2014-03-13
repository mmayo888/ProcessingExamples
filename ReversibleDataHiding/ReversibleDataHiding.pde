
Image8Bit imageOriginal, imageModified;

void setup() {
  // Create two identical images
  imageOriginal = new Image8Bit("lenna.png");
  //imageOriginal = new Image8Bit("dog.jpg");
  imageModified = new Image8Bit(imageOriginal);
  // Size the sketch
  size(imageOriginal.w()*2, imageOriginal.h());
  // Modify one of the images by get the lsb, modifying it randomly, and setting it
  boolean[] lsb = imageModified.getLSB();
  for (int index=0; index<lsb.length; index++)
    lsb[index]=(random(1)<0.5);
  imageModified.setLSB(lsb);
  // Ensure that modifications are displayed
  imageModified.clearToPImageBuffer();
  // Display Info
  println("LSB plane has "+lsb.length+" bits");
  println("MSE after unsetting LSB: "+imageOriginal.calcMeanSquaredError(imageModified));
  println("PNSR after unsetting LSB: "+imageOriginal.calcPeakSignalToNoiseRatio(imageModified));
}

void draw() {
  image(imageOriginal.toPImage(), 0, 0);
  image(imageModified.toPImage(), imageOriginal.w(), 0);
}

