//Reference a maze
Maze m;

// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  // Initialise the trail to null
  trail = null;
  
  //Create a maze
  m = new Maze();
  //Add obstacles to the maze
  m.addObstacle(25,25,1600,50);
  m.addObstacle(height-25,width-25,1600,50);
  m.addObstacle(200,100,25,600);
  m.addObstacle(500,100,25,600);
  m.addObstacle(300,600,25,600);
  m.addObstacle(600,600,25,600);  
  
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  // Draw the maze
  m.draw();
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
    // If the mouse is moved over the obstacle
    if (m.checkForObstacleCollision(mouseX, mouseY))
    {
      // Send a message to the console
      println("You have crashed into the obstacle");
      // Reset the trail
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

