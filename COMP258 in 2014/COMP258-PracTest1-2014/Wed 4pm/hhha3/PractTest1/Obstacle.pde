class Obstacle


{


  // The colour of the token
  public color ObstacleColour;
  public color ObstacleColour1;

  // The position of the token
  public PVector positions;

  // The size of the token
  public int size;


  // A constructor for the token
  public Obstacle(color ObstacleColour1, float x, float y) {
 
    this.ObstacleColour=ObstacleColour;
    positions = new PVector(x, y);
    size = 200;
    
  }

  // Draw method for the token
  public void draw() {
    // Draw the border
    ellipseMode(CENTER);
    stroke(ObstacleColour);
  
   
    rect(positions.x, positions.y, size, size);
  
  
    fill(ObstacleColour1);
    
  }
  
  // Method to check to see whether a point lies on this token
  // Returns true if the point is inside the token
  public boolean pointInToken(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(positions);
    if (distance<=size/2) return true;
    else return false;
  }




}
