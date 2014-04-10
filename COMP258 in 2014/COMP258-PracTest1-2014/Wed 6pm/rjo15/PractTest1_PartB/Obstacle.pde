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
}
