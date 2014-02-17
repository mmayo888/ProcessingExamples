/*
 * Keyboard
 * 
 * A class encapsulating the keyboard for user input
 *
 */

public class Keyboard {

  // Array of boolean flags, one per key, used to detect which key(s) are being pressed
  private boolean[] keysDown;

  // Constructor
  public Keyboard() {
    // Setup the array of boolean flags to track which keys are being pressed 
    keysDown = new boolean[ 256 ];
  }

  // Method  called whenever a key is pressed: we want to record this in the keysDown flag array
  public void keyPressed(char ch) {
    keysDown[ch] = true;
  }

  // Method called whenever a key is released: we want to record this in the keysDown flag array
  public void keyReleased(char ch) {
    keysDown[ch] = false;
  }
  
  // Method used to determine if a particular key is being held down
  public boolean isKeyDown(char ch) {
     return keysDown[ ch ]; 
  }
}

