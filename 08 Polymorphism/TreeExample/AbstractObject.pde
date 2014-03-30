// A class representing an abstract object that can be drawn and clicked on

abstract class AbstractObject {

  // The image that represents the object
  protected PImage image;

  // The position of the object on the sketch
  protected PVector position;

  // The size of the object
  protected float size;

  // The orientation of the object
  protected float orientation;
  
  // The constructor
  public AbstractObject(PImage image, float x, float y, float size, float orientation) {
    // Copy the image
    this.image = image.get(); 
    // Resize the image
    this.image.resize((int)size, 0);
    // Set the position vector
    position = new PVector(x, y);
    // Copy the size
    this.size = size;
    // Copy the orientation
    this.orientation = orientation;
  }

  // Draw method that draws an image centered on position
  public void draw() {
    pushMatrix();
    translate(position.x, position.y);
    rotate(orientation);
    imageMode(CENTER);
    image(image,0,0);
    popMatrix();
  }

  // Methods to get the position 
  public PVector getPosition() {
    return position.get();
  }

  // Method to get the size
  public float getSize() {
    return size;
  }
  
  // Method to get the orientation
  public float getOrientation() {
    return orientation;
  }
}

