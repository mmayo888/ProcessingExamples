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

// Example object references
Label labelTitle, labelSubTitle1, labelSubTitle2, labelSubTitle3, labelSubTitle4;
Button buttonGreat, buttonAwesome;

void setup() {
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create some example objects
  labelTitle = new Label("OO Programming in Processing", 30, SKETCH_WIDTH/2, 100, CENTER, #FF0000);
  labelSubTitle1 = new Label("1. Learn Processing Syntax", 200, 200);
  labelSubTitle2 = new Label("2. Learn Class Design", 200, 300);
  labelSubTitle3 = new Label("3. Create Classes & Objects", 200, 400);
  labelSubTitle4 = new Label("4. Practice, practice, practice!", 200, 500);
  buttonGreat = new Button("Great!", 20, 100, 550, #0000FF);
  buttonAwesome = new Button("Awesome!", 20, 500, 550, #0000FF);
}

void draw() {
  // Clear background
  background(0);
  // Draw some controls...
  labelTitle.draw();
  labelSubTitle1.draw(); 
  labelSubTitle2.draw();
  labelSubTitle3.draw(); 
  labelSubTitle4.draw();
  buttonGreat.draw();
  buttonAwesome.draw();
}

void mousePressed() {
  if (buttonGreat.mouseIsOver()) println("Great!");
  if (buttonAwesome.mouseIsOver()) println("Awesome!");
}

