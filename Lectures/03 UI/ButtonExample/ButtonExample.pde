
// Declare a reference to a button
Button exampleButton;

// Setup method
void setup(){
  size(600,600);
  // Create a button
  exampleButton = new Button(width/2, height/2, 200, 75);
}

// Draw method
void draw(){
  // Clear screen
  background(127);
  // Draw the button
  exampleButton.draw();
}

// Pass mouse events to the button
void mousePressed(){
   exampleButton.clickStart(mouseX, mouseY); 
}
void mouseReleased(){
   exampleButton.clickEnd(mouseX, mouseY); 
}

// Handler that is called whenever the example button is clicked
void exampleButtonClicked() {
   println("example button clicked"); 
}
