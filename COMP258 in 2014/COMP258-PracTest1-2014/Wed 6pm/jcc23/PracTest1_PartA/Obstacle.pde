class Obstacle
{
  public color obstacleColour;
  public PVector position, size;
  
    public Obstacle (color obstacleColour ,float x, float y,float w, float h)
   {
    this.obstacleColour=obstacleColour;
    position = new PVector(x, y);
    size = new PVector(w, h);
    
   } 
   
   public void draw()
 {
    rect(position.x, position.y, size.x, size.y);
    fill(obstacleColour);
 }  
 
 public boolean pointInObstacle(float x, float y){
    PVector point = new PVector(x,y);
    float distance = point.dist(position);
    if (distance<=size.x)  return true;
    else return false;
    
  }
  
}
