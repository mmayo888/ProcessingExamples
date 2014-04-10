//class to represent an obstacle
class Obstacle
{
  //properites for the obstacle
  public PVector _pos;
  public PVector _size;
  private color _obColour;

  //constructor to set the obstacles properties. 
  public Obstacle(int x, int y, int w, int h, color obColour)
  {
    _pos = new PVector(x, y);
    _size = new PVector(w, h);
    _obColour = obColour;
  }

  //method to draw a rectangle as an obstacle
  public void drawObstacle()
  {
    rectMode(CENTER);
    fill(_obColour);
    rect(_pos.x, _pos.y, _size.w, _size.h);
  }

  //checks if the mouse conlides with the obstacle
  public boolean pointInObstacle(float x, float y)
  {
    PVector point = new PVector(x, y);
    float distance = point.dist(_pos);
    if (distance<=_size.w/2)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}

