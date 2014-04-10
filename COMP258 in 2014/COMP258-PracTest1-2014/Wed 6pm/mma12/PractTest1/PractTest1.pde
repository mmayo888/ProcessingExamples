
// References to the start and finish tokens
Token startToken, finishToken;

// A reference to the trail (line) to be drawn by the user
Trail trail;
//
Maze obstacle1,obstacle2,obstacle3,obstacle4,obstacle5,obstacle6;

Obstacle obstacle;
// Setup method
void setup() {
  // Set the size of the sketch to quite large
  size(800, 800);
  
  obstacle1 = new Maze(700,700,100);
  obstacle2 = new Maze(300,200,50);
  obstacle2.fill=#000000;
   obstacle3 = new Maze(200,150,75);
   obstacle3.fill=#000000;

   obstacle4 = new Maze(400,400,100);
  obstacle4.fill=#000000;
 obstacle5 = new Maze(600,600,50);
  obstacle5.fill=#000000;
 
 obstacle6 = new Maze(500,500,60);
  obstacle6.fill=#000000;
 
  // Create the start and finish tokens
  startToken = new Token("Start", #208E0B, 100, height/2);
  finishToken = new Token("Finish", #8E1F0B, 700, height/2);
  obstacle = new Obstacle("lklgkh",#000000,60,height);
  // Initialise the trail to null
  trail = null;
}

// Draw method
void draw() {
  // White background
  background(255);
  
  obstacle1.draw();
   obstacle2.draw();
    obstacle3.draw();
     obstacle4.draw();
  obstacle5.draw();
  obstacle6.draw();
  // Draw the start and Obstacle
 obstacle.draw();
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
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
    else 
      println("hmmm you failed to reach the finish....");
    // Dispose of the current trail
    trail=null;
  }

   
   
}

