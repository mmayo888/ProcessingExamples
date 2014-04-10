
// References to the start and finish tokens
Token startToken, finishToken;
//reference to Obstacle class to draw the Obstacles
Meze Obstacle;

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
  //to create several obstacales by using for loop statement.
  for(int obs =1; obs <=7; obs++);
  {
    //to locate the obstacles in the sketch.
    for(int xx=1; xx<=width-100;xx++); 
    {
   for(int yy=1; yy<=width-100;yy++); 
    {
  Meze = new Obstacles ( xx,yy, 100, 100,#080000 );
  // Initialise the trail to null
  trail=null;
    }
    xx+= 100;
    yy+=100
  xx!=startToken;
  xx!=finishToken;;
  yy!=startToken;
  yy!=finishToken;
}
}

// Draw method
void draw() {
  // White background
  background(255);
  // Draw the start and finish tokens
  startToken.draw();
  finishToken.draw();
  // Draw the trail if it has been created
  if (trail!=null)
    trail.draw();
    //to call the method drawObstacle and draw obtacles on the sketch.
    Obstacle.drawObstacle();
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
    trail.addPoint(mouseX, mouseY)
    //if the mouse is over the Obstacles then the trail will be dissappeared and m
    //the a message will be printed on console.
    if (trail!=null){
    if(Obstacles.pointInObstacles(mouseX, mouseY))
    println("Game Over!!!!");
    //to delete the existing line
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



