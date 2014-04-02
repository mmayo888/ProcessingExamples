class RotatingBlob extends Blob {

  // The speed of rotation
  public float rotationSpeed=0;

  // Constructor
  public RotatingBlob(float x, float y, float radius) {
    super(x, y, radius);
  }

  // Overridden draw method
  public void draw() {
    // Rotate all the points in the outline
    for (PVector point: outline) 
       point.rotate(rotationSpeed); 
    // Draw the blob using Blob's version of draw()
    super.draw();
  }
}

