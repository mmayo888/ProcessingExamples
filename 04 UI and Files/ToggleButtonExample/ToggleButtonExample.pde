// Size of the sketch
final int SKETCH_HEIGHT = 300;
final int SKETCH_WIDTH  = 600;


// Reference to a toggle button object
ToggleButton button;

// Setup method
void setup() {
  size(SKETCH_WIDTH, SKETCH_HEIGHT);
  // Load two images
  PImage onImage = loadImage("onState.png");
  PImage offImage = loadImage("offState.png");
  // Create the button
  button = new ToggleButton(50, 50, onImage, offImage);
}

// Draw method
void draw() {
  background(0);
  // Draw the button
  button.draw();
  // Construct a message that depends on the button's state
  String message;
  if (button.getState())
    message = "Button is ON";
  else message = "Button is OFF";
  // Display the message
  textAlign(CENTER);
  text(message, 400, 100);
  
}

// Mouse click event
void mouseClicked() {
  button.mouseClicked(mouseX, mouseY);
}

