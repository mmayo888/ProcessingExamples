
// References to the start and finish tokens
Token startToken, finishToken;
obstacle rect;
maze mazeobstacle;

// A reference to the trail (line) to be drawn by the user
Trail trail;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  
  rect = new obstacle(#F50A0A, 400, 550, 200, 50);
  
  mazeobstacle = new maze();
  mazeobstacle.addobstacle(100, 100, 100, 100);
  mazeobstacle.addobstacle(200, 200, 100, 100);
  mazeobstacle.addobstacle(300, 300, 100, 100);
  mazeobstacle.addobstacle(400, 400, 100, 100);
  mazeobstacle.addobstacle(500, 500, 100, 100);
  mazeobstacle.addobstacle(600, 600, 100, 100);
  
  // Initialise the trail to null
  trail = null;
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  // Draw the trail if it has been created
  if (trail!=null)
    trail.draw();
    
    rect.drawobstacle();
    
  rect.pointinobstacle(mouseX, mouseY);
    mazeobstacle.drawmaze();
}

// Mouse down method
// When the mouse is pressed, start drawing the trail
void mousePressed() {
  // Create the trail only if the mouse was pressed inside the start token
  if (startToken.pointInToken(mouseX, mouseY))
    trail = new Trail();
}

// Mouse down method
// When the mouse is pressed, and the trail is being drawn, continue drawing it
void mouseDragged() {
  if (trail!=null) 
    trail.addPoint(mouseX, mouseY);
    if (mouseX >= 400-100 && mouseX <= 600-100 && mouseY >= 550 && mouseY <= 600){
      trail=null;
      println("Game Over!!");
      
    }
}

// Mouse release event
// When the mouse is released, and the trail is being drawn, stop drawing it
// Check to see if the finish token was reached
void mouseReleased() {
  if (trail!=null) {
    // Check to see if the user has succeeded or failed
    if (finishToken.pointInToken(mouseX, mouseY)) 
      println("Well done! You succeeded!");
    else 
      println("hmmm you failed to reach the finish....");
    // Dispose of the current trail
    trail=null;
  }
}

