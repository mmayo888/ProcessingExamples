class Obstacle
{
  private PVector _pos;
  private PVector _size;
  private color _obColour;

  public Obstacle(int x, int y, //int _x, int _y, 
  color obColour)
  {
    _pos = new PVector(x, y);
    _size = new PVector(x, y);
    _obColour = obColour;
  }

  public void draw()
  {
    rectMode(CENTER);
    fill(_obColour);
    rect(_pos.x, _pos.y, _size.x, _size.y);
  }

  public boolean pointInObstacle(float x, float y)
  {
    PVector point = new PVector(x, y);
    float distance = point.dist(_pos);
    if (distance<=_size.y/2 + _size.x)
    {
      return true;
    }
    else
    {
      
      return false;
    }
  }
}

