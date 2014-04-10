class Obstacle
{

  public PVector _oPosition;
  public PVector _size;
  public color _oColor;

  public Obstacle(color oColor, float x, float y, float oWidth, float oHeight)
  {
    _oPosition = new PVector(x, y);
    _oColor = oColor;
    _size = new PVector(oWidth, oHeight);
  }

  public void drawObstacle()
  {
    rect(_oPosition.x, _oPosition.y, _size.x, _size.y );
  }

//  public boolean pointInObstacle(int x, int y)
//  {
//    PVector point = new PVector(x, y);
//    float distance = point.dist(_size);
//    if (distance>=_size) return true;
//    else return false;
//  }
}

