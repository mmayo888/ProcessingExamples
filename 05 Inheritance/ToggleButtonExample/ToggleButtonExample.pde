
// Some example objects
CheckBox cb1, cb2;
RadioButton rb1, rb2;

// Setup method
void setup() {
  // Set sketch size
  size(600, 300);
  // Create the objects
  cb1=new CheckBox(100, 100, 30, null);
  cb2=new CheckBox(300, 100, 30, "pizza");
  cb2.set();
  rb1=new RadioButton(100, 200, 30, null);
  rb1.set();
  rb2=new RadioButton(300, 200, 30, "milk");
}

// Draw method
void draw() {
  // Clear background
  background(0);
  // Draw the objects
  cb1.draw();
  cb2.draw();
  rb1.draw();
  rb2.draw();
}

// Mouse click event handler
void mouseClicked() {
  cb1.mouseClicked();
  cb2.mouseClicked(); 
  rb1.mouseClicked();
  rb2.mouseClicked();
}

