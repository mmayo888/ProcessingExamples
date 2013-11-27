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

// Array of boolean flags, one per key, used to detect if a key is being pressed
boolean[] keysDown;

// Bat objects that the player's control
Bat batRed, batBlue;

// Ball object
Ball ball;

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
  batRed  = new Bat(#ED1111, 0, SKETCHPAD_WIDTH, 50, 100, 20, 1);
  batBlue = new Bat(#4249FA, 0, SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT - 50, 100, 20, 1);
  println( batRed );   // debugging
  println( batBlue );  // debugging
  // Create the ball object
  ball = new Ball(#3BAA1A, 20, 0, SKETCHPAD_WIDTH, 0, SKETCHPAD_HEIGHT);
  println( ball );
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
  // Move the bats if an appropriate key is pressed
  if (keysDown['z']) batRed.moveLeft();
  if (keysDown['c']) batRed.moveRight();
  if (keysDown['1']) batBlue.moveLeft();
  if (keysDown['3']) batBlue.moveRight();
  // Move the ball
  ball.move();
  // Check for collisions between the bats and the ball, reversing the vertical velocity of the ball
  // if there is a collision
  if (batRed.isColliding( ball ) || batBlue.isColliding( ball )) {
    // Create a new velocity for the ball
    PVector newBallVelocity = new PVector( ball.getVelocity().x, -1 * ball.getVelocity().y ); 
    // Set the new velocity
    ball.setVelocity( newBallVelocity );
  } 
  // Check to see if the ball is still within the vertical bounds of the screen.
  // If it is not, it means that a new ball should be created
  switch ( ball.verticalPositionRelativeToBounds() ) {
     case 1: 
     case -1:
       ball = new Ball(#3BAA1A, 20, 0, SKETCHPAD_WIDTH, 0, SKETCHPAD_HEIGHT);
       break;
  } 
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


