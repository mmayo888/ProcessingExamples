class Obstacle {
 public PVector position;
 public int size;
 public color obstacleColor;
 
   //Constructor
  public Obstacle (int x, int y, color obstacleColor)
  {
    position = new PVector (x, y);
    size = 50;
    this.obstacleColor = obstacleColor;
  }
  
  //Draw method
    public void drawObstacle() 
  {
    rectMode(CENTER);
    fill(obstacleColor);
    rect(position.x, position.y, size, size);
  }
  
  //Method to check to see whether a point lies on this obstacle - can't get this to work!!!! :|
  public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size/2) return true;
    else return false;
  }
}

