/*
 * Game
 * 
 */


class Game {

  // Constants specific to a game
  public final float INITIAL_BAT_SIZE     = 100;
  public final float INITIAL_BAT_VELOCITY = 4;
  public final color BAT_HIGH_COLOR       = #32B40B;
  public final color BAT_LOW_COLOR        = #0B61B4;
  public final color BALL_COLOR           = #E8233A;
  public final float INITIAL_BALL_SIZE    = 10;
  public final float INITIAL_BALL_VELOCITY = 2;

  // Coordinates of the top left corner of the playfield
  private PVector playfieldTopLeft; 

  // Width and height of the playfield
  private PVector playfieldSize;

  // The bats used by the players
  private Bat batHigh, batLow;

  // The ball object
  private Ball ball;

  // Array of boolean flags, one per key, used to detect which key(s) are being pressed
  private boolean[] keysDown;

  // The player scores
  private int scoreHigh, scoreLow;

  // Constructor for the playfield
  public Game(PVector playfieldTopLeft, PVector playfieldSize) {
    // Copy the dimensions of the playfield
    this.playfieldTopLeft = playfieldTopLeft;
    this.playfieldSize = playfieldSize;
    // Create the two player bats
    batHigh = new Bat( new PVector( playfieldTopLeft.x+playfieldSize.x/2, playfieldTopLeft.y+50 ), 
    BAT_HIGH_COLOR, INITIAL_BAT_SIZE, INITIAL_BAT_VELOCITY );
    batLow  = new Bat( new PVector( playfieldTopLeft.x+playfieldSize.x/2, playfieldTopLeft.y+playfieldSize.y - 50 ), 
    BAT_LOW_COLOR, INITIAL_BAT_SIZE, INITIAL_BAT_VELOCITY );  
    // Create a ball
    ball = createBall();
    // Setup the array of boolean flags to track which keys are being pressed 
    keysDown = new boolean[ 256 ];
  } 

  // Draw method
  public void draw() {
    // Erase the sketchpad
    background(0);
    // Draw the playfield
    drawPlayfield();
    // Draw the bats
    batHigh.draw();
    batLow.draw();
    // Draw the ball
    ball.draw();
    // Draw the scores
    drawScores();
    // Move the bats for the next frame
    moveBats();
    // Move the ball for the next frame
    ball.move();
    // Checking for collisions 
    // Check to see if the ball hit the left or right edge of the playfield
    checkBallPlayfieldCollisions();
    checkBallBatCollisions();
    // If the ball hits goal, we create a new ball
    int goalCollisionCode = checkBallGoalCollisions();
    if (goalCollisionCode!=0) {
      // Determine which goal was hit and update the scores
      if (goalCollisionCode == 1) scoreHigh++;
      else if (goalCollisionCode == -1) scoreLow++;
      // Create a new goal
      ball = createBall();
    }
  }

  // Method  called whenever a key is pressed: we want to record this in the keysDown flag array
  public void keyPressed() {
    if (key<256) keysDown[key] = true;
  }

  // Method called whenever a key is released: we want to record this in the keysDown flag array
  public void keyReleased() {
    if (key<256) keysDown[key] = false;
  }

  // Method to create a ball with random velocity
  private Ball createBall() {
    // Work out an initial random velocity for the ball
    PVector initialBallVelocity = PVector.random2D();
    initialBallVelocity.mult( INITIAL_BALL_VELOCITY );
    // Ensure that the y velocity is greater than the x velocity to prevent too much wall bouncing
    if (abs(initialBallVelocity.x) > abs(initialBallVelocity.y)) {
      float temp = initialBallVelocity.x;
      initialBallVelocity.x = initialBallVelocity.y;
      initialBallVelocity.y = temp;
    }
    // Create and return a ball
    return new Ball( new PVector( playfieldTopLeft.x + playfieldSize.x/2, playfieldTopLeft.y + playfieldSize.y/2 ), 
    BALL_COLOR, INITIAL_BALL_SIZE, initialBallVelocity);
  }

