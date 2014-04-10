class Obstacle
{
  public color obstacleColour;
  public PVector position, size;
  
    public Obstacle (color obstacleColour ,float x, float y, float h, float w)
   {
    this.obstacleColour=obstacleColour;
    position = new PVector(x, y);
    size = new PVector(h, w);
    
   } 
   
   public void draw()
 {
    rect(position.x, position.y, size.x, size.y);
    fill(obstacleColour);
 }  
 
 public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);   
    if (distance<=size.y)  return true;
    else return false;
    
  }
  
}
