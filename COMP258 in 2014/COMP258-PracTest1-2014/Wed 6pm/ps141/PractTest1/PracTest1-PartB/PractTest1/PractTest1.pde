
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;

//Maze Object declared in global scope
Maze mazeObject;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  // Initialise the trail to null
  trail = null;
  //Declare Obstacle object
  mazeObject = new Maze();
  
  //Create Obstacles inside the maze
  mazeObject.addObstacle(200,444,50,250,#000000);
  mazeObject.addObstacle(400,100,200,50,#000000);
  mazeObject.addObstacle(100,200,200,50,#000000);
  mazeObject.addObstacle(300,300,100,50,#000000);
  mazeObject.addObstacle(450,300,50,200,#000000);
  mazeObject.addObstacle(300,550,200,50,#000000);
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  mazeObject.draw();
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
    trail.addPoint(mouseX, mouseY); 
   if (mazeObject.checkForObstacleCollision(mouseX,mouseY)){
      println("GAME OVER");
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

