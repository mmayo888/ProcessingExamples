
class Image8Bit {

  // Intensity representation of image
  // Only 0..255 are allowed
  private int[] intensity;

  // Image dimensions
  private int w, h;

  // Buffer for the toPImage() method, to prevent repeated recalculations
  // of the PImasge version of this image
  private PImage toPImageBuffer=null;

  // Constructor
  public Image8Bit(String filename) {
    // Load the image
    PImage image = loadImage(filename); 
    // Initialise the byte array
    w=image.width;
    h=image.height;
    intensity = new int[ w * h ];
    // Extract the brightness values from the source image
    for (int index=0; index<image.pixels.length; index++)
      intensity[ index ] = (int)brightness(image.pixels[ index ]);
  }

  // Copy constructor
  public Image8Bit(Image8Bit image) {
    // Copy image dimensions
    w=image.w();
    h=image.h();
    // Set up array
    intensity = new int[ w * h ];
    // Copy intensities
    for (int index=0; index<intensity.length; index++)
      intensity[ index ] = image.get(index);
  }

  // Getters for width/height/# pixels
  public int w() { 
    return w;
  }
  public int h() { 
    return h;
  }
  public int numPixels() {
    return w*h;
  }

  // Getters for the intensity value
  public int get(int x, int y) {
    return intensity[y*w+x];
  }
  public int get(int x) {
    return intensity[x];
  }

  // Setter for the intensity value
  public void set(int x, int y, int val) {
    intensity[y*w+x]=val;
  }
  public void set(int x, int val) {
    intensity[x]=val;
  }


  // A method to get a PImage version of this image
  public PImage toPImage() {
    // If the buffer is not null, return it
    if (toPImageBuffer!=null) return toPImageBuffer;
    // Otherwise recompute the buffer
    toPImageBuffer = createImage(w, h, ALPHA);
    for (int index=0; index<toPImageBuffer.pixels.length; index++)
      toPImageBuffer.pixels[ index ]=color( intensity[ index ] );
    return toPImageBuffer;
  }

  // A method clear the toPImageBuffer
  public void clearToPImageBuffer() {
    toPImageBuffer=null;
  }

  // A method to calculate the PNSR between this image and another of the same dimensions
  public double calcPeakSignalToNoiseRatio(Image8Bit otherImage) {
    float mse=0;
    for (int index=0; index<intensity.length; index++) {
      int otherVal = otherImage.get(index);
      mse += (intensity[ index ] - otherVal) * (intensity[ index ] - otherVal);
    }
    mse /= intensity.length;
    return 20*Math.log10(255)-10*Math.log10(mse);
  }
  
  // A method to unset ALL of the least significant bits (lsbs) of this image
  public void unsetLeastSignificentBits() {
    for (int index=0; index<intensity.length; index++) 
      intensity[ index ] &= 254;
  }
  
  // A method to return an array of booleans, those being the state of the LSB
  public boolean[] getLSB() {
    boolean[] result = new boolean[ intensity.length ];
    for (int index=0; index<intensity.length; index++) 
      result[ index ] = (intensity[ index ] & 1)==1;
    return result;
  }
  
  // A method to set an array of booleans, must be the correct length
  public void setLSB(boolean[] values) {
    for (int index=0; index<intensity.length; index++) 
      if (values[ index ]) intensity[ index ] |= 1; // set
      else intensity[ index ] &= 254;               // unset
  }
}

