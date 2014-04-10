
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;
//Single Maze Object
Maze _maze;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  _maze = new Maze();
  _maze.addObstacle(500, 500, 300, 100);
  _maze.addObstacle(300, 0, 100, 300);
  _maze.addObstacle(300, 350, 100, 100);
  _maze.addObstacle(200, 600, 200, 100);
  //Borders
  _maze.addObstacle(0, 0, 800, 50);
  _maze.addObstacle(0, 0, 50, 800);
  _maze.addObstacle(0, 750, 800, 50);
  _maze.addObstacle(750, 0, 50, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  // Initialise the trail to null
  trail = null;
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  _maze.drawMaze();
  startToken.draw();
  finishToken.draw();
  // Draw the trail if it has been created
  if (trail!=null)
  {
    trail.draw();
  }
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
  
   if  (_maze.checkForObstacleCollision(mouseX, mouseY) == false)
   {
          if (trail!=null) 
          {
          trail.addPoint(mouseX, mouseY);
          }
   }
   else
  {
    println("You hit an obstacle, Game Over.");
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

