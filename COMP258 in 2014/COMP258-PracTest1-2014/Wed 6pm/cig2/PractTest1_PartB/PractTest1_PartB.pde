
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

Obstacle obstacle1;

Maze maze1;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  // Initialise the trail to null
  trail = null;
  Maze maze1 = new Maze();
  maze1.addObstacle(10, 25, 30, 80);
  maze1.addObstacle(750, 750, 50, 50);
  maze1.addObstacle(300, 0, 500, 40);
  maze1.addObstacle(100, 0, 30, 80);
  maze1.addObstacle(250, 50, 50, 50);
  maze1.addObstacle(800, 0, 50, 40);
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  maze1.draw(20, 40, 400, 60);
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
  if (maze1.checkForObstacleCollision(mouseX, mouseY))
  {
    println("Oh no! You hit the obstacle!");
    trail=null;
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

