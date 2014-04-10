//A class represent the obstacle

class Obstacle
{
  //Declare the variables
  public PVector _pos;
  public PVector _size;
  public color _color;
  
  //A constructor for obstacle
  public Obstacle(int posX, int posY, int sizeX, int sizeY, color oColor)
  {
    _pos = new PVector(posX, posY);
    _size = new PVector(sizeX, sizeY);
    _color = oColor;
  }
  
  //draw method for drawing the obstacle
  public void drawObstacle()
  {
    rectMode(CENTER);
    fill(_color);
    noStroke();
    rect(_pos.x, _pos.y, _size.x, _size.y);
  }
  
  //Method to check to see whether a point lies on the obstacle
  // Returns true if the point is inside the obstacle
  public boolean pointInObstacle(float x, float y)
  {
    PVector P = new PVector(x,y);
    float d1 = P.dist(_pos);
    float d2 = _size.dist(_pos);
    if(d1 <= d2)return true;
    else return false;
  }
}
