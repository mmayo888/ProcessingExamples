/*
 * Ball
 * 
 * A class encapsulating ball that can move, draw itself, and check for collisions
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
  public Ball(PVector position, color drawColor, float size, PVector velocity) {
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
  
  // Method to simulate a bounce of a ball against a vertical wall
  public void bounceAgainstVertical() {
     velocity.x *= -1; 
  }
  
  // Method to simulate a bounce of a ball against a horizontal wall
  public void bounceAgainstHorizontal() {
     velocity.y *= -1; 
  }
  
  // Method to returns true if the ball is colliding with a vertical line segment from (x,y1) to (x,y2)
  // Assumes that y1<y2
  public boolean checkCollisionVertical(float x, float y1, float y2) {
      // Does the ball have a y value between y1 and y2?
      if (position.y >= y1 && position.y <= y2)
        // Does the ball have an x coordinate close enough to x?
        if ( position.x - size/2 <= x && position.x + size/2 >= x )
          // Yes -- the ball is colliding
          return true;
      // If we get to here, no collision
      return false;
  }
  
  // Method to returns true if the ball is colliding with a horizontal line segment from (x1,y) to (x2,y)
  // Assumes that x1<x2
  public boolean checkCollisionHorizontal(float x1, float x2, float y) {
      // Does the ball have a x value between x1 and x2?
      if (position.x >= x1 && position.x <= x2)
        // Does the ball have a y coordinate close enough to y?
        if ( position.y - size/2 <= y && position.y + size/2 >= y )
          // Yes -- the ball is colliding
          return true;
      // If we get to here, no collision
      return false;
  }
  
}

