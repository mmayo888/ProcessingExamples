class Obstacle
{
  
  private PVector posV;
  private PVector hwV;
  color oColor;
  
  public Obstacle(int x,int y,int w,int h,color c)
  {
     posV = new PVector (x,y);
     hwV = new PVector (w,h);
    oColor = c;
  }
  
  
  void draw()
  {
    fill(oColor);
    rect(posV.x,posV.y,hwV.x,hwV.y);
    
    
  }
  
  public boolean pointInObstacle(float x, float y)
  {
    PVector mousePoint = new PVector(x,y);
    float d = mousePoint.dist(posV);
    if (d<=posV.x/20) return true;
    else return false;
  }
}
