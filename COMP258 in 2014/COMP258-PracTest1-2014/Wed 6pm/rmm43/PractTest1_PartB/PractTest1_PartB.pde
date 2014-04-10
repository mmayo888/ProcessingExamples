//Rebekka Marsh
//1162352
//PracTest1_PartB




// References to the start and finish tokens
Token startToken, finishToken;
final int NUM_OBS = 6;
//References to the maze
Maze maze1;


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
  //initialises the maze
  maze1 = new Maze();
  //loops through and adds a new obstacle to the maze while i is less than the NUM_OBS constant (that stores the number of obstacles wanted)
  for (int i=0;i<NUM_OBS; i++)
  {
    //adds new obstacle to maze
    maze1.addObstacle(int(random(100, width-100)), int(random(100, height-100)),int(random(20,200)),int(random(20,200)));
    //lots of ugly code that checks if the obstacle is going to overlap either the start or finish token
//    int ran_x = int(random(50, width-100));
//    int ran_y = int(random(50, height-100));
//    int ran_w = int(random(20,200));
//    int ran_h = int(random(20,200));
//     if(ran_x - ran_w/2 < startToken.position.x || ran_x+ran_w/2 > startToken.position.x || ran_y-ran_h/2 < startToken.position.y || ran_y+ran_h/2 > startToken.position.y ||ran_x-ran_w/2 < finishToken.position.x || ran_x+ran_w/2 > finishToken.position.x || ran_y-ran_h/2 < finishToken.position.y || ran_y+ran_h/2 > finishToken.position.y) 
//     {
//           maze1.addObstacle(ran_x, ran_y,ran_w,ran_h);
//              println("yay drawn");
//     }
//     else if (ran_x-ran_w/2 < startToken.position.x || ran_x-ran_w/2 < finishToken.position.x)
//     {
//       ran_x -= ran_w + 10;
//       maze1.addObstacle(ran_x, ran_y,ran_w,ran_h);
//       println("x decreased");
//       
//     }
//     else if(ran_x+ran_w/2 > startToken.position.x || ran_x+ran_w/2 > finishToken.position.x)
//     {
//       ran_x += ran_w + 10;
//       maze1.addObstacle(ran_x, ran_y,ran_w,ran_h);
//       println("x increased");
//     }
//      else if (ran_y-ran_h/2 < startToken.position.y || ran_y-ran_h/2 < finishToken.position.y)
//     {
//       ran_y -= ran_h + 10;
//       maze1.addObstacle(ran_x, ran_y,ran_w,ran_h);
//       println("y decreased");
//     }
//     else if(ran_y+ran_h/2 > startToken.position.y || ran_y+ran_h/2 > finishToken.position.y)
//     {
//       ran_y += ran_h + 10;
//       maze1.addObstacle(ran_x, ran_y,ran_w,ran_h);
//       println("y increased");
 //    }
  }
}


// Draw method
void draw() 
{
  // White background
  background(255);
  //calls draw Maze method on the maze object
  maze1.drawMaze();
  // Draw the start and finish tokens
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
  boolean notOnObstalce = maze1.checkForObstacleCollision(mouseX, mouseY);
  //if the trail is not null and the point is not on the obstacle
  if (trail!=null && notOnObstalce != true) 
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


