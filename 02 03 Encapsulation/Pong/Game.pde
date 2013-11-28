/*
 * Game class
 * 
 * A class encapsulating the game objects and the mechanics and rules of Pong
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
  public final char  BAT_HIGH_LEFT        = 'z';
  public final char  BAT_HIGH_RIGHT       = 'c';
  public final char  BAT_LOW_LEFT         = '1';
  public final char  BAT_LOW_RIGHT        = '3';
  

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
    // Increase the speed of the ball by 0.1% per frame for a fun challenge
    PVector newBallVelocity = ball.getVelocity();
    newBallVelocity.mult(1.001);
    ball.setVelocity( newBallVelocity );
    // Check for collisions between the ball and the sides of the playfield
    // or the bats and the ball
    checkCollisions();
    // Check to see if the ball hit one of the goals (i.e. the top or bottom of the playfield)
    // If it has, then the round is over and we start a new round with a new ball
    // For fun, for every point a player loses, their bat size shrinks by 5%.
    boolean roundOver = false;
    if (ball.getPosition().y < playfieldTopLeft.y) {
      scoreLow++;
      batHigh.setSize( batHigh.getSize() * 0.95 );
      roundOver=true;
    }  
    else if (ball.getPosition().y > playfieldTopLeft.y+playfieldSize.y) {
      scoreHigh++;
      batLow.setSize( batLow.getSize() * 0.95 );
      roundOver=true;
    }
    if (roundOver) ball = createBall();
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
    if (keysDown[BAT_HIGH_LEFT] && batHigh.getPosition().x - batHigh.getSize() / 2  > playfieldTopLeft.x) 
      batHigh.moveLeft();
    if (keysDown[BAT_HIGH_RIGHT] && batHigh.getPosition().x + batHigh.getSize() / 2  < playfieldTopLeft.x + playfieldSize.x) 
      batHigh.moveRight();
    if (keysDown[BAT_LOW_LEFT] && batLow.getPosition().x - batLow.getSize() / 2  > playfieldTopLeft.x)
      batLow.moveLeft();
    if (keysDown[BAT_LOW_RIGHT] && batLow.getPosition().x + batLow.getSize() / 2  < playfieldTopLeft.x + playfieldSize.x)
      batLow.moveRight();
  }



  // Method to draw the playfield, with a title above the below and keys to use below the playfield
  private void drawPlayfield() {
    // Draw the title
    noStroke();
    fill(255);
    textSize(32);
    textAlign(CENTER);
    text("Pong!", playfieldTopLeft.x + playfieldSize.x/2, 40);
    // Draw the keys
    fill( BAT_HIGH_COLOR );
    textAlign(LEFT);
    text( "["+BAT_HIGH_LEFT+","+BAT_HIGH_RIGHT+"]", playfieldTopLeft.x, playfieldTopLeft.y+playfieldSize.y+40 );
    fill( BAT_LOW_COLOR );
    textAlign(RIGHT);
    text( "["+BAT_LOW_LEFT+","+BAT_LOW_RIGHT+"]", playfieldTopLeft.x+playfieldSize.x, playfieldTopLeft.y+playfieldSize.y+40 );
    
    // Draw the border
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

  // Method to check for all the collisions
  private void checkCollisions() {
    // Check for a collision with the left-hand size of the playfield
    if (ball.checkCollisionVertical( playfieldTopLeft.x, playfieldTopLeft.y, playfieldTopLeft.y+playfieldSize.y ))
      ball.bounceAgainstVertical();
    // Check for a collision with the right-hand size of the playfield
    else if (ball.checkCollisionVertical( playfieldTopLeft.x + playfieldSize.x, playfieldTopLeft.y, playfieldTopLeft.y+playfieldSize.y )) 
      ball.bounceAgainstVertical();
    // Check for collisions with the higher bat
    // If there is a collision, then the new velocity will be down (positive y direction)
    if (ball.checkCollisionHorizontal(batHigh.getPosition().x - batHigh.getSize()/2, batHigh.getPosition().x + batHigh.getSize()/2, batHigh.getPosition().y)) {
      PVector velocity = ball.getVelocity();
      velocity.y = abs(velocity.y);
      ball.setVelocity( velocity );
    }
    // Check for collisions with the lower bat
    // If there is a collision, then the new velocity will be up (negative y direction)
    if (ball.checkCollisionHorizontal(batLow.getPosition().x - batLow.getSize()/2, batLow.getPosition().x + batLow.getSize()/2, batLow.getPosition().y)) {
      PVector velocity = ball.getVelocity();
      velocity.y = -1 * abs(velocity.y);
      ball.setVelocity( velocity );
    }
  }
}

