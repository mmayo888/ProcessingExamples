
// References to the start and finish tokens
Token startToken, finishToken;
// Reference to the obstacle to drawn by default
Obstacle obstacle;
// A reference to the trail (line) to be drawn by the user
Trail trail;

Maze maze;



// Setup method
void setup() 
{
  // Set the size of the sketch to quite large
  size(800, 800);
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  // Initialise the trail to null
  trail = null;
  // Initialise the obstacle
  obstacle = new Obstacle(200, 500, 100, 50, #E5D327); 
}

// Draw method
void draw() 
{
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  // Draw the obstacle by using drawObstacle method
  obstacle.drawObstacle();
  // Draw the trail if it has been created
  if (trail!=null)
  {
    trail.draw();
  }
  if (maze!= null)
  {
    maze.mazeDraw(); 
  }
  maze.addObstacle(400,100);
}

// Mouse down method
// When the mouse is pressed, start drawing the trail
void mousePressed() 
{
  // Create the trail only if the mouse was pressed inside the start token
  if (startToken.pointInToken(mouseX, mouseY))
    {
      trail = new Trail();
    }
}

// Mouse down method
// When the mouse is pressed, and the trail is being drawn, continue drawing it
void mouseDragged() 
{
  if (trail!=null) 
    trail.addPoint(mouseX, mouseY);
}

// Mouse release event
// When the mouse is released, and the trail is being drawn, stop drawing it
// Check to see if the finish token was reached
void mouseReleased() 
{
  if (trail!=null) {
    // Check to see if the user has succeeded or failed
    if (finishToken.pointInToken(mouseX, mouseY)) 
      println("Well done! You succeeded!");
    else 
      println("hmmm you failed to reach the finish....");
    // Dispose of the current trail
    if (obstacle.pointInObstacle(mouseX, mouseY))
      println("Hmmm you collide on the obstacle");
    else
      println("Well done! You succeeded!");
    
    trail=null;
  }
}

