/*
 * ControlCollection
 * Author: Michael Mayo
 *
 * Demonstrates how to create your own simple UI controls.
 * Illustrates collections of objects.
 */

// Useful constants
// Sketch dimensions
public final int SKETCH_WIDTH            = 300;
public final int SKETCH_HEIGHT           = 450;

// Button and text sizes
public final int BUTTON_SIZE = 50;
public final int TEXT_SIZE = 40;

// Number of characters in a pin number
public final int PIN_SIZE = 4;

// The PIN number itself, stored as a string, and the correct PIN
String pinCode, correctPinCode="8549";

// Reference to an arraylist of buttons
ArrayList<Button> keypadButtons;

// Reference to the ENTER button
Button enterButton;

// Setup method
void setup() {
  // Set the size of the sketch
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create the arraylist of buttons
  keypadButtons = new ArrayList<Button>();
  // Create the buttons to go into the arraylist
  keypadButtons.add( new Button("1", TEXT_SIZE, SKETCH_WIDTH/2-2*BUTTON_SIZE, 150, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("2", TEXT_SIZE, SKETCH_WIDTH/2, 150, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("3", TEXT_SIZE, SKETCH_WIDTH/2+2*BUTTON_SIZE, 150, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("4", TEXT_SIZE, SKETCH_WIDTH/2-2*BUTTON_SIZE, 225, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("5", TEXT_SIZE, SKETCH_WIDTH/2, 225, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("6", TEXT_SIZE, SKETCH_WIDTH/2+2*BUTTON_SIZE, 225, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("7", TEXT_SIZE, SKETCH_WIDTH/2-2*BUTTON_SIZE, 300, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("8", TEXT_SIZE, SKETCH_WIDTH/2, 300, BUTTON_SIZE, BUTTON_SIZE) );
  keypadButtons.add( new Button("9", TEXT_SIZE, SKETCH_WIDTH/2+2*BUTTON_SIZE, 300, BUTTON_SIZE, BUTTON_SIZE) );
  // Create the enter button
  enterButton = new Button("ENTER", TEXT_SIZE, SKETCH_WIDTH/2, 375, 5 * BUTTON_SIZE, BUTTON_SIZE);
  // Initialize the pin number to nothing
  pinCode="";
}

// Draw method
void draw() {
  // Clear background
  background(0);
  // Check the keypad button states
  for (int index=0; index<keypadButtons.size(); index++)
    // If the current keypad buton was pressed...
    if (keypadButtons.get(index).updateState()) {
      // Inform the console
      println("keypad button with value "+(index+1)+" pressed!");
      // Update the pinCode string
      pinCode+=(index+1);
      // Limit the pincode length to the maximum
      if (pinCode.length()>PIN_SIZE) pinCode=pinCode.substring(1);
    }
  // Check the enter button states
  // If the enter button was pressed...
  if (enterButton.updateState()) {
    // Inform the console
    println("ENTER pressed!");
    // Check the pin code for correctness
    if (pinCode.compareTo(correctPinCode)==0) {
      println("correct PIN entered");
    } 
    else
      println("wrong PIN number, sorry :(");
  }
  // Draw the PIN code
  Label pinCodeLabel = new Label(pinCode, 100, 25, 100, LEFT, #FF0000);
  pinCodeLabel.draw();
  // Draw the keypad buttons
  for (Button button: keypadButtons)
    button.draw();
  // Draw the ENTER button
  enterButton.draw();
}

