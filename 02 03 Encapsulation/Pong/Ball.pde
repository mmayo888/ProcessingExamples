/*
 * Ball
 * 
 */

class Ball {

  // Color of the ball
  private color drawColor;

  // Size/diameter of the ball
  private float size;

  // Position of the ball
  private PVector position;

  // Velocity of the ball
  private PVector velocity;
 
  // Constructor 
  public Ball(PVector position, color drawColor, float size,  PVector velocity) {
    // Copy across the parameters
    this.drawColor = drawColor;
    this.size      = size; 
    this.position  = position;
    this.velocity  = velocity;
  }
  
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
  
  // Accessor methods for the velocity property
  public PVector getVelocity() {
     return velocity.get(); 
  }

  public void setVelocity(PVector val) {
    velocity = val;
  }
  
    // Draw method for drawing the ball
  public void draw() {
    noStroke();
    fill( drawColor );
    ellipseMode(CENTER);
    ellipse(position.x, position.y, size, size);
  }
  
   // Method to move the ball
  public void move() {
    // Update the ball's position by adding the velocity
    position.add( velocity ); 
  }
  
  
  
  
}
