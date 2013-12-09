/*
 * Bat
 * 
 * A class encapsulating bat that can move and draw itself
 *
 */


class Bat {

  // Position of the bat
  private PVector position;

  // Colour of the bat
  private color drawColor;

  // Size of the bat
  private float size;

  // Velocity of the bat in pixels per frame
  private float velocity;

  // Accessor methods for the position property
  public PVector getPosition() {
     return position.get(); 
  }

  public void setPosition(PVector val) {
    position = val;
  }
  

  // Accessor method for the drawColor property
  public color getDrawColor() {
     return drawColor; 
  }
  
  public void setDrawColor(color val) {
     drawColor = val; 
  }
  
  // Accessor method for the size property
  public float getSize() {
     return size; 
  }
  
  public void setSize(float val) {
     size = val; 
  }
  
  // Accessor method for the velocity property
  public float getVelocity() {
     return velocity; 
  }
  
  public void setVelocity(float val) {
     velocity = val; 
  }
  
  // Constructor
  public Bat( PVector position, color drawColor, float size, float velocity) {
    // Copy the parameters 
    this.position = position;
    this.drawColor = drawColor;
    this.size = size;
    this.velocity = velocity;
  }

  // Draw method
  public void draw() {
    noFill();
    stroke(drawColor);
    strokeWeight(4);
    line( position.x - size/2, position.y, position.x + size/2, position.y);
  }
  
  // Moves the bat left
  public void moveLeft() {
     position.x -= velocity; 
  }
  
  // Moves the bat right
  public void moveRight() {
     position.x += velocity; 
  }
  
}

