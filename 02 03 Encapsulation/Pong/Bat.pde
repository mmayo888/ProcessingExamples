/*
 * Bat
 * 
 * A class encapsulating a bat that can be moved, resized, and 
 * draw itself
 *
 */

public class Bat {

  // The (x,y) position of the bat
  private PVector position;

  // The size of the bat
  private float size;

  // The velocity of the bat along the y-axis in pixels per frame
  private float velocity;

  // Constructor
  public Bat(float initialX, float initialY, float size) {
    // Copy the parameters
    this.position = new PVector(initialX, initialY);
    this.size = size;
    // Initialize the velocity to 0
    velocity = 0;
  }

  // Getter methods for read-only access to the private data
  public float getX() { 
    return position.x;
  }
  public float getY() { 
    return position.y;
  }
  public float getSize() { 
    return size;
  }
  public float getVelocity() { 
    return velocity;
  }
  public float getVelocityMagnitude() {
    return abs(velocity); 
  }

  // Debugging method
  public String toString() {
    return "Bat: position="+position+" size="+size+" velocity="+velocity;
  }

  // Draw method
  public void draw() {
    // Set the strokecolour to white
    stroke(255);
    // Make the stroke thick
    strokeWeight(4);
    // The bat is simply a line
    line(position.x, position.y - size/2, position.x, position.y + size/2);
  }

  // Move the bat by adding the velocity to the y position
  // At the same time, prevent movement of the bat off the court
  // If the bat does hit the court boundary, set the velocity to zero
  public void move() {
    position.y += velocity; 
    if (position.y<0) {
      position.y=0;
      velocity=0;
    } 
    else if (position.y>COURT_HEIGHT) {
      position.y=COURT_HEIGHT;
      velocity=0;
    }
  }

  // Accelerate the bat in the upward direction
  public void accelerateUp() {
    velocity -= ACCELERATION_CONSTANT;
  }

  // Accelerate the bat in the downward direction
  public void accelerateDown() {
    velocity += ACCELERATION_CONSTANT;
  }

  // Deccelerate the bat in either direction
  // Decceleration is at twice the normal acceleration rate to 
  // prevent overshoots
  public void deccelerate() {
    if (velocity>0) velocity -= 2 * ACCELERATION_CONSTANT;
    else if (velocity<0) velocity += 2 * ACCELERATION_CONSTANT;
    if (abs(velocity)<2 * ACCELERATION_CONSTANT) velocity = 0;
  }
  
}

