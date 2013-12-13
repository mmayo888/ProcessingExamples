/*
 * ToggleButtonGroups
 * Author: Michael Mayo
 *
 */

// The width and height of the sketch
public final int SKETCH_WIDTH            = 600;
public final int SKETCH_HEIGHT           = 600;

// Some exampe objects
CheckBox cb1, cb2;
RadioButton rb1, rb2;

// Setup method
void setup(){
  // Set sketch size
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Create the objects
  cb1=new CheckBox(100,100,30);
  cb2=new CheckBox(200,100,30);
  cb2.set();
  rb1=new RadioButton(100,200,30);
  rb2=new RadioButton(200,200,30);
  rb2.set();
}

// Draw method
void draw(){
  // Clear background
  background(0);
  // Draw the objects
  cb1.draw();
  cb2.draw();
  rb1.draw();
  rb2.draw();
}

// Mouse click event handler
void mouseClicked(){
   cb1.mouseClicked();
   cb2.mouseClicked(); 
   rb1.mouseClicked();
   rb2.mouseClicked(); 
}
