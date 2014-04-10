
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

Maze maze;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
    
  maze = new Maze();
  
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
  
  maze.draw();
  
  // Draw the trail if it has been created
  if (trail!=null)
    trail.draw();
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
  {
    trail.addPoint(mouseX, mouseY);
  
    if (maze.checkForObstacleCollision(mouseX, mouseY))
    {
      println("hmmm you failed to reach the finish....");
      trail=null;
    }
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

