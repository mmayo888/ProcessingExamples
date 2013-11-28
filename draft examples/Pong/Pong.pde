/* Pong
 * Author: Michael Mayo
 *
 * This program demonstrates how to design and use multiple classes in a single program.
 * Each class encapsulates one part of the program. There are two classes: Bat and Ball.
 *
 * This version of the program does not keep a score or have any other frills; it merely 
 * handles the state and mechanics of the game.
 *
 */


// Constants defining size of the sketchpad
final int SKETCHPAD_WIDTH  = 600;
final int SKETCHPAD_HEIGHT = 600;

// Constants defining common colours
final color RED            = #ED1111;
final color GREEN          = #3BAA1A;
final color BLUE           = #4249FA;

// Constants defining sizes of the bats, ball etc
final float BALL_SIZE      = 20;
final float BAT_WIDTH      = 100;
final float BAT_HEIGHT     = 5;

// Array of boolean flags, one per key, used to detect if a key is being pressed
boolean[] keysDown;

// Bat objects that the player's control
Bat batRed, batBlue;

// Ball object
Ball ball;

// Scores for the players
int scoreRed, scoreBlue;

/*
 * Setup method
 *
 */

void setup() {
  // Setup the width and height of the sketchpad
  size( SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT );
  // Setup the array of boolean flags for the keys
  keysDown = new boolean[ 256 ];
  // Create the bat objects
  batRed  = new Bat(RED, 0, SKETCHPAD_WIDTH, 50, BAT_WIDTH, BAT_HEIGHT, 4);
  batBlue = new Bat(BLUE, 0, SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT - 50, BAT_WIDTH, BAT_HEIGHT, 4);
  // Create the ball object
  ball = new Ball(GREEN, BALL_SIZE, 0, SKETCHPAD_WIDTH, 0, SKETCHPAD_HEIGHT);
}

/*
 * Draw method
 *
 */

void draw() {
  // Erase the background
  background(0);
  // Draw the bats
  batRed.draw();
  batBlue.draw();
  // Draw the ball
  ball.draw();
  // Draw the score
  textSize(32);
  fill(RED);
  textAlign(LEFT);
  text(""+scoreRed, 0, SKETCHPAD_HEIGHT/2);
  fill(BLUE);
  textAlign(RIGHT);
  text(""+scoreBlue, SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT/2);
  // Move the bats if an appropriate key is pressed
  if (keysDown['z']) batRed.moveLeft();
  if (keysDown['c']) batRed.moveRight();
  if (keysDown['1']) batBlue.moveLeft();
  if (keysDown['3']) batBlue.moveRight();
  // Move the ball
  ball.move();
  // Check for collisions between the bats and the ball, reversing the vertical velocity of the ball
  // if there is a collision
  PVector newBallVelocity = new PVector( ball.getVelocity().x, ball.getVelocity().y );
  boolean collisionWithRedBat = batRed.isColliding(ball);
  boolean collisionWithBlueBat = batBlue.isColliding(ball);
    // If the ball hits the red bat, it changes velocity so it goes down
  if (collisionWithRedBat)
    newBallVelocity.y = abs( ball.getVelocity().y );
  // If it hits the blue back, the ball goes up
  if (collisionWithBlueBat)
    newBallVelocity.y = -1 * abs( ball.getVelocity().y );
  // Set the new velocity
  if (collisionWithRedBat || collisionWithBlueBat) {
    // Set the new velocity and move the ball away from the bat
    ball.setVelocity( newBallVelocity );
    ball.move();
  }
  // Check to see if the ball is still within the vertical bounds of the screen.
  // If it is not, it means that a new ball should be created
  int boundsFlag = ball.verticalPositionRelativeToBounds();
  // Is the ball beyond the top of the screen?
  if (boundsFlag==-1) scoreBlue++;
  // Is the ball beyond the bottom of the screen?
  if (boundsFlag==1) scoreRed++;
  // Create a new ball
  if (boundsFlag!=0) 
    ball = new Ball(#3BAA1A, 20, 0, SKETCHPAD_WIDTH, 0, SKETCHPAD_HEIGHT);
}

/*
 * Keypress event handlers
 *
 */

// Event called whenever a key is pressed: we want to record this in the keysDown flag array
void keyPressed() {
  if (key<256) keysDown[key] = true;
}

// Event called whenever a key is released: we want to record this in the keysDown flag array
void keyReleased() {
  if (key<256) keysDown[key] = false;
}

