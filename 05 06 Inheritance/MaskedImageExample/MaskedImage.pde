public class MaskedImage  extends PImage {

  // The PImage to be used as a mask
  private PImage mask;
  
  // Constructor that builds a MaskedImage from a PImage
  public MaskedImage(PImage image) {
    // Because a MaskedImage is a PImage, we can use a normal PImage constructor
    // to set up a blank image
    super(image.width, image.height, image.format);
    // Now we assign the masked image to have the same pixels as the original image
    pixels = image.pixels;
    // Finally we create an 8-bit image that will be used as a mask
    mask = new PImage(width, height, ALPHA);
    // Apply the mask, which initially will be the entire image
    mask(mask);
  }


  // Method to apply a circular mask at position (posX,posY) with given radius
  // Warning: this method destructively modifies the pixel data!
  public void applyCircularMask(float posX, float posY, float radius) {
    // Define the shape of the mask
    for (int x=0; x<width; x++) for (int y=0; y<height; y++)
      if ( sqrt(pow(posX-x, 2) + pow(posY-y, 2)) <= radius )
        mask.set(x,y,255);
    // Call the inherited mask() method to mask this image using the mask
    mask(mask);
  }
}

