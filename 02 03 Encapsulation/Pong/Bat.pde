/* Bat
 *
 * A class encapsulating state data and methods for a bat object.
 *
 */

class Bat {

  // Color of the bat
  private color batColor;

  // Position of the bat
  private PVector position;

  // Left and right bounds
  private float minX, maxX; 

  // Width and height of the bat
  private float batWidth, batHeight;

  // Velocity of the bat when it moves in pixels per frame
  private float velocity;

  // Constructor 
  public Bat(color batColor, float minX, float maxX, float y, 
  float batWidth, float batHeight, float velocity) {
    // Copy the initial settings for the bat, setting the
    // initial x position to the midpoint between the lower and
    // upper bounds
    this.batColor = batColor;
    this.minX     = minX;
    this.maxX     = maxX;
    this.position = new PVector( (minX+maxX)/2, y );
    this.batWidth = batWidth;
    this.batHeight= batHeight;
    this.velocity = velocity;
  }

  // ToString method for printing out the Bat to the console
  public String toString() {
    String result = "Bat: batColor="+batColor+" position="+position+" minX="+minX;
    result+=" maxX="+maxX+" batHeight="+batHeight+" batWidth="+batWidth;
    result+=" velocity="+velocity;
    return result;
  }

  // Draw method for drawing the bat
  public void draw() {
    noStroke();
    fill( batColor );
    rectMode( CENTER ); 
    rect( position.x, position.y, batWidth, batHeight );
  }

  // Method to move the bat right, ensuring it doesn't go off the right edge 
  // of the sketchpad
  public void moveRight() {
    position.x += velocity; 
    if (position.x + batWidth/2 > maxX) 
      position.x = maxX - batWidth/2;
  }

  // Method to move the bat left, ensuring that it doesn't go off the left edge 
  // of the sketchpad
  public void moveLeft() {
    position.x -= velocity; 
    if (position.x - batWidth/2 < minX) 
      position.x = minX + batWidth/2;
  }

  // Method to determine if a ball is touching or overlapping this bat
  public boolean isColliding(Ball ball) {
    // Get the balls position
    PVector ballPosition = ball.getPosition();
    // Find the closest point of the ball to the bat
    // This will depend on whether or not the ball is above or below the bat
    PVector closestPointOnBall = new PVector( ballPosition.x, 0 );
    if (ballPosition.y < position.y)
      // ball is above the bat
      closestPointOnBall.y = ballPosition.y + ball.getSize() / 2;
    else
      // ball is below the bat
      closestPointOnBall.y = ballPosition.y - ball.getSize() / 2;
    // Check to see if the closest point on the ball is within the rectangle of this bat
    if (closestPointOnBall.x >= position.x-batWidth/2
      && closestPointOnBall.x <= position.x+batWidth/2
      && closestPointOnBall.y >= position.y-batHeight/2
      && closestPointOnBall.y <= position.y+batHeight/2)
      return true;
    // If we get to here, there is no collision
    return false;
  }
}

