/*
 * Pong
 * Author: Michael Mayo
 *
 * Implementation of a simple OO Pong game to illustrate encapsulation.
 * There are three classes:
 * -- Bat, encapsulating bat state, movement and drawing
 * -- Ball, encapsulating ball state, movement and drawing
 * -- Game, encapsulating the game mechanics
 */


// Constants defining size of the sketchpad
final int SKETCHPAD_WIDTH  = 600;
final int SKETCHPAD_HEIGHT = 600;

// The game object
Game game;

/*
 * Setup method
 *
 */
void setup() {
  // Set sketch dimensions
  size( SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT );
  // Create a new game
  game=new Game( new PVector(50, 50), new PVector( SKETCHPAD_WIDTH-100, SKETCHPAD_HEIGHT-100 ) );
}


/*
 * Draw method
 *
 */
void draw() {
  // Draw the game 
  game.draw();
}

/*
 * Keypress event handlers
 *
 */

// Event called whenever a key is pressed: inform the game object
void keyPressed() {
  game.keyPressed();
}

// Event called whenever a key is released: inform the game object
void keyReleased() {
  game.keyReleased();
}

