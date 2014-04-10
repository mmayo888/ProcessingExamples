
class Obstacle {


// Setup method
void setup() {
  // Create Obstacle
  redObstacle=createObstacle(150, 200, #FF0000);
  // The colour of the Obstacle
  public color ObstacleColour;

  // The position of the Obstacle
  public PVector position;

  // The size of the Obstacle
  public int size;


  // The weight of the Obstacle
  public int ObstacleStrokeWeight;
  public int ObstacleStrokeHeight;

  // A constructor for the Obstacle
  public Obstacle(color ObstacleColour, float x, float y) {
    this.ObstacleColour=ObstacleColour;
    position = new PVector(x, y);
    size = 100;
    ObstacleStrokeWeight = 20;
  }
   // Draw method
void draw() { 

  // Do think with the rectangle if there is one
  if (rectangle!=null) {
    // Draw the rectangle
    rectangle.draw();
 
  }
  }
  
  // Mouse click method
void mousePressed() {
  // Create a single rectangle
  rectangle = new Rectangle();
  }
}

