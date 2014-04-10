
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

Maze maze;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);  
  maze = new Maze();
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  maze.addObstacle(400,400,200,50);
  maze.addObstacle(500,500,100,200);
  maze.addObstacle(100,50,300,100);
  maze.addObstacle(600,200,50,200);
  maze.addObstacle(700,100,150,50);
  maze.addObstacle(600,400,100,100);
  maze.addObstacle(500,300,200,50);
  maze.addObstacle(100,600,50,200);
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
    trail.addPoint(mouseX, mouseY);
    
  if (maze.checkForObstacleCollsion(mouseX, mouseY))
  {
    trail=null; 
    println("Game over!");
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

