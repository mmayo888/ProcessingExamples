class Obstacle {

 
  // The colour of the Obstacle
  public color ObstacleColor;

  // The position of the Obstacle
  public PVector position;

  // The size of the Obstacle
  public float ObWidth;
  public float ObHeight;
 
  // The weight of the Obstacle's border
  public int ObstacleStrokeWeight;

  // A constructor for the Obstacle
  public Obstacle(color ObstacleColour, float x, float y) {
    ObstacleColor = 000000;
    this.ObstacleColor=ObstacleColor;
    
    position = new PVector(x, y);
    float ObWidth = 300;
    float ObHeight = 100;    
    position.x = width/2;
    position.y = height - 200;
    
  }

  // Draw method for the Obstacle
  public void draw() {
    fill(ObstacleColor);
    rect(position.x, position.y, ObWidth, ObHeight);
   
   
  }
//  
//  // Method to check to see whether a point lies on this Obstacle
//  // Returns true if the point is inside the Obstacle
//  public boolean pointInObstacle(float x, float y){
//    PVector point = new PVector(x,y);
//    float distance = point.dist(position);
//    if (distance<=size/2) return true;
//    else return false;



