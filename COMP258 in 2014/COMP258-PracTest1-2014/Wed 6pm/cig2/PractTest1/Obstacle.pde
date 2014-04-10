class Obstacle
{
  PVector position;
  PVector size;
  color colour= #000000;
  int _positionX;
  int _positionY;
  int sizeX;
  int sizeY;

  void Obstacle(int _positionX, int _positionY, int _sizeX, int _sizeY)
  {
    position.x = _positionX;
    position.y = _positionY;
    sizeX = _sizeX;
    sizeY = _sizeY;
  }

  void draw(float _positionX, float _positionY, float _sizeX, float _sizeY)
  {
    fill(colour);
    rect(_positionX, _positionY, _sizeX, _sizeY);
  }

  public boolean pointInObstacle(float x, float y)
  {
    PVector point = new PVector(x, y);
    float xLength = point.x+sizeX;
    float yLength = point.y+sizeY;
    float sumLength = xLength+point.x
      if ((point.x>_positionX)&&(point.y>_positionY)&&(point.x<xLength+_positionX)&&(point.y<yLength+_positionY))
    {
      return true;
    }
    else return false;
  }
}

