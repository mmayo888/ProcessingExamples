
//creating a variable to 
//public PVector _point;

//creating the obstacle class
class Obstacle
{
  public int _xpos,_ypos;
  public PVector _sizeX;
  public PVector _sizeY;
  public color _ObColor;
  
}

//Creating the constructor for the obstacle class
    public Obstacle (int xpos, int ypos, PVector sizeX, PVector sizeY, color ObColor)
  {
    sizeX = new PVector(_sizeX);
    sizeY = new PVector(_sizeY);
    xpos = new int (_xpos);
    ypos = new int (_ypos);
   ObColor = new color(_ObColor);
   
  }
  


public void draw()
{
 rectMode (CENTER);
fill(_ObColor);
strokeWeight(2);
rect(_xpos,_ypos,_sizeX,_sizeY);

}

//method to tell if the point is inside the rectnagle object

  // Helper method to determine if a point (x,y) lies inside
  // this control
  private boolean pointInObstacle(int _xpos, int _ypos) 
  {
    return _xpos>=position.x-_sizeX/2 && _xpos<=position.x+_sizeX/2
      && _ypos>=position.y-_sizeY/2 && _ypos<=position.y+_sizeY/2;
  }
  
      
   


