// Debug flag
final boolean DEBUG = true;

// Declare references to three sliders
Slider redSlider, greenSlider, blueSlider;

// Setup method
void setup() {
  // Set sketch size
  size(600, 600);
  // Create red slider
  redSlider=createSlider(150, 200, #FF0000);
  //if (DEBUG) println( redSlider );
  // Create green slider
  greenSlider=createSlider(150, 300, #00FF00);
  // Create blue slider
  blueSlider=createSlider(150, 400, #0000FF);
}

// Helper function for the setup() method to create a slider
public Slider createSlider(float x, float y, color colour) {
  Slider result=new Slider();
  result.minValue = 0;
  result.maxValue = 255;
  result.x = x;
  result.y = y;
  result.size = 200;
  result.colour = colour;
  result.setValue(0);
  return result;
}


// Draw method
void draw() {
  // Clear background
  background(0);
  // Draw the sliders
  redSlider.draw();
  blueSlider.draw();
  greenSlider.draw();
  // Draw the colour box
  stroke(255);
  fill( color( redSlider.getValue(), greenSlider.getValue(), blueSlider.getValue() ) );
  rectMode(CENTER);
  rect(450, 300, 200, 200);
  // Draw the HUD
  //if (DEBUG)
  //  drawHUD();
}

// Mouse events -- pass them all straight on to the sliders

void mousePressed() {
  redSlider.clickStart(mouseX, mouseY);
  greenSlider.clickStart(mouseX, mouseY);
  blueSlider.clickStart(mouseX, mouseY);
}

void mouseDragged() {
  redSlider.clickDrag(mouseX, mouseY);
  greenSlider.clickDrag(mouseX, mouseY);
  blueSlider.clickDrag(mouseX, mouseY);
}

void mouseReleased() {
  redSlider.clickEnd(mouseX, mouseY);
  greenSlider.clickEnd(mouseX, mouseY);
  blueSlider.clickEnd(mouseX, mouseY);
}

// A HUD method to assist debugging
void drawHUD() {
  textAlign(CENTER, CENTER);
  fill(255);
  text("red="+redSlider.currentValue, 100, 500);
  text("blue="+blueSlider.currentValue, 300, 500);
  text("green="+greenSlider.currentValue, 500, 500);
}

