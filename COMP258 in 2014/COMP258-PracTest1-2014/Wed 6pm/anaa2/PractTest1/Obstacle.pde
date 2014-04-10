class Obstacle {
  
   // The position of the token
  public PVector position;
  
  // The size of the token
  public int size;

  // The colour of the token
  public color obstacleColour;
  
  // A constructor for the obstacle
   public Obstacle(color obstacleColour, float x, float y) {
    this.obstacleColour=obstacleColour;
    position = new PVector(x, y);
    size = 400;
  
  }
  
   public void draw() 
   {
    rectMode(CENTER);
    //rectangle
    fill(obstacleColour); 
    rect(position.x, position.y, size, size);
   }
   
   public boolean pointInObstacle (float x, float y)
   {
     PVector point_ = new PVector(x,y);
     float distance = point_.dist(position);
     if (distance<=size) return false;
     else return true;
   }
  
}