  // Method to move the bats according to the keys that are held down, while not allowing them to go off the playfield
  private void moveBats() {
    if (keysDown['z'] && batHigh.getPosition().x - batHigh.getSize() / 2  > playfieldTopLeft.x) 
      batHigh.move(-1);
    if (keysDown['c'] && batHigh.getPosition().x + batHigh.getSize() / 2  < playfieldTopLeft.x + playfieldSize.x) 
      batHigh.move(1);
    if (keysDown['1'] && batLow.getPosition().x - batLow.getSize() / 2  > playfieldTopLeft.x)
      batLow.move(-1);
    if (keysDown['3'] && batLow.getPosition().x + batLow.getSize() / 2  < playfieldTopLeft.x + playfieldSize.x)
      batLow.move(1);
  }

  // Method to check for a collision between the left and right hand sides of the playfield and the ball, 
  // adjusting the ball's velocity accordingly
  private void checkBallPlayfieldCollisions() {
    // Get a copy of the ball's current position and velocity
    PVector newBallVelocity = ball.getVelocity();
    // Check for a collision with the left-hand size of the playfield
    if (ball.getPosition().x - ball.getSize()/2 <= playfieldTopLeft.x) {
      newBallVelocity.x *= -1;
      ball.setVelocity( newBallVelocity );
    } 
    // Check for a collision with the right-hand size of the playfield
    else if (ball.getPosition().x + ball.getSize()/2 >= playfieldTopLeft.x + playfieldSize.x) {
      newBallVelocity.x *= -1;
      ball.setVelocity( newBallVelocity );
    }
  }

  // Method to check if the ball hit one of the bats, adjusting the ball's velocity
  // according if it does
  private void checkBallBatCollisions() {
    // Does the ball overlap the high bat?
    if (ball.getPosition().x >= batHigh.getPosition().x - batHigh.getSize()/2 && ball.getPosition().x <= batHigh.getPosition().x + batHigh.getSize()/2)
      if (ball.getPosition().y - ball.getSize()/2 <= batHigh.getPosition().y && ball.getPosition().y + ball.getSize()/2 >= batHigh.getPosition().y)
        ball.setVelocity( new PVector( ball.getVelocity().x, abs( ball.getVelocity().y ) ) );
    // Does the ball overlap the low bat?
    if (ball.getPosition().x >= batLow.getPosition().x - batLow.getSize()/2 && ball.getPosition().x <= batLow.getPosition().x + batLow.getSize()/2)
      if (ball.getPosition().y - ball.getSize()/2 <= batLow.getPosition().y && ball.getPosition().y + ball.getSize()/2 >= batLow.getPosition().y)
        ball.setVelocity( new PVector( ball.getVelocity().x, -1 * abs( ball.getVelocity().y ) ) );
     
  }

  // Method to check if the ball has hit either the top or bottom side of the playfield
  // Returns either -1 (top goal hit), 1 (bottom goal hit) or 0 (no goal hit)
  private int checkBallGoalCollisions() {
    // Check to see if the top goal has been hit
    if (ball.getPosition().y < playfieldTopLeft.y) return -1;
    // Check to see if the bottom goal has been hit
    if (ball.getPosition().y > playfieldTopLeft.y + playfieldSize.y) return 1;
    // If we get to here, no goal was hit
    return 0;
  }
  
  // Method to draw the playfield
  private void drawPlayfield() {
    stroke(255);
    noFill();
    strokeWeight(4);
    rect(playfieldTopLeft.x, playfieldTopLeft.y, playfieldSize.x, playfieldSize.y, 10);
  }
  
  // Method to display the scores
  private void drawScores() {
    noStroke();
    textSize(32);
    fill(BAT_HIGH_COLOR);
    textAlign(RIGHT);
    text(scoreHigh, playfieldTopLeft.x-10, playfieldTopLeft.y+playfieldSize.y/2);
    fill(BAT_LOW_COLOR);
    textAlign(LEFT);
    text(scoreLow, playfieldTopLeft.x+playfieldSize.x+10, playfieldTopLeft.y+playfieldSize.y/2);
  }
}

