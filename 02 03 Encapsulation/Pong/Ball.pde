/*
 * Ball
 * 
 * A class encapsulating a ball that can move, bounce off things, and draw itself
 *
 */

public class Ball {

  // The position and velocity of the ball
  private PVector position, velocity; 

  // Constructor
  public Ball() {
    // Ball starts in the center of the court
    position = new PVector( COURT_WIDTH/2, COURT_HEIGHT/2 );
    // Ball has random intial velocity
    // Pick a random direction along x-axis
    int dir = 1;
    if ( random(1)<0.5 ) dir=-1;
    velocity = new PVector( dir * (random(6) + 3), random(6) - 3 );
  }

  // Getters
  public float getPosX() { 
    return position.x;
  }
  public float getPosY() { 
    return position.y;
  }
  public float getVelX() { 
    return velocity.x;
  }
  public float getVelY() { 
    return velocity.y;
  }

  // Debugging method
  public String toString() {
    return "Ball: position="+position+" velocity="+velocity;
  }

  // Move the ball
  public void move() {
    // Update the balls position
    position.x += velocity.x;
    position.y += velocity.y;
    // Check that the ball has not gone above or below the bounds of the court
    // If it has, then bounce off the boundary
    if (position.y<0 || position.y>COURT_HEIGHT) 
      velocity.y *= -1;
  }


  // Draw the ball
  public void draw() {
    // A ball is a white circle
    noStroke();
    fill(255);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, BALL_RADIUS*2, BALL_RADIUS*2);
  }

  // Method to check for a collision with a bat
  public void checkCollision(Bat bat) {
    // Assume that there is no collision
    boolean collision=false;
    // Is the ball in the same range of y-coordinates as the bat?
    if (position.y>=bat.getY()-bat.getSize()/2 && position.y<=bat.getY()+bat.getSize()/2) 
      // Yes -- the ball and the bat have overlapping y-coordinates
      // Do they also have overlapping x-coordinates?
      if (abs(position.x - bat.getX())<2)
        collision=true;
    // If there is a collision, bounce the ball off the bat 
    if (collision) {
      velocity.x *= -1; 
    }
  }
}

