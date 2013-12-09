/*
 * Pong
 * Author: Michael Mayo
 *
 * Implementation of a simple OO Pong game to illustrate encapsulation.
 */

// The width and height of the pong court
public final int COURT_WIDTH            = 1200;
public final int COURT_HEIGHT           = 600;

// The x position of the left and right players bats
public final float LEFT_BAT_X_POSITION  = 100;
public final float RIGHT_BAT_X_POSITION = 1100;

// The radius of the ball
public final float BALL_RADIUS          = 10;

// The acceleration constant for bat movement in pixels per frame
public final float ACCELERATION_CONSTANT = 0.3;

// The keyboard controls
public final char  BAT_LEFT_UP          = 'a';
public final char  BAT_LEFT_DOWN        = 'z';
public final char  BAT_RIGHT_UP         = 'l';
public final char  BAT_RIGHT_DOWN       = ',';


// The keyboard
Keyboard keyboard;

// The player's bat objects
Bat leftBat, rightBat;

// The ball object
Ball ball;

// The scores
int leftScore, rightScore;

// Setup method
void setup() {
  // Turn on smooth animations - may slow frame rate a little
  smooth();
  // Initialize the size of the window
  size(COURT_WIDTH, COURT_HEIGHT);
  // Create the keyboard object
  keyboard = new Keyboard();
  // Create the player's bats
  leftBat = new Bat(LEFT_BAT_X_POSITION, COURT_HEIGHT/2, 100);
  rightBat = new Bat(RIGHT_BAT_X_POSITION, COURT_HEIGHT/2, 100);
  // Create the ball object
  ball = new Ball();
  // Set the initial scores to zero
  leftScore=0;
  rightScore=0;
}

// Event called whenever a key is pressed: inform the keyboard object
void keyPressed() {
  if (key<256) keyboard.keyPressed(key);
}

// Event called whenever a key is released: inform the keyboard object
void keyReleased() {
  if (key<256) keyboard.keyReleased(key);
}

// Helper method to see if a goal has been scored
// Returns -1 if left player's goal was hit,
// +1 if right player's goal hit,
// 0 otherwise
int checkGoal() {
  if (ball.getPosX()<0) return -1;
  else if (ball.getPosX()>COURT_WIDTH) return 1;
  else return 0;
}

// Draw method
void draw() {
  // Clear the background
  background(0);
  // Draw the bats
  leftBat.draw();
  rightBat.draw();
  // Draw the ball
  ball.draw();
  // Display the score
  textSize(32);
  textAlign(LEFT);
  text(leftScore, 0, COURT_HEIGHT-32);
  textAlign(RIGHT);
  text(rightScore, COURT_WIDTH, COURT_HEIGHT-32);
  // Draw the center line
  noFill();
  stroke(255);
  strokeWeight(2);
  line(COURT_WIDTH/2, 0, COURT_WIDTH/2, COURT_HEIGHT);
  // Accelerate the bats if a key is being pressed, decellerate if no keys are pressed
  // Accelerate/decelerate the left bat
  if (keyboard.isKeyDown(BAT_LEFT_UP)) leftBat.accelerateUp();
  else if (keyboard.isKeyDown(BAT_LEFT_DOWN)) leftBat.accelerateDown();
  else leftBat.deccelerate();
  // Accelerate/decelerate the right bat
  if (keyboard.isKeyDown(BAT_RIGHT_UP)) rightBat.accelerateUp();
  else if (keyboard.isKeyDown(BAT_RIGHT_DOWN)) rightBat.accelerateDown();
  else rightBat.deccelerate();
  // Move the bats for the next frame
  leftBat.move();
  rightBat.move();
  // Move the ball for the next frame
  ball.move();
  // Check for bat/ball collisions
  ball.checkCollision( leftBat );
  ball.checkCollision( rightBat );
  // Check to see if a goal has been scored
  int goalScoredCode=checkGoal();
  // If a goal has been scored, update the score and create a new ball
  if (goalScoredCode==1) leftScore++;
  else if (goalScoredCode==-1) rightScore++;
  if (goalScoredCode!=0) ball=new Ball();
}

