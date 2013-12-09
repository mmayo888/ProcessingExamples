/*
 * Controls
 * Author: Michael Mayo
 *
 * Demonstrates how to create your own simple UI controls.
 * Illustrates encapsulation and class design.
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;

// Unique IDs for the buttons
public final int BUTTON_OK_ID            = 0;
public final int BUTTON_CANCEL_ID        = 1;


// Object references
Label labelTitle, labelSubTitle1, labelSubTitle2, labelSubTitle3, labelSubTitle4;
Button buttonOK, buttonCancel;

// Setup method
void setup() {
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create some example objects
  labelTitle = new Label("OO Programming in Processing", 30, SKETCH_WIDTH/2, 100, CENTER, #FF0000);
  labelSubTitle1 = new Label("1. Learn Processing Syntax", 200, 200);
  labelSubTitle2 = new Label("2. Learn Class Design", 200, 300);
  labelSubTitle3 = new Label("3. Create Classes & Objects", 200, 400);
  labelSubTitle4 = new Label("4. Practice, practice, practice!", 200, 500);
  buttonOK = new Button(BUTTON_OK_ID, "OK!", 20, 100, 550, 100, 30);
  buttonCancel = new Button(BUTTON_CANCEL_ID, "Cancel", 20, 500, 550, 100, 30);
}

// Method to check to see if the mouse is hovering over a button
// and update the state accordingly
void checkMouse(Button button) {
  if (button.pointInRect(mouseX, mouseY))
    button.mouseIsOver();
  else button.mouseIsNotOver();
}

// Draw method
void draw() {
  // Clear background
  background(0);
  // Check the location of mouse, and update button states if the
  // mouse if hovering over a button
  checkMouse(buttonOK);
  checkMouse(buttonCancel);
  // Draw some controls...
  labelTitle.draw();
  labelSubTitle1.draw(); 
  labelSubTitle2.draw();
  labelSubTitle3.draw(); 
  labelSubTitle4.draw();
  buttonOK.draw();
  buttonCancel.draw();
}

// Mouse press handling event for mouse presses
void mousePressed() {
  // If the mouse is pressed, we need to check to see if the press affects the buttons
  if (buttonOK.pointInRect(mouseX, mouseY))
    buttonOK.mouseIsPressed();
  if (buttonCancel.pointInRect(mouseX, mouseY))
    buttonCancel.mouseIsPressed();
}

// Mouse press handling event for mouse releases
void mouseReleased() {
  // If the mouse is pressed, we need to check to see if the press affects the buttons
  if (buttonOK.pointInRect(mouseX, mouseY))
    buttonOK.mouseIsReleased();
  if (buttonCancel.pointInRect(mouseX, mouseY))
    buttonCancel.mouseIsReleased();
}

