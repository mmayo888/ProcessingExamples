
// Declare a reference to a panel
NumberPanel numberPanel;

// Setup method
void setup(){
  size(300,600);
  // Create a panel
  numberPanel = new NumberPanel();
}

// Draw method
void draw(){
  // Clear screen
  background(127);
  // Draw the panel
  numberPanel.draw();
}

// Pass mouse events to the panel
void mousePressed(){
   numberPanel.clickStart(mouseX, mouseY); 
}
void mouseReleased(){
   numberPanel.clickEnd(mouseX, mouseY); 
}

