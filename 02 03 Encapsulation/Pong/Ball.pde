/* Ball
 *
 * A class encapsulating state data and methods for a ball object.
 *
 */


class Ball {

  // Color of the ball
  private color ballColor;

  // Size/diameter of the ball
  private float size;

  // Position of the ball
  private PVector position;

  // Velocity of the ball
  private PVector velocity;

  // Bounds of the ball
  private float minX, maxX, minY, maxY;

  // Constructor 
  public Ball(color ballColor, float size, float minX, float maxX, float minY, float maxY) {
    // Copy across the parameters
    this.ballColor = ballColor;
    this.size      = size; 
    this.minX      = minX;
    this.maxX      = maxX;
    this.minY      = minY;
    this.maxY      = maxY;
    // Set the initial position of the ball to the center of the playfield
    this.position  = new PVector((maxX - minX) / 2, (maxY - minY) / 2);
    // Set the initial velocity to a random unit vector, so long as it is moving faster in the
    // y direction than the x direction
    do {
      velocity  = PVector.random2D();
    } 
    while ( abs(velocity.x) > abs(velocity.y) );
    // Scale the unit vector by four so that the ball is moving reasonably quickly
    this.velocity.mult( 4 );
  }

  // ToString method to print the ball to the console
  public String toString() {
    String result = "Ball: ballColor="+ballColor+" size="+size+" position="+position;
    result+=" velocity="+velocity+" minX="+minX+" maxX="+maxX+" minY="+minY+" maxY="+maxY;
    return result;
  } 

  // Draw method for drawing the ball
  public void draw() {
    noStroke();
    fill( ballColor );
    ellipseMode(CENTER);
    ellipse(position.x, position.y, size, size);
  }

  // Method to move the ball
  public void move() {
    // Update the ball's position by adding the velocity
    position.add( velocity );
    // If the ball's position is beyond the left or right walls, simulate a bounce
    if (position.x - size / 2 < minX) {
      velocity.x *= -1;                          // change ball's velocity to opposite direction
      position.x = minX + size / 2;              // reset ball's position to left wall
    } 
    else if (position.x + size / 2 > maxX) {
      velocity.x *= -1;                          // change ball's velocity to opposite direction
      position.x = maxX - size / 2;              // reset ball's position to right wall
    }
  }

  // Method to indicate whether or not the the ball is beyond the top or bottom bounds, which can be used for
  // determining when one player has won a point
  // The method returns:
  //  0 -- if the ball is within minY and maxY
  // -1 -- if the ball is beyond the top of the screen
  // +1 -- if the ball is beyond the bottom of the screen
  public int verticalPositionRelativeToBounds() {
    if (position.y<minY) return -1;
    else if (position.y>maxY) return 1;
    return 0;
  }

  // Methods to get the position of the ball so that other objects can read the position of the ball
  public PVector getPosition() {
    return position;
  }


  // Methods to get/set the velocity of the ball so that other objects can access the direction and speed of the ball
  public PVector getVelocity() {
    return velocity;
  }

  public void setVelocity(PVector val) {
    velocity = val;
  }

  // Method to get the size of the ball
  public float getSize() {
    return size;
  }
}

