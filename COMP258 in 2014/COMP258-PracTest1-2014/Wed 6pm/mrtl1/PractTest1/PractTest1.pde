
// References to the start and finish tokens
Token startToken, finishToken;
//Reference to the obstacle
Obstacle ob1, ob2, ob3, ob4, ob5, ob6;
//Reference to the maze
Maze m;

// A reference to the trail (line) to be drawn by the user
Trail trail;

// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  //Create an obstacle
  ob1 = new Obstacle(100, 200, #999999);
  ob2 = new Obstacle(250, 450, #888888);
  ob3 = new Obstacle(300, 250, #777777);
  ob4 = new Obstacle(100, 500, #666666);
  ob5 = new Obstacle(450, 200, #555555);
  ob6 = new Obstacle(600, 100, #444444);
  //Create the maze
  m = new Maze();
  //Create obstacles in the maze - doesn't work :|
  //m.addObstacle(50, 100, #777777);
  //m.addObstacle(50, 100, #555555);
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
  //Draw the obstacles
  ob1.drawObstacle();
  ob2.drawObstacle();
  ob3.drawObstacle();
  ob4.drawObstacle();
  ob5.drawObstacle();
  ob6.drawObstacle();
  //Draw the maze
  m.drawMaze();
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
}

// Mouse release event
// When the mouse is released, and the trail is being drawn, stop drawing it
// Check to see if the finish token was reached
void mouseReleased() {
  if (trail!=null) {
    // Check to see if the user has succeeded or failed
    if (finishToken.pointInToken(mouseX, mouseY)) 
      println("Well done! You succeeded!");
    // Check to see if the user finished in an obstacle - can't get this to work!! :|
    //else if (finishToken.pointInObstacle(mouseX, mouseY))
    //printlin("You hit an obstacle!");
    else 
      println("hmmm you failed to reach the finish....");
    // Dispose of the current trail
    trail=null;
  }
}

