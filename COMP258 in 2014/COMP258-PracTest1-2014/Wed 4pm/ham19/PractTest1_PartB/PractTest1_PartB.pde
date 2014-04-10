// Name: Hamish Monks
// SID: 1131607

// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

// Maze reference, composed of obstacles
Maze maze;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);

  // Initialise the trail to null
  trail = null;

  // Initialise and populate the maze with obstacles
  maze = new Maze();
  // Boundary walls
  maze.addObstacle(400, 793, 800, 14);
  maze.addObstacle(400, 7, 800, 14);
  maze.addObstacle(7, 400, 14, 800);
  maze.addObstacle(793, 400, 14, 800);

  // Interior obstacles
  maze.addObstacle(400, 186.5, 25, 350);
  maze.addObstacle(200, 600, 25, 500);
  maze.addObstacle(600, 550, 400, 25); 
  maze.addObstacle(600, 313, 175, 25);
  maze.addObstacle(500, 425, 25, 250);
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();

  // Draw maze
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
  if (trail!=null) {
    if (maze.checkForObstacleCollision(mouseX, mouseY) == false) {
      trail.addPoint(mouseX, mouseY);
    }
    else {
      println("You collided with an obstacle. Game Over.");
      trail = null;
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

