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
Button buttonGreat, buttonAwesome;

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
  buttonGreat = new Button(1, "Great!", 20, 100, 550, 100, 30);
  buttonAwesome = new Button(2, "Awesome!", 20, 500, 550, 100, 30);
}

// Draw method
void draw() {
  // Clear background
  background(0);
  // Check the location of mouse, and update button states if the
  // mouse if hovering over a button
  if (buttonGreat.pointInRect(mouseX, mouseY))
    buttonGreat.mouseIsOver();
  else buttonGreat.mouseIsNotOver();
  if (buttonAwesome.pointInRect(mouseX, mouseY))
    buttonAwesome.mouseIsOver();
  else buttonAwesome.mouseIsNotOver();
  // Draw some controls...
  labelTitle.draw();
  labelSubTitle1.draw(); 
  labelSubTitle2.draw();
  labelSubTitle3.draw(); 
  labelSubTitle4.draw();
  buttonGreat.draw();
  buttonAwesome.draw();
}

// Mouse press handling event for mouse presses
void mousePressed() {
  // If the mouse is pressed, we need to check to see if the press affects the buttons
  if (buttonGreat.pointInRect(mouseX, mouseY))
    buttonGreat.mouseIsPressed();
  if (buttonAwesome.pointInRect(mouseX, mouseY))
    buttonAwesome.mouseIsPressed();
}

// Mouse press handling event for mouse releases
void mouseReleased() {
  // If the mouse is pressed, we need to check to see if the press affects the buttons
  if (buttonGreat.pointInRect(mouseX, mouseY))
    buttonGreat.mouseIsReleased();
  if (buttonAwesome.pointInRect(mouseX, mouseY))
    buttonAwesome.mouseIsReleased();
}

