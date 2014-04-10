//Rebekka Marsh
//1162352
//PracTest1_PartA



// References to the start and finish tokens
Token startToken, finishToken;

//References to the obstacle
Obstacle obstacle1;

// A reference to the trail (line) to be drawn by the user
Trail trail;

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
  //initialises the obstacle
  //generates random x and y pos based on sketch width and height, generates random width and heights, and also random colour
  obstacle1 = new Obstacle(int(random(100, width-100)), int(random(100, height -100)), int(random(100,300)), int(random(20,100)), color(random(255), random(255), random(255))); 
}

// Draw method
void draw() 
{
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  // Draw the trail if it has been created
  if (trail!=null)
  {
    trail.draw();
  }

  obstacle1.drawObstacle();
}

// Mouse down method
// When the mouse is pressed, start drawing the trail
void mousePressed()
{
  // Create the trail only if the mouse was pressed inside the start token
  if (startToken.pointInToken(mouseX, mouseY))
    trail = new Trail();
}

// Mouse down method
// When the mouse is pressed, and the trail is being drawn, continue drawing it
void mouseDragged()
{
  //calls pointInObstacle method in obstacle class to check if the mouse point is in the obstacle
  boolean notOnObstalce = obstacle1.pointInObstacle(mouseX, mouseY);
  //if the trail is not null and the point is not on the obstacle
  if (trail!=null && notOnObstalce != true ) 
  {
    //draws trail
    trail.addPoint(mouseX, mouseY);
  }
  //else sets the trail to null and produces a gameover message
  else
  {
    println("Uh-oh, GAMEOVER.  You can't draw over an obstacle");
    trail=null;
  }
}

// Mouse release event
// When the mouse is released, and the trail is being drawn, stop drawing it
// Check to see if the finish token was reached
void mouseReleased() 
{
  if (trail!=null) 
  {
    // Check to see if the user has succeeded or failed
    if (finishToken.pointInToken(mouseX, mouseY)) 
    {
      println("Well done! You succeeded!");
    }
    else
    { 
      println("hmmm you failed to reach the finish....");
      // Dispose of the current trail
    }
    trail=null;
  }
}

