class Obstacle
{
  private PVector _position;
  private PVector _size;
  private color _colour;
  
  public Obstacle(int x, int y, int oWidth, int oHeight)
  {
    _position = new PVector(x, y);
    _size = new PVector(oWidth, oHeight);
    _colour = #E80505;
  }
  
  public void draw()
  {
    fill(_colour);
    rect (_position.x, _position.y, _size.x, _size.y);
  }
  
  public boolean pointInObstacle(int xMouse, int yMouse)
  {  
   return xMouse>=_position.x && xMouse<=_position.x+_size.x && yMouse>=_position.y && yMouse<=_position.y+_size.y; 
  }
}
 
