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
  buttonOK = new Button("OK!", 20, 100, 550, 100, 30);
  buttonCancel = new Button("Cancel", 20, 500, 550, 100, 30);
}



// Draw method
void draw() {
  // Clear background
  background(0);
  // Update the state of the buttons based on what the mouse is doing
  // The updateState method returns true whenever the button was just clicked, so we can check
  // for clicks here as well
  if (buttonOK.updateState()) println("ok pressed");
  if (buttonCancel.updateState()) println("cancel pressed");
  // Draw the controls...
  labelTitle.draw();
  labelSubTitle1.draw(); 
  labelSubTitle2.draw();
  labelSubTitle3.draw(); 
  labelSubTitle4.draw();
  buttonOK.draw();
  buttonCancel.draw();
}



