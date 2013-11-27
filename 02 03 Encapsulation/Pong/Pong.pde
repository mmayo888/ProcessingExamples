
// Constants defining size of the sketchpad
final int SKETCHPAD_WIDTH  = 600;
final int SKETCHPAD_HEIGHT = 600;

// Array of boolean flags, one per key, used to detect if a key is being pressed
boolean[] keysDown;

// Bat objects that the player's control
Bat batRed, batBlue;

/*
 * Setup method
 *
 */
 
void setup(){
  // Setup the width and height of the sketchpad
  size( SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT );
  // Setup the array of boolean flags for the keys
  keysDown = new boolean[ 256 ];
  // Create the bat objects
  batRed  = new Bat(#ED1111, 0, SKETCHPAD_WIDTH, 50,                    100, 20, 1);
  batBlue = new Bat(#4249FA, 0, SKETCHPAD_WIDTH, SKETCHPAD_HEIGHT - 50, 100, 20, 1);
  println( batRed );   // debugging
  println( batBlue );  // debugging
}

/*
 * Draw method
 *
 */

void draw(){
  // Erase the background
  background(0);
  // Draw the bats
  batRed.draw();
  batBlue.draw();
  // Move the bats if an appropriate key is pressed
  if (keysDown['z']) batRed.moveLeft();
  if (keysDown['c']) batRed.moveRight();
  if (keysDown['1']) batBlue.moveLeft();
  if (keysDown['3']) batBlue.moveRight();
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


